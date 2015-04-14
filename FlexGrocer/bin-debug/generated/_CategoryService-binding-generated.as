

import flash.events.Event;
import flash.events.EventDispatcher;
import flash.events.IEventDispatcher;
import mx.core.IPropertyChangeNotifier;
import mx.events.PropertyChangeEvent;
import mx.utils.ObjectProxy;
import mx.utils.UIDUtil;

import mx.collections.XMLListCollection;

class BindableProperty
{
	/*
	 * generated bindable wrapper for property categories (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'categories' moved to '_1296516636categories'
	 */

    [Bindable(event="propertyChange")]
    public function get categories():XMLListCollection
    {
        return this._1296516636categories;
    }

    public function set categories(value:XMLListCollection):void
    {
    	var oldValue:Object = this._1296516636categories;
        if (oldValue !== value)
        {
            this._1296516636categories = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "categories", oldValue, value));
        }
    }



}
