<?php
class ControllerPaymentQuick extends Controller {
	public function index() {
		$data['button_confirm'] = $this->language->get('button_confirm');

		$data['text_loading'] = $this->language->get('text_loading');

		$data['continue'] = $this->url->link('checkout/success');

		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/payment/quick.tpl')) {
			return $this->load->view($this->config->get('config_template') . '/template/payment/quick.tpl', $data);
		} else {
			return $this->load->view('default/template/payment/quick.tpl', $data);
		}
	}

	public function confirm() {
		if ($this->session->data['payment_method']['code'] == 'quick') {
			$this->load->model('checkout/order');

			$this->model_checkout_order->addOrderHistory($this->session->data['order_id'], $this->config->get('quick_order_status_id'));
		}
	}
}

