
package views
{
import components.ProductItem;
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
import spark.components.DataGrid;
import spark.components.Group;
import spark.components.List;
import spark.components.VGroup;
import spark.components.Label;
import spark.components.VGroup;
import spark.layouts.HorizontalLayout;
import spark.components.Group;
import mx.collections.ArrayList;
import spark.components.gridClasses.GridColumn;
import mx.states.State;
import Object;
import spark.components.Button;

public class ShoppingView extends spark.components.Group
{
	public function ShoppingView() {}

	[Bindable]
	public var product1 : components.ProductItem;
	[Bindable]
	public var cartGroup : spark.components.VGroup;
	[Bindable]
	public var cartList : spark.components.List;
	[Bindable]
	public var dgCart : spark.components.DataGrid;

	mx_internal var _bindings : Array;
	mx_internal var _watchers : Array;
	mx_internal var _bindingsByDestination : Object;
	mx_internal var _bindingsBeginWithWord : Object;

include "C:/Users/Oliver/Adobe Flash Builder 4.6/FlexGrocer/src/views/ShoppingView.mxml:9,27";

}}
