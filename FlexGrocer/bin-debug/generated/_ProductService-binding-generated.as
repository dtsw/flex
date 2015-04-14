

import flash.events.Event;
import flash.events.EventDispatcher;
import flash.events.IEventDispatcher;
import mx.core.IPropertyChangeNotifier;
import mx.events.PropertyChangeEvent;
import mx.utils.ObjectProxy;
import mx.utils.UIDUtil;

import mx.collections.ArrayCollection;

class BindableProperty
{
	/*
	 * generated bindable wrapper for property products (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'products' moved to '_1003761308products'
	 */

    [Bindable(event="propertyChange")]
    public function get products():ArrayCollection
    {
        return this._1003761308products;
    }

    public function set products(value:ArrayCollection):void
    {
    	var oldValue:Object = this._1003761308products;
        if (oldValue !== value)
        {
            this._1003761308products = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "products", oldValue, value));
        }
    }



}
