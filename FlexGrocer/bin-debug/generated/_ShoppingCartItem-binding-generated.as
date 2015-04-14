

import flash.events.Event;
import flash.events.EventDispatcher;
import flash.events.IEventDispatcher;
import mx.core.IPropertyChangeNotifier;
import mx.events.PropertyChangeEvent;
import mx.utils.ObjectProxy;
import mx.utils.UIDUtil;

import valueObjects.Product;
import cart.*;

class BindableProperty
    implements flash.events.IEventDispatcher
{
	/*
	 * generated bindable wrapper for property product (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'product' moved to '_309474065product'
	 */

    [Bindable(event="propertyChange")]
    public function get product():Product
    {
        return this._309474065product;
    }

    public function set product(value:Product):void
    {
    	var oldValue:Object = this._309474065product;
        if (oldValue !== value)
        {
            this._309474065product = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "product", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property subtotal (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'subtotal' moved to '_2060319484subtotal'
	 */

    [Bindable(event="propertyChange")]
    public function get subtotal():Number
    {
        return this._2060319484subtotal;
    }

    public function set subtotal(value:Number):void
    {
    	var oldValue:Object = this._2060319484subtotal;
        if (oldValue !== value)
        {
            this._2060319484subtotal = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "subtotal", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property quantity (public)
	 * - generated setter
	 * - original getter left as-is
	 * - original public setter 'quantity' moved to '_1285004149quantity'
	 */

    [Bindable(event="propertyChange")]
    public function set quantity(value:uint):void
    {
    	var oldValue:Object = this.quantity;
        if (oldValue !== value)
        {
            this._1285004149quantity = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "quantity", oldValue, value));
        }
    }


    //    IEventDispatcher implementation
    //
    private var _bindingEventDispatcher:flash.events.EventDispatcher =
        new flash.events.EventDispatcher(flash.events.IEventDispatcher(this));

	/**
	 * @inheritDoc
	 */
    public function addEventListener(type:String, listener:Function,
                                     useCapture:Boolean = false,
                                     priority:int = 0,
                                     weakRef:Boolean = false):void
    {
        _bindingEventDispatcher.addEventListener(type, listener, useCapture,
                                                 priority, weakRef);
    }

	/**
	 * @inheritDoc
	 */
    public function dispatchEvent(event:flash.events.Event):Boolean
    {
        return _bindingEventDispatcher.dispatchEvent(event);
    }

	/**
	 * @inheritDoc
	 */
    public function hasEventListener(type:String):Boolean
    {
        return _bindingEventDispatcher.hasEventListener(type);
    }

	/**
	 * @inheritDoc
	 */
    public function removeEventListener(type:String,
                                        listener:Function,
                                        useCapture:Boolean = false):void
    {
        _bindingEventDispatcher.removeEventListener(type, listener, useCapture);
    }

	/**
	 * @inheritDoc
	 */
    public function willTrigger(type:String):Boolean
    {
        return _bindingEventDispatcher.willTrigger(type);
    }

}
