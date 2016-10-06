<?php
        //Catalog
	class ControllerModuleTestEvent extends Controller {
	
	  static private $twice = FALSE;
            
	   public function index() {
	   
	   
	        $this->language->load('module/testevent');
	        $this->document->setTitle($this->language->get('heading_title'));
	   }

	    public function install() {

	        $this->load->model('extension/event');
                
	        $this->model_extension_event->addEvent('testevent', 'my.module.event', 'module/testevent/on_store_delete');

	    }

	     

	    public function uninstall() {

	        $this->load->model('extension/event');

            $this->model_extension_event->deleteEvent('testevent');

	    }
            
            
            public function on_store_delete($store_id) {
                
                    if (!$this->twice) {
                        
                       $this->twice = TRUE;
                    }

	             
                   

	    }

            
        }