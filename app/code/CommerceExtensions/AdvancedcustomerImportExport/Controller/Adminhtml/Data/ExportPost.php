<?php
/**
 * Copyright © 2015 CommerceExtensions. All rights reserved.
 * See COPYING.txt for license details.
 */
namespace CommerceExtensions\AdvancedcustomerImportExport\Controller\Adminhtml\Data;

use Magento\Framework\App\ResponseInterface;
use Magento\Framework\App\Filesystem\DirectoryList;

class ExportPost extends \CommerceExtensions\AdvancedcustomerImportExport\Controller\Adminhtml\Data
{
    /**
     * Export action from import/export customer reviews
     *
     * @return ResponseInterface
     */
	/* REMOVE ATTRIBUTES WE DO NOT WANT TO EXPORT */ 
    protected $_disabledAttributes = ['default_billing', 'default_shipping', 'increment_id', 'entity_id', 'website_id', 'group_id'];
    protected $_disabledAddressAttributes = ['entity_type_id', 'increment_id', 'parent_id', 'attribute_set_id', 'entity_id', 'region_id'];
    protected $_customerGroups = null;
	/**
     * Gets group code by customer's groupId
     *
     * @param Mage_Customer_Model_Customer $customer
     * @return string|null
     */
    protected function _getCustomerGroupCode($customer)
    {
        if (is_null($this->_customerGroups)) {
			
			$customergroupscollection = $this->_objectManager->create('Magento\Customer\Model\ResourceModel\Group\Collection');
            foreach ($customergroupscollection as $group) {
                $this->_customerGroups[$group->getId()] = $group->getData('customer_group_code');
            }
        }

        if (isset($this->_customerGroups[$customer->getGroupId()])) {
            return $this->_customerGroups[$customer->getGroupId()];
        } else {
            return null;
        }
    }
	
    public function execute()
    {
		$params = $this->getRequest()->getParams();
		if($params['export_delimiter'] != "") {
			$delimiter = $params['export_delimiter'];
		} else {
			$delimiter = ",";
		}
		if($params['export_enclose'] != "") {
			$enclose = $params['export_enclose'];
		} else {
			$enclose = "\"";
		}
		$_resource = $this->_objectManager->create('Magento\Framework\App\ResourceConnection');
		$connection = $_resource->getConnection();
		/* BUILD OUT COLUMNS NOT IN DEFAULT ATTRIBUTES */
		if($params['export_customer_id'] == "true") { 	
			$template = ''.$enclose.'{{website}}'.$enclose.''.$delimiter.''.$enclose.'{{group}}'.$enclose.''.$delimiter.''.$enclose.'{{is_default_billing}}'.$enclose.''.$delimiter.''.$enclose.'{{is_default_shipping}}'.$enclose.''.$delimiter.''.$enclose.'{{is_subscribed}}'.$enclose.''.$delimiter.''.$enclose.'{{customer_id}}'.$enclose.''.$delimiter;
			
        	$attributesArray = array('website' => 'website', 'group' => 'group', 'is_default_billing' => 'is_default_billing', 'is_default_shipping' => 'is_default_shipping', 'is_subscribed' => 'is_subscribed', 'customer_id' => 'customer_id');
		} else {
			$template = ''.$enclose.'{{website}}'.$enclose.''.$delimiter.''.$enclose.'{{group}}'.$enclose.''.$delimiter.''.$enclose.'{{is_default_billing}}'.$enclose.''.$delimiter.''.$enclose.'{{is_default_shipping}}'.$enclose.''.$delimiter.''.$enclose.'{{is_subscribed}}'.$enclose.''.$delimiter;
			
        	$attributesArray = array('website' => 'website', 'group' => 'group', 'is_default_billing' => 'is_default_billing', 'is_default_shipping' => 'is_default_shipping', 'is_subscribed' => 'is_subscribed');
		}
		/* BUILD OUT COLUMNS IN DEFAULT ATTRIBUTES */
		$customer_attributes = $this->_objectManager->get('Magento\Customer\Model\Customer')->getAttributes();
		$customer_address_attributes = $this->_objectManager->get('Magento\Customer\Model\Address')->getAttributes();
        foreach($customer_attributes as $cal=>$val){
			if (!in_array($cal, $this->_disabledAttributes)) {
				$attributesArray[$cal] = $cal;
				//$template .= '"{{'.$cal.'}}",';
				$template .= ''.$enclose.'{{'.$cal.'}}'.$enclose.''.$delimiter.'';
			}
		}
		/* PREFIX ADDRESS FOR BILLING */
        foreach($customer_address_attributes as $address_cal=>$address_val){
			if (!in_array($address_cal, $this->_disabledAddressAttributes)) {
				$attributesArray["billing_".$address_cal] = "billing_".$address_cal;
				//$template .= '"{{billing_'.$address_cal.'}}",';
				$template .= ''.$enclose.'{{billing_'.$address_cal.'}}'.$enclose.''.$delimiter.'';
			} 
		}
		/* PREFIX ADDRESS FOR SHIPPING */
        foreach($customer_address_attributes as $address_cal=>$address_val){
			if (!in_array($address_cal, $this->_disabledAddressAttributes)) {
				$attributesArray["shipping_".$address_cal] = "shipping_".$address_cal;
				//$template .= '"{{shipping_'.$address_cal.'}}",';
				$template .= ''.$enclose.'{{shipping_'.$address_cal.'}}'.$enclose.''.$delimiter.'';
			} 
		}
		
        /** start csv content and set template */
		$headers = new \Magento\Framework\DataObject($attributesArray);
        $content = $headers->toString($template);
        $storeTemplate = [];
        $content .= "\n";
		
        $customerscollection = $this->_objectManager->create('Magento\Customer\Model\ResourceModel\Customer\Collection')->addAttributeToSelect('*');
       	
		foreach ($customerscollection as $customer) {
			#print_r($customer->getData());
			$storeTemplate['website'] = $this->_websiteNamebyId($customer->getData('website_id'));
			if($params['export_customer_id'] == "true") { $storeTemplate['customer_id'] = $customer->getData('entity_id'); }
			
			$groupCode = $this->_getCustomerGroupCode($customer);
			if (is_null($groupCode)) {
				//Mage::helper('catalog')->__("An invalid group ID is specified, skipping the record."),
				$storeTemplate['group'] = "";
				continue;
			} else {
				$storeTemplate['group'] = $groupCode;
			}
			
			$newsletter = $this->_objectManager->create('Magento\Newsletter\Model\Subscriber')->loadByEmail($customer->getEmail());
            $storeTemplate['is_subscribed'] = ($newsletter->getId()
                && $newsletter->getSubscriberStatus() == \Magento\Newsletter\Model\Subscriber::STATUS_SUBSCRIBED)
                ? 1 : 0;
				
			$customer_default_address = $this->_objectManager->create('Magento\Customer\Model\Address');
			$billing_addressId = $customer->getData('default_billing');
			$customer_default_address->load($billing_addressId);
			
			if($customer_default_address) {
				if($billing_addressId > 0) { $storeTemplate['is_default_billing'] = "1"; } else { $storeTemplate['is_default_billing'] = "0"; } 
				foreach ($customer_address_attributes as $address_cal=>$address_val){
					if (!in_array($address_cal, $this->_disabledAddressAttributes)) {
						$storeTemplate['billing_'.$address_cal] = $customer_default_address->getData($address_cal);
					}
				}
			}
			$shipping_addressId = $customer->getData('default_shipping');
			$customer_default_address->load($shipping_addressId);
			if($customer_default_address) {
				if($shipping_addressId > 0) { $storeTemplate['is_default_shipping'] = "1"; } else { $storeTemplate['is_default_shipping'] = "0"; } 
				foreach ($customer_address_attributes as $address_cal=>$address_val){
					if (!in_array($address_cal, $this->_disabledAddressAttributes)) {
						$storeTemplate['shipping_'.$address_cal] = $customer_default_address->getData($address_cal);
					}
				}
			}
			if($params['export_multiple_addresses'] == "true") { 
				if($billing_addressId == $shipping_addressId) {
					$customer->addData($storeTemplate);
					$content .= $customer->toString($template) . "\n";
				}
			foreach ($customer->getAddresses() as $customer_address) {
					
			 if($customer->getData('default_billing') == $customer_address->getId()){ $storeTemplate['is_default_billing'] = "1"; }else{ $storeTemplate['is_default_billing'] = "0"; } 
			 if($customer->getData('default_shipping') == $customer_address->getId()){ $storeTemplate['is_default_shipping'] = "1"; }else{ $storeTemplate['is_default_shipping'] = "0"; } 
							
				if($storeTemplate['is_default_billing'] == 0 || $storeTemplate['is_default_shipping'] == 0) {
					foreach ($customer_address_attributes as $address_cal=>$address_val){
						if (!in_array($address_cal, $this->_disabledAddressAttributes)) {
							$storeTemplate['billing_'.$address_cal] = $customer_address->getData($address_cal);
							$storeTemplate['shipping_'.$address_cal] = $customer_address->getData($address_cal);
						}
					}
					$customer->addData($storeTemplate);
					$content .= $customer->toString($template) . "\n";
				}
			} 
		  } else {
			$customer->addData($storeTemplate);
			$content .= $customer->toString($template) . "\n";
		  }
		}
		#exit;
        
        return $this->fileFactory->create('export_advanced_customer.csv', $content, DirectoryList::VAR_DIR);
    }
	
	public function _websiteNamebyId($website_id){
		$websitebyname = $this->_objectManager->get('Magento\Store\Model\StoreManager');
		return $websitebyname->getWebsite($website_id)->getCode();
	}
    /**
     * @return bool
     */
    protected function _isAllowed()
    {
        return $this->_authorization->isAllowed(
            'CommerceExtensions_AdvancedcustomerImportExport::import_export'
        );

    }
}
