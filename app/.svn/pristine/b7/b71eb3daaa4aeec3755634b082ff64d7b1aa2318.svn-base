<?php
/**
 * Copyright © 2015 CommerceExtensions. All rights reserved.
 * See COPYING.txt for license details.
 */
namespace CommerceExtensions\AdvancedcustomerImportExport\Controller\Adminhtml\Data;

use Magento\Framework\Controller\ResultFactory;

class ImportExport extends \CommerceExtensions\AdvancedcustomerImportExport\Controller\Adminhtml\Data
{
    /**
     * Import and export Page
     *
     * @return \Magento\Backend\Model\View\Result\Page
     */
    public function execute()
    {
        /** @var \Magento\Backend\Model\View\Result\Page $resultPage */
        $resultPage = $this->resultFactory->create(ResultFactory::TYPE_PAGE);

        $resultPage->setActiveMenu('CommerceExtensions_AdvancedcustomerImportExport::system_convert_advancedcustomer');
        $resultPage->addContent(
            $resultPage->getLayout()->createBlock('CommerceExtensions\AdvancedcustomerImportExport\Block\Adminhtml\Data\ImportExportHeader')
        );
        $resultPage->addContent(
            $resultPage->getLayout()->createBlock('CommerceExtensions\AdvancedcustomerImportExport\Block\Adminhtml\Data\ImportExport')
        );
        $resultPage->getConfig()->getTitle()->prepend(__('Advanced Customers'));
        $resultPage->getConfig()->getTitle()->prepend(__('Import and Export Advanced Customers'));
        return $resultPage;
    }

    /**
     * @return bool
     */
    protected function _isAllowed()
    {
        return $this->_authorization->isAllowed('CommerceExtensions_AdvancedcustomerImportExport::import_export');
    }
}
