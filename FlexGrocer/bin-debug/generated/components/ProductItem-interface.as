
package components
{
import flash.accessibility.*;
import flash.debugger.*;
import flash.display.*;
import flash.errors.*;
import flash.events.*;
import flash.external.*;
import flash.geom.*;
import flash.media.*;
import flash.net.*;
import flash.printing.*;
import flash.profiler.*;
import flash.system.*;
import flash.text.*;
import flash.ui.*;
import flash.utils.*;
import flash.xml.*;
import mx.binding.*;
import mx.core.ClassFactory;
import mx.core.DeferredInstanceFromClass;
import mx.core.DeferredInstanceFromFunction;
import mx.core.IDeferredInstance;
import mx.core.IFactory;
import mx.core.IFlexModuleFactory;
import mx.core.IPropertyChangeNotifier;
import mx.core.mx_internal;
import mx.filters.*;
import mx.styles.*;
import spark.components.Button;
import spark.components.Group;
import spark.components.Label;
import spark.components.VGroup;
import spark.components.Label;
import spark.components.RichText;
import spark.components.VGroup;
import spark.components.Image;
import spark.layouts.HorizontalLayout;
import spark.components.Group;
import mx.states.State;

public class ProductItem extends spark.components.Group
{
	public function ProductItem() {}

	[Bindable]
	public var products : spark.components.VGroup;
	[Bindable]
	public var prodName : spark.components.Label;
	[Bindable]
	public var price : spark.components.Label;
	[Bindable]
	public var add : spark.components.Button;
	[Bindable]
	public var remove : spark.components.Button;

	mx_internal var _bindings : Array;
	mx_internal var _watchers : Array;
	mx_internal var _bindingsByDestination : Object;
	mx_internal var _bindingsBeginWithWord : Object;

include "C:/Users/Oliver/Adobe Flash Builder 4.6/FlexGrocer/src/components/ProductItem.mxml:13,35";

}}
