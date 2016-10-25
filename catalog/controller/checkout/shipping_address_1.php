<?php
class ControllerCheckoutShippingAddress1 extends Controller {
	public function index() {
		$this->load->language('checkout/checkout');

		if (isset($this->session->data['shipping_address']['address_id'])) {
			$data['address_id'] = $this->session->data['shipping_address']['address_id'];
		} else {
			$data['address_id'] = $this->customer->getAddressId();
		}
                
                $data['customer_group_id'] = $this->config->get('config_customer_group_id');

		if (isset($this->session->data['shipping_address']['postcode'])) {
			$data['postcode'] = $this->session->data['shipping_address']['postcode'];
		} else {
			$data['postcode'] = '';
		}

		if (isset($this->session->data['shipping_address']['country_id'])) {
			$data['country_id'] = $this->session->data['shipping_address']['country_id'];
		} else {
			$data['country_id'] = $this->config->get('config_country_id');
		}
                

		if (isset($this->session->data['shipping_address']['zone_id'])) {
			$data['zone_id'] = $this->session->data['shipping_address']['zone_id'];
		} else {
			$data['zone_id'] = $this->config->get('config_zone_id');
		}
                
                $data['delivery_net'] = NULL;

		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/checkout/shipping_address.tpl')) {
			$this->response->setOutput($this->load->view($this->config->get('config_template') . '/template/checkout/shipping_address.tpl', $data));
		} else {
			$this->response->setOutput($this->load->view('default/template/checkout/shipping_address.tpl', $data));
		}
	}
        
        public function change() {
            
            	$this->load->language('checkout/checkout');

		if (isset($this->session->data['shipping_address']['address_id'])) {
			$data['address_id'] = $this->session->data['shipping_address']['address_id'];
		} else {
			$data['address_id'] = $this->customer->getAddressId();
		}
                
                $data['customer_group_id'] = $this->config->get('config_customer_group_id');

		if (isset($this->session->data['shipping_address']['postcode'])) {
			$data['postcode'] = $this->session->data['shipping_address']['postcode'];
		} else {
			$data['postcode'] = '';
		}

		if (isset($this->session->data['shipping_address']['country_id'])) {
			$data['country_id'] = $this->session->data['shipping_address']['country_id'];
		} else {
			$data['country_id'] = $this->config->get('config_country_id');
		}

		if (isset($this->session->data['shipping_address']['zone_id'])) {
			$data['zone_id'] = $this->session->data['shipping_address']['zone_id'];
		} else {
			$data['zone_id'] = $this->config->get('config_zone_id');
		}
                
                
                $data['delivery_net'] = NULL;
                
		if ($this->config->get($this->request->post['shipping_method'] . '_status')) {
                    
		    $this->load->model('shipping/' . $this->request->post['shipping_method']);

		    $quote = $this->{'model_shipping_' . $this->request->post['shipping_method']}->getQuote($this->session->data['shipping_address']);

		    if ($quote) {
                                            
			$data['houses'] = (empty($quote['houses']))? array(): $quote['houses'];
			$data['delivery_net'] = (empty($quote['houses']))? NULL : TRUE;			
                    }
		}

		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/checkout/shipping_address.tpl')) {
			$this->response->setOutput($this->load->view($this->config->get('config_template') . '/template/checkout/shipping_address.tpl', $data));
		} else {
			$this->response->setOutput($this->load->view('default/template/checkout/shipping_address.tpl', $data));
		}
  
        }

	public function save() {
		$this->load->language('checkout/checkout');

		$json = array();

		// Validate if customer is logged in.
		if (!$this->customer->isLogged()) {
			$json['redirect'] = $this->url->link('checkout/checkout', '', 'SSL');
		}

		// Validate if shipping is required. If not the customer should not have reached this page.
		if (!$this->cart->hasShipping()) {
			$json['redirect'] = $this->url->link('checkout/checkout', '', 'SSL');
		}

		// Validate cart has products and has stock.
		if ((!$this->cart->hasProducts() && empty($this->session->data['vouchers'])) || (!$this->cart->hasStock() && !$this->config->get('config_stock_checkout'))) {
			$json['redirect'] = $this->url->link('checkout/cart');
		}

		// Validate minimum quantity requirements.
		$products = $this->cart->getProducts();

		foreach ($products as $product) {
			$product_total = 0;

			foreach ($products as $product_2) {
				if ($product_2['product_id'] == $product['product_id']) {
					$product_total += $product_2['quantity'];
				}
			}

			if ($product['minimum'] > $product_total) {
				$json['redirect'] = $this->url->link('checkout/cart');

				break;
			}
		}

		if (!$json) {
                    
                        
                        
			if (isset($this->request->post['shipping_address']) && $this->request->post['shipping_address'] == 'existing') {
				$this->load->model('account/address');

				if (empty($this->request->post['address_id'])) {
					$json['error']['warning'] = $this->language->get('error_address');
				        $json['success'] = 0;
                                } elseif (!in_array($this->request->post['address_id'], array_keys($this->model_account_address->getAddresses()))) {
					$json['error']['warning'] = $this->language->get('error_address');
				        $json['success'] = 0;
                                }
                                
                                if ((utf8_strlen(trim($this->request->post['address_2'])) < 3) || (utf8_strlen(trim($this->request->post['address_2'])) > 128)) {
					$json['error']['address_2'] = $this->language->get('error_address_1');
				        $json['success'] = 0;                                       
                                }

				if (!$json) {
					// Default Shipping Address
					$this->load->model('account/address');

					$this->session->data['shipping_address'] = $this->model_account_address->getAddress($this->request->post['address_id']);
                                        $this->session->data['shipping_address']['address_2'] = trim($this->request->post['address_2']);
                                                
					unset($this->session->data['shipping_method']);
				}
                                
                                $json['success'] = 1;
			} else {
                            
                            $json['error']['address_2'] = $this->language->get('error_address_1');
                            $json['success'] = 0;     

                        }
		}

		$this->response->addHeader('Content-Type: application/json');
		$this->response->setOutput(json_encode($json));
	}
}