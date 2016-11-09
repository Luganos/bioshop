<?php
class ControllerCheckoutGuest extends Controller {
    
        protected $value = array();
       
    
        //Get list of shipping method 
        protected function getShippingMethod() {
            
			// Shipping Methods
			$method_data = array();

			$this->load->model('extension/extension');

			$results = $this->model_extension_extension->getExtensions('shipping');
                        
                        $address = array(
                            
                            'firstname' => '',
                            'lastname' => '',
                            'company' => '',
                            'address_1' => '',
                            'address_2' => '',
                            'postcode' => '',
                            'city' => 'Днепр',
                            'country_id' => $this->value['country_id'],
                            'zone_id' => $this->value['zone_id']
                            
                        );
                        
                        $i = 0;
                        
			foreach ($results as $result) {
				if ($this->config->get($result['code'] . '_status') && strtolower(strval($result['code'])) == 'pickup') {
					$this->load->model('shipping/' . $result['code']);

					$quote = $this->{'model_shipping_' . $result['code']}->getQuote($address);

					if ($quote) {
						$method_data[$i] = array(
							'title'      => $quote['title'],
                                                        'code'       => $result['code'],
							'sort_order' => $quote['sort_order'],
                                                        'quote'      => $quote['quote'],
                                                        'error'      => $quote['error']

						);
					}
				}
                                
                                $i++;
			}

			$sort_order = array();
                        

			foreach ($method_data as $key => $value) {
				$sort_order[$key] = $value['sort_order'];
                                
			}

			array_multisort($sort_order, SORT_ASC, $method_data);
                        
                        if (is_array($method_data)) {
                            
                             $this->value['shipping_methods'] = $method_data;
                            
                        } else {
                            
                            $this->value['shipping_methods'] = array();
                        }
        }
        
        
        //Get list of payment method
        protected function getPaymentMethod() {
            
            	        // Payment Methods
			$method_data = array();
                        
                        $total = 0;

			$this->load->model('extension/extension');

			$results = $this->model_extension_extension->getExtensions('payment');
                        
                        $address = array(
                            
                            'firstname' => '',
                            'lastname' => '',
                            'company' => '',
                            'address_1' => '',
                            'address_2' => '',
                            'postcode' => '',
                            'city' => 'Днепр',
                            'country_id' => $this->value['country_id'],
                            'zone_id' => $this->value['zone_id']
                            
                        );

			$recurring = $this->cart->hasRecurringProducts();
                        
                        $i = 0;
                        
			foreach ($results as $result) {
				if ($this->config->get($result['code'] . '_status') && strtolower(strval($result['code'])) == 'quick') {
					$this->load->model('payment/' . $result['code']);

					$method = $this->{'model_payment_' . $result['code']}->getMethod($address, $total);

					if ($method) {
						if ($recurring) {
							if (method_exists($this->{'model_payment_' . $result['code']}, 'recurringPayments') && $this->{'model_payment_' . $result['code']}->recurringPayments()) {
								$method_data[$i] = $method;
							}
						} else {
							$method_data[$i] = $method;
						}
					}
				}
                                
                                $i++;
			}

			$sort_order = array();
                        
                        

			foreach ($method_data as $key => $value) {
				$sort_order[$key] = $value['sort_order'];
                                
			}

			array_multisort($sort_order, SORT_ASC, $method_data);
                        
                        if (is_array($method_data)) {
                            
                            $this->value['payment_methods'] = $method_data;
                        } else {
                            
                            $this->value['payment_methods'] = array();
                        }

			
            
            
        }
    
        //Get data for need field
	protected function getData() {
		$this->load->language('checkout/checkout');

		if (isset($this->session->data['guest']['customer_group_id'])) {
			$this->value['customer_group_id'] = $this->session->data['guest']['customer_group_id'];
		} else {
			$this->value['customer_group_id'] = $this->config->get('config_customer_group_id');
		}


		if (isset($this->session->data['payment_address']['postcode'])) {
			$this->value['postcode'] = $this->session->data['payment_address']['postcode'];
		} elseif (isset($this->session->data['shipping_address']['postcode'])) {
			$this->value['postcode'] = $this->session->data['shipping_address']['postcode'];
		} else {
			$this->value['postcode'] = '';
		}

		if (isset($this->session->data['payment_address']['country_id'])) {
			$this->value['country_id'] = $this->session->data['payment_address']['country_id'];
		} elseif (isset($this->session->data['shipping_address']['country_id'])) {
			$this->value['country_id'] = $this->session->data['shipping_address']['country_id'];
		} else {
			$this->value['country_id'] = $this->config->get('config_country_id');
		}

		if (isset($this->session->data['payment_address']['zone_id'])) {
			$this->value['zone_id'] = $this->session->data['payment_address']['zone_id'];
		} elseif (isset($this->session->data['shipping_address']['zone_id'])) {
			$this->value['zone_id'] = $this->session->data['shipping_address']['zone_id'];
		} else {
			$this->value['zone_id'] = $this->config->get('config_zone_id');
		}

		$data['shipping_required'] = $this->cart->hasShipping();

		if (isset($this->session->data['guest']['shipping_address'])) {
			$this->value['shipping_address'] = $this->session->data['guest']['shipping_address'];
		} else {
			$this->value['shipping_address'] = true;
		}

	}
        
        //Save data for guest checkout 
	public function save() {
		$this->load->language('checkout/checkout');
                
                $this->getData();
                
                $this->getPaymentMethod();
                
                $this->getShippingMethod();

		$json = array();

		// Validate if customer is logged in.
		if ($this->customer->isLogged()) {
			$json['redirect'] = $this->url->link('checkout/checkout', '', 'SSL');
		}

		// Validate cart has products and has stock.
		if ((!$this->cart->hasProducts() && empty($this->session->data['vouchers'])) || (!$this->cart->hasStock() && !$this->config->get('config_stock_checkout'))) {
			$json['redirect'] = $this->url->link('checkout/cart');
		}

		// Check if guest checkout is available.
		if (!$this->config->get('config_checkout_guest') || $this->config->get('config_customer_price') || $this->cart->hasDownload()) {
			$json['redirect'] = $this->url->link('checkout/checkout', '', 'SSL');
		}

		if (!$json) {

			if ((utf8_strlen($this->request->post['email']) > 96) || !preg_match('/^[^\@]+@.*.[a-z]{2,15}$/i', $this->request->post['email'])) {
				$json['error']['email'] = $this->language->get('error_email');
			}

			if ((utf8_strlen($this->request->post['phone']) < 3) || (utf8_strlen($this->request->post['phone']) > 32)) {
				$json['error']['phone'] = $this->language->get('error_telephone');
			}
                        
                        if ((utf8_strlen($this->request->post['password']) < 4) || (utf8_strlen($this->request->post['password']) > 20)) {
				$json['error']['password'] = $this->language->get('error_password');
			}

			$this->load->model('localisation/country');

			$country_info = $this->model_localisation_country->getCountry($this->value['country_id']);

		}

		if (!$json) {
			$this->session->data['account'] = 'guest';

			$this->session->data['guest']['customer_group_id'] = $this->value['customer_group_id'];
			$this->session->data['guest']['firstname'] = 'Быстрый заказ';
			$this->session->data['guest']['lastname'] = '';
			$this->session->data['guest']['email'] = $this->request->post['email'];
			$this->session->data['guest']['telephone'] = $this->request->post['phone'];
			$this->session->data['guest']['fax'] = '';


			$this->session->data['guest']['custom_field'] = array();
			

			$this->session->data['payment_address']['firstname'] = '';
			$this->session->data['payment_address']['lastname'] = '';
			$this->session->data['payment_address']['company'] = '';
			$this->session->data['payment_address']['address_1'] = '';
			$this->session->data['payment_address']['address_2'] = '';
			$this->session->data['payment_address']['postcode'] = $this->value['postcode'];
			$this->session->data['payment_address']['city'] = '';
			$this->session->data['payment_address']['country_id'] = $this->value['country_id'];
			$this->session->data['payment_address']['zone_id'] = $this->value['zone_id'];

			$this->load->model('localisation/country');

			$country_info = $this->model_localisation_country->getCountry($this->value['country_id']);

			if ($country_info) {
				$this->session->data['payment_address']['country'] = $country_info['name'];
				$this->session->data['payment_address']['iso_code_2'] = $country_info['iso_code_2'];
				$this->session->data['payment_address']['iso_code_3'] = $country_info['iso_code_3'];
				$this->session->data['payment_address']['address_format'] = $country_info['address_format'];
			} else {
				$this->session->data['payment_address']['country'] = '';
				$this->session->data['payment_address']['iso_code_2'] = '';
				$this->session->data['payment_address']['iso_code_3'] = '';
				$this->session->data['payment_address']['address_format'] = '';
			}


			$this->session->data['payment_address']['custom_field'] = array();
			

			$this->load->model('localisation/zone');

			$zone_info = $this->model_localisation_zone->getZone($this->value['zone_id']);

			if ($zone_info) {
				$this->session->data['payment_address']['zone'] = $zone_info['name'];
				$this->session->data['payment_address']['zone_code'] = $zone_info['code'];
			} else {
				$this->session->data['payment_address']['zone'] = '';
				$this->session->data['payment_address']['zone_code'] = '';
			}

	
			$this->session->data['guest']['shipping_address'] = FALSE;
			

			// Default Payment Address
			if ($this->session->data['guest']['shipping_address'] == FALSE) {
				$this->session->data['shipping_address']['firstname'] = '';
				$this->session->data['shipping_address']['lastname'] = '';
				$this->session->data['shipping_address']['company'] = '';
				$this->session->data['shipping_address']['address_1'] = '';
				$this->session->data['shipping_address']['address_2'] = '';
				$this->session->data['shipping_address']['postcode'] = $this->value['postcode'];
				$this->session->data['shipping_address']['city'] = '';
				$this->session->data['shipping_address']['country_id'] = $this->value['country_id'];
				$this->session->data['shipping_address']['zone_id'] = $this->value['zone_id'];

				if ($country_info) {
					$this->session->data['shipping_address']['country'] = $country_info['name'];
					$this->session->data['shipping_address']['iso_code_2'] = $country_info['iso_code_2'];
					$this->session->data['shipping_address']['iso_code_3'] = $country_info['iso_code_3'];
					$this->session->data['shipping_address']['address_format'] = $country_info['address_format'];
				} else {
					$this->session->data['shipping_address']['country'] = '';
					$this->session->data['shipping_address']['iso_code_2'] = '';
					$this->session->data['shipping_address']['iso_code_3'] = '';
					$this->session->data['shipping_address']['address_format'] = '';
				}

				if ($zone_info) {
					$this->session->data['shipping_address']['zone'] = $zone_info['name'];
					$this->session->data['shipping_address']['zone_code'] = $zone_info['code'];
				} else {
					$this->session->data['shipping_address']['zone'] = '';
					$this->session->data['shipping_address']['zone_code'] = '';
				}

				$this->session->data['shipping_address']['custom_field'] = array();
				
			}

			$this->session->data['shipping_method'] = $this->value['shipping_methods'][0]['quote'][$this->value['shipping_methods'][0]['code']];
                        $this->session->data['payment_method'] = $this->value['payment_methods'][0];
			unset($this->session->data['shipping_methods']);
			unset($this->session->data['payment_methods']);
		}

		$this->response->addHeader('Content-Type: application/json');
		$this->response->setOutput(json_encode($json));
	}
}
