<?php
namespace Magento\Catalog\Model\Product\Option\Validator\Select;

/**
 * Interceptor class for @see \Magento\Catalog\Model\Product\Option\Validator\Select
 */
class Interceptor extends \Magento\Catalog\Model\Product\Option\Validator\Select implements \Magento\Framework\Interception\InterceptorInterface
{
    use \Magento\Framework\Interception\Interceptor;

    public function __construct(\Magento\Catalog\Model\ProductOptions\ConfigInterface $productOptionConfig, \Magento\Catalog\Model\Config\Source\Product\Options\Price $priceConfig)
    {
        $this->___init();
        parent::__construct($productOptionConfig, $priceConfig);
    }

    /**
     * {@inheritdoc}
     */
    public function isValid($value)
    {
        $pluginInfo = $this->pluginList->getNext($this->subjectType, 'isValid');
        if (!$pluginInfo) {
            return parent::isValid($value);
        } else {
            return $this->___callPlugins('isValid', func_get_args(), $pluginInfo);
        }
    }

    /**
     * {@inheritdoc}
     */
    public function setTranslator($translator = null)
    {
        $pluginInfo = $this->pluginList->getNext($this->subjectType, 'setTranslator');
        if (!$pluginInfo) {
            return parent::setTranslator($translator);
        } else {
            return $this->___callPlugins('setTranslator', func_get_args(), $pluginInfo);
        }
    }

    /**
     * {@inheritdoc}
     */
    public function getTranslator()
    {
        $pluginInfo = $this->pluginList->getNext($this->subjectType, 'getTranslator');
        if (!$pluginInfo) {
            return parent::getTranslator();
        } else {
            return $this->___callPlugins('getTranslator', func_get_args(), $pluginInfo);
        }
    }

    /**
     * {@inheritdoc}
     */
    public function hasTranslator()
    {
        $pluginInfo = $this->pluginList->getNext($this->subjectType, 'hasTranslator');
        if (!$pluginInfo) {
            return parent::hasTranslator();
        } else {
            return $this->___callPlugins('hasTranslator', func_get_args(), $pluginInfo);
        }
    }

    /**
     * {@inheritdoc}
     */
    public function getMessages()
    {
        $pluginInfo = $this->pluginList->getNext($this->subjectType, 'getMessages');
        if (!$pluginInfo) {
            return parent::getMessages();
        } else {
            return $this->___callPlugins('getMessages', func_get_args(), $pluginInfo);
        }
    }

    /**
     * {@inheritdoc}
     */
    public function hasMessages()
    {
        $pluginInfo = $this->pluginList->getNext($this->subjectType, 'hasMessages');
        if (!$pluginInfo) {
            return parent::hasMessages();
        } else {
            return $this->___callPlugins('hasMessages', func_get_args(), $pluginInfo);
        }
    }
}
