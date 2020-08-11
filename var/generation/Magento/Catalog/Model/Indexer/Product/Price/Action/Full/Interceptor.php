<?php
namespace Magento\Catalog\Model\Indexer\Product\Price\Action\Full;

/**
 * Interceptor class for @see \Magento\Catalog\Model\Indexer\Product\Price\Action\Full
 */
class Interceptor extends \Magento\Catalog\Model\Indexer\Product\Price\Action\Full implements \Magento\Framework\Interception\InterceptorInterface
{
    use \Magento\Framework\Interception\Interceptor;

    public function __construct(\Magento\Framework\App\Config\ScopeConfigInterface $config, \Magento\Store\Model\StoreManagerInterface $storeManager, \Magento\Directory\Model\CurrencyFactory $currencyFactory, \Magento\Framework\Stdlib\DateTime\TimezoneInterface $localeDate, \Magento\Framework\Stdlib\DateTime $dateTime, \Magento\Catalog\Model\Product\Type $catalogProductType, \Magento\Catalog\Model\ResourceModel\Product\Indexer\Price\Factory $indexerPriceFactory, \Magento\Catalog\Model\ResourceModel\Product\Indexer\Price\DefaultPrice $defaultIndexerResource)
    {
        $this->___init();
        parent::__construct($config, $storeManager, $currencyFactory, $localeDate, $dateTime, $catalogProductType, $indexerPriceFactory, $defaultIndexerResource);
    }

    /**
     * {@inheritdoc}
     */
    public function execute($ids = null)
    {
        $pluginInfo = $this->pluginList->getNext($this->subjectType, 'execute');
        if (!$pluginInfo) {
            return parent::execute($ids);
        } else {
            return $this->___callPlugins('execute', func_get_args(), $pluginInfo);
        }
    }

    /**
     * {@inheritdoc}
     */
    public function getTypeIndexers()
    {
        $pluginInfo = $this->pluginList->getNext($this->subjectType, 'getTypeIndexers');
        if (!$pluginInfo) {
            return parent::getTypeIndexers();
        } else {
            return $this->___callPlugins('getTypeIndexers', func_get_args(), $pluginInfo);
        }
    }
}
