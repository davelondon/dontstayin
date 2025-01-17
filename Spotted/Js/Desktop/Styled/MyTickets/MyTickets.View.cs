//mappings.Add("System.Web.UI.WebControls.LinkButton", ElementGetter("Element"));
//mappings.Add("System.Web.UI.WebControls.Repeater", ElementGetter("Element"));
//mappings.Add("Spotted.GenericPage", ElementGetter("Element"));
using System;
using System.Collections.Generic;
using System.Html;
using jQueryApi;
using Js.Library;

namespace Js.Styled.MyTickets
{
	public partial class View
		 : Js.StyledUserControl.View
	{
		public string clientId;
		public View(string clientId)
			 : base(clientId)
		{
			this.clientId = clientId;
		}
		public Element SelectCurrentDateRangeLinkButton {get {if (_SelectCurrentDateRangeLinkButton == null) {_SelectCurrentDateRangeLinkButton = (Element)Document.GetElementById(clientId + "_SelectCurrentDateRangeLinkButton");}; return _SelectCurrentDateRangeLinkButton;}} private Element _SelectCurrentDateRangeLinkButton;
		public jQueryObject SelectCurrentDateRangeLinkButtonJ {get {if (_SelectCurrentDateRangeLinkButtonJ == null) {_SelectCurrentDateRangeLinkButtonJ = jQuery.Select("#" + clientId + "_SelectCurrentDateRangeLinkButton");}; return _SelectCurrentDateRangeLinkButtonJ;}} private jQueryObject _SelectCurrentDateRangeLinkButtonJ;//mappings.Add("System.Web.UI.WebControls.LinkButton", ElementGetter("Element"));
		public Element SelectPastDateRangeLinkButton {get {if (_SelectPastDateRangeLinkButton == null) {_SelectPastDateRangeLinkButton = (Element)Document.GetElementById(clientId + "_SelectPastDateRangeLinkButton");}; return _SelectPastDateRangeLinkButton;}} private Element _SelectPastDateRangeLinkButton;
		public jQueryObject SelectPastDateRangeLinkButtonJ {get {if (_SelectPastDateRangeLinkButtonJ == null) {_SelectPastDateRangeLinkButtonJ = jQuery.Select("#" + clientId + "_SelectPastDateRangeLinkButton");}; return _SelectPastDateRangeLinkButtonJ;}} private jQueryObject _SelectPastDateRangeLinkButtonJ;//mappings.Add("System.Web.UI.WebControls.LinkButton", ElementGetter("Element"));
		public Element SelectAllDateRangeLinkButton {get {if (_SelectAllDateRangeLinkButton == null) {_SelectAllDateRangeLinkButton = (Element)Document.GetElementById(clientId + "_SelectAllDateRangeLinkButton");}; return _SelectAllDateRangeLinkButton;}} private Element _SelectAllDateRangeLinkButton;
		public jQueryObject SelectAllDateRangeLinkButtonJ {get {if (_SelectAllDateRangeLinkButtonJ == null) {_SelectAllDateRangeLinkButtonJ = jQuery.Select("#" + clientId + "_SelectAllDateRangeLinkButton");}; return _SelectAllDateRangeLinkButtonJ;}} private jQueryObject _SelectAllDateRangeLinkButtonJ;//mappings.Add("System.Web.UI.WebControls.LinkButton", ElementGetter("Element"));
		public DivElement HasTickets {get {if (_HasTickets == null) {_HasTickets = (DivElement)Document.GetElementById(clientId + "_HasTickets");}; return _HasTickets;}} private DivElement _HasTickets;
		public jQueryObject HasTicketsJ {get {if (_HasTicketsJ == null) {_HasTicketsJ = jQuery.Select("#" + clientId + "_HasTickets");}; return _HasTicketsJ;}} private jQueryObject _HasTicketsJ;
		public Element MyEventTicketsRepeater {get {if (_MyEventTicketsRepeater == null) {_MyEventTicketsRepeater = (Element)Document.GetElementById(clientId + "_MyEventTicketsRepeater");}; return _MyEventTicketsRepeater;}} private Element _MyEventTicketsRepeater;
		public jQueryObject MyEventTicketsRepeaterJ {get {if (_MyEventTicketsRepeaterJ == null) {_MyEventTicketsRepeaterJ = jQuery.Select("#" + clientId + "_MyEventTicketsRepeater");}; return _MyEventTicketsRepeaterJ;}} private jQueryObject _MyEventTicketsRepeaterJ;//mappings.Add("System.Web.UI.WebControls.Repeater", ElementGetter("Element"));
		public DivElement NoTickets {get {if (_NoTickets == null) {_NoTickets = (DivElement)Document.GetElementById(clientId + "_NoTickets");}; return _NoTickets;}} private DivElement _NoTickets;
		public jQueryObject NoTicketsJ {get {if (_NoTicketsJ == null) {_NoTicketsJ = jQuery.Select("#" + clientId + "_NoTickets");}; return _NoTicketsJ;}} private jQueryObject _NoTicketsJ;
		public Element GenericContainerPage {get {if (_GenericContainerPage == null) {_GenericContainerPage = (Element)Document.GetElementById(clientId + "_GenericContainerPage");}; return _GenericContainerPage;}} private Element _GenericContainerPage;
		public jQueryObject GenericContainerPageJ {get {if (_GenericContainerPageJ == null) {_GenericContainerPageJ = jQuery.Select("#" + clientId + "_GenericContainerPage");}; return _GenericContainerPageJ;}} private jQueryObject _GenericContainerPageJ;//mappings.Add("Spotted.GenericPage", ElementGetter("Element"));
	}
}
