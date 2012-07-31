//mappings.Add("Spotted.CustomControls.h1", ElementGetter("Element"));
//mappings.Add("Spotted.GenericPage", ElementGetter("Element"));
using System;
using System.Collections.Generic;
using System.Html;
using jQueryApi;
using Js.Library;

namespace Js.Pages.FrontPagePhotos
{
	public partial class View
		 : Js.DsiUserControl.View
	{
		public string clientId;
		public View(string clientId)
			 : base(clientId)
		{
			this.clientId = clientId;
		}
		public Element H18 {get {if (_H18 == null) {_H18 = (Element)Document.GetElementById(clientId + "_H18");}; return _H18;}} private Element _H18;
		public jQueryObject H18J {get {if (_H18J == null) {_H18J = jQuery.Select("#" + clientId + "_H18");}; return _H18J;}} private jQueryObject _H18J;//mappings.Add("Spotted.CustomControls.h1", ElementGetter("Element"));
		public Element H19 {get {if (_H19 == null) {_H19 = (Element)Document.GetElementById(clientId + "_H19");}; return _H19;}} private Element _H19;
		public jQueryObject H19J {get {if (_H19J == null) {_H19J = jQuery.Select("#" + clientId + "_H19");}; return _H19J;}} private jQueryObject _H19J;//mappings.Add("Spotted.CustomControls.h1", ElementGetter("Element"));
		public Element GenericContainerPage {get {if (_GenericContainerPage == null) {_GenericContainerPage = (Element)Document.GetElementById(clientId + "_GenericContainerPage");}; return _GenericContainerPage;}} private Element _GenericContainerPage;
		public jQueryObject GenericContainerPageJ {get {if (_GenericContainerPageJ == null) {_GenericContainerPageJ = jQuery.Select("#" + clientId + "_GenericContainerPage");}; return _GenericContainerPageJ;}} private jQueryObject _GenericContainerPageJ;//mappings.Add("Spotted.GenericPage", ElementGetter("Element"));
	}
}