//mappings.Add("Spotted.CustomControls.h1", ElementGetter("Element"));
//mappings.Add("System.Web.UI.WebControls.Label", ElementGetter("Element"));
//mappings.Add("System.Web.UI.WebControls.Button", ElementGetter("Element"));
//mappings.Add("System.Web.UI.WebControls.GridView", ElementGetter("Element"));
//mappings.Add("System.Web.UI.HtmlControls.HtmlTableRow", ElementGetter("Element"));
//mappings.Add("Spotted.GenericPage", ElementGetter("Element"));
using System;
using System.Collections.Generic;
using System.Html;
using jQueryApi;
using Js.Library;

namespace Js.Admin.AdminMainAccounting
{
	public partial class View
		 : Js.AdminUserControl.View
	{
		public string clientId;
		public View(string clientId)
			 : base(clientId)
		{
			this.clientId = clientId;
		}
		public Element H1 {get {if (_H1 == null) {_H1 = (Element)Document.GetElementById(clientId + "_H1");}; return _H1;}} private Element _H1;
		public jQueryObject H1J {get {if (_H1J == null) {_H1J = jQuery.Select("#" + clientId + "_H1");}; return _H1J;}} private jQueryObject _H1J;//mappings.Add("Spotted.CustomControls.h1", ElementGetter("Element"));
		public DivElement AdminMainAccountingPanel {get {if (_AdminMainAccountingPanel == null) {_AdminMainAccountingPanel = (DivElement)Document.GetElementById(clientId + "_AdminMainAccountingPanel");}; return _AdminMainAccountingPanel;}} private DivElement _AdminMainAccountingPanel;
		public jQueryObject AdminMainAccountingPanelJ {get {if (_AdminMainAccountingPanelJ == null) {_AdminMainAccountingPanelJ = jQuery.Select("#" + clientId + "_AdminMainAccountingPanel");}; return _AdminMainAccountingPanelJ;}} private jQueryObject _AdminMainAccountingPanelJ;
		public InputElement CreateNewInvoiceButton {get {if (_CreateNewInvoiceButton == null) {_CreateNewInvoiceButton = (InputElement)Document.GetElementById(clientId + "_CreateNewInvoiceButton");}; return _CreateNewInvoiceButton;}} private InputElement _CreateNewInvoiceButton;
		public jQueryObject CreateNewInvoiceButtonJ {get {if (_CreateNewInvoiceButtonJ == null) {_CreateNewInvoiceButtonJ = jQuery.Select("#" + clientId + "_CreateNewInvoiceButton");}; return _CreateNewInvoiceButtonJ;}} private jQueryObject _CreateNewInvoiceButtonJ;
		public InputElement CreateNewTransferButton {get {if (_CreateNewTransferButton == null) {_CreateNewTransferButton = (InputElement)Document.GetElementById(clientId + "_CreateNewTransferButton");}; return _CreateNewTransferButton;}} private InputElement _CreateNewTransferButton;
		public jQueryObject CreateNewTransferButtonJ {get {if (_CreateNewTransferButtonJ == null) {_CreateNewTransferButtonJ = jQuery.Select("#" + clientId + "_CreateNewTransferButton");}; return _CreateNewTransferButtonJ;}} private jQueryObject _CreateNewTransferButtonJ;
		public InputElement SubmitSuccessfulTransfersButton {get {if (_SubmitSuccessfulTransfersButton == null) {_SubmitSuccessfulTransfersButton = (InputElement)Document.GetElementById(clientId + "_SubmitSuccessfulTransfersButton");}; return _SubmitSuccessfulTransfersButton;}} private InputElement _SubmitSuccessfulTransfersButton;
		public jQueryObject SubmitSuccessfulTransfersButtonJ {get {if (_SubmitSuccessfulTransfersButtonJ == null) {_SubmitSuccessfulTransfersButtonJ = jQuery.Select("#" + clientId + "_SubmitSuccessfulTransfersButton");}; return _SubmitSuccessfulTransfersButtonJ;}} private jQueryObject _SubmitSuccessfulTransfersButtonJ;
		public InputElement CreateNewCampaignCreditButton {get {if (_CreateNewCampaignCreditButton == null) {_CreateNewCampaignCreditButton = (InputElement)Document.GetElementById(clientId + "_CreateNewCampaignCreditButton");}; return _CreateNewCampaignCreditButton;}} private InputElement _CreateNewCampaignCreditButton;
		public jQueryObject CreateNewCampaignCreditButtonJ {get {if (_CreateNewCampaignCreditButtonJ == null) {_CreateNewCampaignCreditButtonJ = jQuery.Select("#" + clientId + "_CreateNewCampaignCreditButton");}; return _CreateNewCampaignCreditButtonJ;}} private jQueryObject _CreateNewCampaignCreditButtonJ;
		public InputElement CreateNewInsertionOrder {get {if (_CreateNewInsertionOrder == null) {_CreateNewInsertionOrder = (InputElement)Document.GetElementById(clientId + "_CreateNewInsertionOrder");}; return _CreateNewInsertionOrder;}} private InputElement _CreateNewInsertionOrder;
		public jQueryObject CreateNewInsertionOrderJ {get {if (_CreateNewInsertionOrderJ == null) {_CreateNewInsertionOrderJ = jQuery.Select("#" + clientId + "_CreateNewInsertionOrder");}; return _CreateNewInsertionOrderJ;}} private jQueryObject _CreateNewInsertionOrderJ;
		public Element SageFromDateLabel {get {if (_SageFromDateLabel == null) {_SageFromDateLabel = (Element)Document.GetElementById(clientId + "_SageFromDateLabel");}; return _SageFromDateLabel;}} private Element _SageFromDateLabel;
		public jQueryObject SageFromDateLabelJ {get {if (_SageFromDateLabelJ == null) {_SageFromDateLabelJ = jQuery.Select("#" + clientId + "_SageFromDateLabel");}; return _SageFromDateLabelJ;}} private jQueryObject _SageFromDateLabelJ;//mappings.Add("System.Web.UI.WebControls.Label", ElementGetter("Element"));
		public Js.CustomControls.Cal.Controller SageFromDateCal {get {return (Js.CustomControls.Cal.Controller) Script.Eval(clientId + "_SageFromDateCalController");}}
		public SelectElement ExportToSageTypeDropDownList {get {if (_ExportToSageTypeDropDownList == null) {_ExportToSageTypeDropDownList = (SelectElement)Document.GetElementById(clientId + "_ExportToSageTypeDropDownList");}; return _ExportToSageTypeDropDownList;}} private SelectElement _ExportToSageTypeDropDownList;
		public jQueryObject ExportToSageTypeDropDownListJ {get {if (_ExportToSageTypeDropDownListJ == null) {_ExportToSageTypeDropDownListJ = jQuery.Select("#" + clientId + "_ExportToSageTypeDropDownList");}; return _ExportToSageTypeDropDownListJ;}} private jQueryObject _ExportToSageTypeDropDownListJ;
		public InputElement ExportToSageButton {get {if (_ExportToSageButton == null) {_ExportToSageButton = (InputElement)Document.GetElementById(clientId + "_ExportToSageButton");}; return _ExportToSageButton;}} private InputElement _ExportToSageButton;
		public jQueryObject ExportToSageButtonJ {get {if (_ExportToSageButtonJ == null) {_ExportToSageButtonJ = jQuery.Select("#" + clientId + "_ExportToSageButton");}; return _ExportToSageButtonJ;}} private jQueryObject _ExportToSageButtonJ;
		public Element SageToDateLabel {get {if (_SageToDateLabel == null) {_SageToDateLabel = (Element)Document.GetElementById(clientId + "_SageToDateLabel");}; return _SageToDateLabel;}} private Element _SageToDateLabel;
		public jQueryObject SageToDateLabelJ {get {if (_SageToDateLabelJ == null) {_SageToDateLabelJ = jQuery.Select("#" + clientId + "_SageToDateLabel");}; return _SageToDateLabelJ;}} private jQueryObject _SageToDateLabelJ;//mappings.Add("System.Web.UI.WebControls.Label", ElementGetter("Element"));
		public Js.CustomControls.Cal.Controller SageToDateCal {get {return (Js.CustomControls.Cal.Controller) Script.Eval(clientId + "_SageToDateCalController");}}
		public Element SageErrorLabel {get {if (_SageErrorLabel == null) {_SageErrorLabel = (Element)Document.GetElementById(clientId + "_SageErrorLabel");}; return _SageErrorLabel;}} private Element _SageErrorLabel;
		public jQueryObject SageErrorLabelJ {get {if (_SageErrorLabelJ == null) {_SageErrorLabelJ = jQuery.Select("#" + clientId + "_SageErrorLabel");}; return _SageErrorLabelJ;}} private jQueryObject _SageErrorLabelJ;//mappings.Add("System.Web.UI.WebControls.Label", ElementGetter("Element"));
		public Element TypeLabel {get {if (_TypeLabel == null) {_TypeLabel = (Element)Document.GetElementById(clientId + "_TypeLabel");}; return _TypeLabel;}} private Element _TypeLabel;
		public jQueryObject TypeLabelJ {get {if (_TypeLabelJ == null) {_TypeLabelJ = jQuery.Select("#" + clientId + "_TypeLabel");}; return _TypeLabelJ;}} private jQueryObject _TypeLabelJ;//mappings.Add("System.Web.UI.WebControls.Label", ElementGetter("Element"));
		public SelectElement TypeDropDownList {get {if (_TypeDropDownList == null) {_TypeDropDownList = (SelectElement)Document.GetElementById(clientId + "_TypeDropDownList");}; return _TypeDropDownList;}} private SelectElement _TypeDropDownList;
		public jQueryObject TypeDropDownListJ {get {if (_TypeDropDownListJ == null) {_TypeDropDownListJ = jQuery.Select("#" + clientId + "_TypeDropDownList");}; return _TypeDropDownListJ;}} private jQueryObject _TypeDropDownListJ;
		public Element NominalCodeLabel {get {if (_NominalCodeLabel == null) {_NominalCodeLabel = (Element)Document.GetElementById(clientId + "_NominalCodeLabel");}; return _NominalCodeLabel;}} private Element _NominalCodeLabel;
		public jQueryObject NominalCodeLabelJ {get {if (_NominalCodeLabelJ == null) {_NominalCodeLabelJ = jQuery.Select("#" + clientId + "_NominalCodeLabel");}; return _NominalCodeLabelJ;}} private jQueryObject _NominalCodeLabelJ;//mappings.Add("System.Web.UI.WebControls.Label", ElementGetter("Element"));
		public Element TransferTypeLabel {get {if (_TransferTypeLabel == null) {_TransferTypeLabel = (Element)Document.GetElementById(clientId + "_TransferTypeLabel");}; return _TransferTypeLabel;}} private Element _TransferTypeLabel;
		public jQueryObject TransferTypeLabelJ {get {if (_TransferTypeLabelJ == null) {_TransferTypeLabelJ = jQuery.Select("#" + clientId + "_TransferTypeLabel");}; return _TransferTypeLabelJ;}} private jQueryObject _TransferTypeLabelJ;//mappings.Add("System.Web.UI.WebControls.Label", ElementGetter("Element"));
		public Element InvoiceTypeLabel {get {if (_InvoiceTypeLabel == null) {_InvoiceTypeLabel = (Element)Document.GetElementById(clientId + "_InvoiceTypeLabel");}; return _InvoiceTypeLabel;}} private Element _InvoiceTypeLabel;
		public jQueryObject InvoiceTypeLabelJ {get {if (_InvoiceTypeLabelJ == null) {_InvoiceTypeLabelJ = jQuery.Select("#" + clientId + "_InvoiceTypeLabel");}; return _InvoiceTypeLabelJ;}} private jQueryObject _InvoiceTypeLabelJ;//mappings.Add("System.Web.UI.WebControls.Label", ElementGetter("Element"));
		public InputElement NominalCodeTextBox {get {if (_NominalCodeTextBox == null) {_NominalCodeTextBox = (InputElement)Document.GetElementById(clientId + "_NominalCodeTextBox");}; return _NominalCodeTextBox;}} private InputElement _NominalCodeTextBox;
		public jQueryObject NominalCodeTextBoxJ {get {if (_NominalCodeTextBoxJ == null) {_NominalCodeTextBoxJ = jQuery.Select("#" + clientId + "_NominalCodeTextBox");}; return _NominalCodeTextBoxJ;}} private jQueryObject _NominalCodeTextBoxJ;
		public SelectElement TransferTypeDropDownList {get {if (_TransferTypeDropDownList == null) {_TransferTypeDropDownList = (SelectElement)Document.GetElementById(clientId + "_TransferTypeDropDownList");}; return _TransferTypeDropDownList;}} private SelectElement _TransferTypeDropDownList;
		public jQueryObject TransferTypeDropDownListJ {get {if (_TransferTypeDropDownListJ == null) {_TransferTypeDropDownListJ = jQuery.Select("#" + clientId + "_TransferTypeDropDownList");}; return _TransferTypeDropDownListJ;}} private jQueryObject _TransferTypeDropDownListJ;
		public SelectElement InvoiceTypeDropDownList {get {if (_InvoiceTypeDropDownList == null) {_InvoiceTypeDropDownList = (SelectElement)Document.GetElementById(clientId + "_InvoiceTypeDropDownList");}; return _InvoiceTypeDropDownList;}} private SelectElement _InvoiceTypeDropDownList;
		public jQueryObject InvoiceTypeDropDownListJ {get {if (_InvoiceTypeDropDownListJ == null) {_InvoiceTypeDropDownListJ = jQuery.Select("#" + clientId + "_InvoiceTypeDropDownList");}; return _InvoiceTypeDropDownListJ;}} private jQueryObject _InvoiceTypeDropDownListJ;
		public SelectElement TransferCompanyDropDownList {get {if (_TransferCompanyDropDownList == null) {_TransferCompanyDropDownList = (SelectElement)Document.GetElementById(clientId + "_TransferCompanyDropDownList");}; return _TransferCompanyDropDownList;}} private SelectElement _TransferCompanyDropDownList;
		public jQueryObject TransferCompanyDropDownListJ {get {if (_TransferCompanyDropDownListJ == null) {_TransferCompanyDropDownListJ = jQuery.Select("#" + clientId + "_TransferCompanyDropDownList");}; return _TransferCompanyDropDownListJ;}} private jQueryObject _TransferCompanyDropDownListJ;
		public Element KNumberLabel {get {if (_KNumberLabel == null) {_KNumberLabel = (Element)Document.GetElementById(clientId + "_KNumberLabel");}; return _KNumberLabel;}} private Element _KNumberLabel;
		public jQueryObject KNumberLabelJ {get {if (_KNumberLabelJ == null) {_KNumberLabelJ = jQuery.Select("#" + clientId + "_KNumberLabel");}; return _KNumberLabelJ;}} private jQueryObject _KNumberLabelJ;//mappings.Add("System.Web.UI.WebControls.Label", ElementGetter("Element"));
		public InputElement KNumberTextBox {get {if (_KNumberTextBox == null) {_KNumberTextBox = (InputElement)Document.GetElementById(clientId + "_KNumberTextBox");}; return _KNumberTextBox;}} private InputElement _KNumberTextBox;
		public jQueryObject KNumberTextBoxJ {get {if (_KNumberTextBoxJ == null) {_KNumberTextBoxJ = jQuery.Select("#" + clientId + "_KNumberTextBox");}; return _KNumberTextBoxJ;}} private jQueryObject _KNumberTextBoxJ;
		public Element StatusLabel {get {if (_StatusLabel == null) {_StatusLabel = (Element)Document.GetElementById(clientId + "_StatusLabel");}; return _StatusLabel;}} private Element _StatusLabel;
		public jQueryObject StatusLabelJ {get {if (_StatusLabelJ == null) {_StatusLabelJ = jQuery.Select("#" + clientId + "_StatusLabel");}; return _StatusLabelJ;}} private jQueryObject _StatusLabelJ;//mappings.Add("System.Web.UI.WebControls.Label", ElementGetter("Element"));
		public SelectElement StatusDropDownList {get {if (_StatusDropDownList == null) {_StatusDropDownList = (SelectElement)Document.GetElementById(clientId + "_StatusDropDownList");}; return _StatusDropDownList;}} private SelectElement _StatusDropDownList;
		public jQueryObject StatusDropDownListJ {get {if (_StatusDropDownListJ == null) {_StatusDropDownListJ = jQuery.Select("#" + clientId + "_StatusDropDownList");}; return _StatusDropDownListJ;}} private jQueryObject _StatusDropDownListJ;
		public Element PromoterLabel {get {if (_PromoterLabel == null) {_PromoterLabel = (Element)Document.GetElementById(clientId + "_PromoterLabel");}; return _PromoterLabel;}} private Element _PromoterLabel;
		public jQueryObject PromoterLabelJ {get {if (_PromoterLabelJ == null) {_PromoterLabelJ = jQuery.Select("#" + clientId + "_PromoterLabel");}; return _PromoterLabelJ;}} private jQueryObject _PromoterLabelJ;//mappings.Add("System.Web.UI.WebControls.Label", ElementGetter("Element"));
		public Element InvoiceItemTypeLabel {get {if (_InvoiceItemTypeLabel == null) {_InvoiceItemTypeLabel = (Element)Document.GetElementById(clientId + "_InvoiceItemTypeLabel");}; return _InvoiceItemTypeLabel;}} private Element _InvoiceItemTypeLabel;
		public jQueryObject InvoiceItemTypeLabelJ {get {if (_InvoiceItemTypeLabelJ == null) {_InvoiceItemTypeLabelJ = jQuery.Select("#" + clientId + "_InvoiceItemTypeLabel");}; return _InvoiceItemTypeLabelJ;}} private jQueryObject _InvoiceItemTypeLabelJ;//mappings.Add("System.Web.UI.WebControls.Label", ElementGetter("Element"));
		public Js.ClientControls.HtmlAutoCompleteBehaviour uiPromotersAutoComplete {get {return (Js.ClientControls.HtmlAutoCompleteBehaviour) Script.Eval(clientId + "_uiPromotersAutoCompleteBehaviour");}}
		public SelectElement InvoiceItemTypeDropDownList {get {if (_InvoiceItemTypeDropDownList == null) {_InvoiceItemTypeDropDownList = (SelectElement)Document.GetElementById(clientId + "_InvoiceItemTypeDropDownList");}; return _InvoiceItemTypeDropDownList;}} private SelectElement _InvoiceItemTypeDropDownList;
		public jQueryObject InvoiceItemTypeDropDownListJ {get {if (_InvoiceItemTypeDropDownListJ == null) {_InvoiceItemTypeDropDownListJ = jQuery.Select("#" + clientId + "_InvoiceItemTypeDropDownList");}; return _InvoiceItemTypeDropDownListJ;}} private jQueryObject _InvoiceItemTypeDropDownListJ;
		public Element FromDateLabel {get {if (_FromDateLabel == null) {_FromDateLabel = (Element)Document.GetElementById(clientId + "_FromDateLabel");}; return _FromDateLabel;}} private Element _FromDateLabel;
		public jQueryObject FromDateLabelJ {get {if (_FromDateLabelJ == null) {_FromDateLabelJ = jQuery.Select("#" + clientId + "_FromDateLabel");}; return _FromDateLabelJ;}} private jQueryObject _FromDateLabelJ;//mappings.Add("System.Web.UI.WebControls.Label", ElementGetter("Element"));
		public Js.CustomControls.Cal.Controller FromDateCal {get {return (Js.CustomControls.Cal.Controller) Script.Eval(clientId + "_FromDateCalController");}}
		public Element UserLabel {get {if (_UserLabel == null) {_UserLabel = (Element)Document.GetElementById(clientId + "_UserLabel");}; return _UserLabel;}} private Element _UserLabel;
		public jQueryObject UserLabelJ {get {if (_UserLabelJ == null) {_UserLabelJ = jQuery.Select("#" + clientId + "_UserLabel");}; return _UserLabelJ;}} private jQueryObject _UserLabelJ;//mappings.Add("System.Web.UI.WebControls.Label", ElementGetter("Element"));
		public Js.ClientControls.HtmlAutoCompleteBehaviour uiUserAutoComplete {get {return (Js.ClientControls.HtmlAutoCompleteBehaviour) Script.Eval(clientId + "_uiUserAutoCompleteBehaviour");}}
		public Element ToDateLabel {get {if (_ToDateLabel == null) {_ToDateLabel = (Element)Document.GetElementById(clientId + "_ToDateLabel");}; return _ToDateLabel;}} private Element _ToDateLabel;
		public jQueryObject ToDateLabelJ {get {if (_ToDateLabelJ == null) {_ToDateLabelJ = jQuery.Select("#" + clientId + "_ToDateLabel");}; return _ToDateLabelJ;}} private jQueryObject _ToDateLabelJ;//mappings.Add("System.Web.UI.WebControls.Label", ElementGetter("Element"));
		public Js.CustomControls.Cal.Controller ToDateCal {get {return (Js.CustomControls.Cal.Controller) Script.Eval(clientId + "_ToDateCalController");}}
		public Element SalesUserLabel {get {if (_SalesUserLabel == null) {_SalesUserLabel = (Element)Document.GetElementById(clientId + "_SalesUserLabel");}; return _SalesUserLabel;}} private Element _SalesUserLabel;
		public jQueryObject SalesUserLabelJ {get {if (_SalesUserLabelJ == null) {_SalesUserLabelJ = jQuery.Select("#" + clientId + "_SalesUserLabel");}; return _SalesUserLabelJ;}} private jQueryObject _SalesUserLabelJ;//mappings.Add("System.Web.UI.WebControls.Label", ElementGetter("Element"));
		public Element TransferMethodLabel {get {if (_TransferMethodLabel == null) {_TransferMethodLabel = (Element)Document.GetElementById(clientId + "_TransferMethodLabel");}; return _TransferMethodLabel;}} private Element _TransferMethodLabel;
		public jQueryObject TransferMethodLabelJ {get {if (_TransferMethodLabelJ == null) {_TransferMethodLabelJ = jQuery.Select("#" + clientId + "_TransferMethodLabel");}; return _TransferMethodLabelJ;}} private jQueryObject _TransferMethodLabelJ;//mappings.Add("System.Web.UI.WebControls.Label", ElementGetter("Element"));
		public SelectElement SalesUserDropDownList {get {if (_SalesUserDropDownList == null) {_SalesUserDropDownList = (SelectElement)Document.GetElementById(clientId + "_SalesUserDropDownList");}; return _SalesUserDropDownList;}} private SelectElement _SalesUserDropDownList;
		public jQueryObject SalesUserDropDownListJ {get {if (_SalesUserDropDownListJ == null) {_SalesUserDropDownListJ = jQuery.Select("#" + clientId + "_SalesUserDropDownList");}; return _SalesUserDropDownListJ;}} private jQueryObject _SalesUserDropDownListJ;
		public SelectElement TransferMethodDropDownList {get {if (_TransferMethodDropDownList == null) {_TransferMethodDropDownList = (SelectElement)Document.GetElementById(clientId + "_TransferMethodDropDownList");}; return _TransferMethodDropDownList;}} private SelectElement _TransferMethodDropDownList;
		public jQueryObject TransferMethodDropDownListJ {get {if (_TransferMethodDropDownListJ == null) {_TransferMethodDropDownListJ = jQuery.Select("#" + clientId + "_TransferMethodDropDownList");}; return _TransferMethodDropDownListJ;}} private jQueryObject _TransferMethodDropDownListJ;
		public Element DateTypeLabel {get {if (_DateTypeLabel == null) {_DateTypeLabel = (Element)Document.GetElementById(clientId + "_DateTypeLabel");}; return _DateTypeLabel;}} private Element _DateTypeLabel;
		public jQueryObject DateTypeLabelJ {get {if (_DateTypeLabelJ == null) {_DateTypeLabelJ = jQuery.Select("#" + clientId + "_DateTypeLabel");}; return _DateTypeLabelJ;}} private jQueryObject _DateTypeLabelJ;//mappings.Add("System.Web.UI.WebControls.Label", ElementGetter("Element"));
		public SelectElement DateTypeDropDownList {get {if (_DateTypeDropDownList == null) {_DateTypeDropDownList = (SelectElement)Document.GetElementById(clientId + "_DateTypeDropDownList");}; return _DateTypeDropDownList;}} private SelectElement _DateTypeDropDownList;
		public jQueryObject DateTypeDropDownListJ {get {if (_DateTypeDropDownListJ == null) {_DateTypeDropDownListJ = jQuery.Select("#" + clientId + "_DateTypeDropDownList");}; return _DateTypeDropDownListJ;}} private jQueryObject _DateTypeDropDownListJ;
		public Element BankAccountLabel {get {if (_BankAccountLabel == null) {_BankAccountLabel = (Element)Document.GetElementById(clientId + "_BankAccountLabel");}; return _BankAccountLabel;}} private Element _BankAccountLabel;
		public jQueryObject BankAccountLabelJ {get {if (_BankAccountLabelJ == null) {_BankAccountLabelJ = jQuery.Select("#" + clientId + "_BankAccountLabel");}; return _BankAccountLabelJ;}} private jQueryObject _BankAccountLabelJ;//mappings.Add("System.Web.UI.WebControls.Label", ElementGetter("Element"));
		public SelectElement BankAccountDropDownList {get {if (_BankAccountDropDownList == null) {_BankAccountDropDownList = (SelectElement)Document.GetElementById(clientId + "_BankAccountDropDownList");}; return _BankAccountDropDownList;}} private SelectElement _BankAccountDropDownList;
		public jQueryObject BankAccountDropDownListJ {get {if (_BankAccountDropDownListJ == null) {_BankAccountDropDownListJ = jQuery.Select("#" + clientId + "_BankAccountDropDownList");}; return _BankAccountDropDownListJ;}} private jQueryObject _BankAccountDropDownListJ;
		public Element SearchButton {get {if (_SearchButton == null) {_SearchButton = (Element)Document.GetElementById(clientId + "_SearchButton");}; return _SearchButton;}} private Element _SearchButton;
		public jQueryObject SearchButtonJ {get {if (_SearchButtonJ == null) {_SearchButtonJ = jQuery.Select("#" + clientId + "_SearchButton");}; return _SearchButtonJ;}} private jQueryObject _SearchButtonJ;//mappings.Add("System.Web.UI.WebControls.Button", ElementGetter("Element"));
		public Element ClearButton {get {if (_ClearButton == null) {_ClearButton = (Element)Document.GetElementById(clientId + "_ClearButton");}; return _ClearButton;}} private Element _ClearButton;
		public jQueryObject ClearButtonJ {get {if (_ClearButtonJ == null) {_ClearButtonJ = jQuery.Select("#" + clientId + "_ClearButton");}; return _ClearButtonJ;}} private jQueryObject _ClearButtonJ;//mappings.Add("System.Web.UI.WebControls.Button", ElementGetter("Element"));
		public Element SearchResultsMessageLabel {get {if (_SearchResultsMessageLabel == null) {_SearchResultsMessageLabel = (Element)Document.GetElementById(clientId + "_SearchResultsMessageLabel");}; return _SearchResultsMessageLabel;}} private Element _SearchResultsMessageLabel;
		public jQueryObject SearchResultsMessageLabelJ {get {if (_SearchResultsMessageLabelJ == null) {_SearchResultsMessageLabelJ = jQuery.Select("#" + clientId + "_SearchResultsMessageLabel");}; return _SearchResultsMessageLabelJ;}} private jQueryObject _SearchResultsMessageLabelJ;//mappings.Add("System.Web.UI.WebControls.Label", ElementGetter("Element"));
		public Element SearchResultsInvoiceGridView {get {if (_SearchResultsInvoiceGridView == null) {_SearchResultsInvoiceGridView = (Element)Document.GetElementById(clientId + "_SearchResultsInvoiceGridView");}; return _SearchResultsInvoiceGridView;}} private Element _SearchResultsInvoiceGridView;
		public jQueryObject SearchResultsInvoiceGridViewJ {get {if (_SearchResultsInvoiceGridViewJ == null) {_SearchResultsInvoiceGridViewJ = jQuery.Select("#" + clientId + "_SearchResultsInvoiceGridView");}; return _SearchResultsInvoiceGridViewJ;}} private jQueryObject _SearchResultsInvoiceGridViewJ;//mappings.Add("System.Web.UI.WebControls.GridView", ElementGetter("Element"));
		public Element SearchResultsTransferGridView {get {if (_SearchResultsTransferGridView == null) {_SearchResultsTransferGridView = (Element)Document.GetElementById(clientId + "_SearchResultsTransferGridView");}; return _SearchResultsTransferGridView;}} private Element _SearchResultsTransferGridView;
		public jQueryObject SearchResultsTransferGridViewJ {get {if (_SearchResultsTransferGridViewJ == null) {_SearchResultsTransferGridViewJ = jQuery.Select("#" + clientId + "_SearchResultsTransferGridView");}; return _SearchResultsTransferGridViewJ;}} private jQueryObject _SearchResultsTransferGridViewJ;//mappings.Add("System.Web.UI.WebControls.GridView", ElementGetter("Element"));
		public Element SearchResultsInvoiceItemGridView {get {if (_SearchResultsInvoiceItemGridView == null) {_SearchResultsInvoiceItemGridView = (Element)Document.GetElementById(clientId + "_SearchResultsInvoiceItemGridView");}; return _SearchResultsInvoiceItemGridView;}} private Element _SearchResultsInvoiceItemGridView;
		public jQueryObject SearchResultsInvoiceItemGridViewJ {get {if (_SearchResultsInvoiceItemGridViewJ == null) {_SearchResultsInvoiceItemGridViewJ = jQuery.Select("#" + clientId + "_SearchResultsInvoiceItemGridView");}; return _SearchResultsInvoiceItemGridViewJ;}} private jQueryObject _SearchResultsInvoiceItemGridViewJ;//mappings.Add("System.Web.UI.WebControls.GridView", ElementGetter("Element"));
		public Element SearchResultsInsertionOrderGridView {get {if (_SearchResultsInsertionOrderGridView == null) {_SearchResultsInsertionOrderGridView = (Element)Document.GetElementById(clientId + "_SearchResultsInsertionOrderGridView");}; return _SearchResultsInsertionOrderGridView;}} private Element _SearchResultsInsertionOrderGridView;
		public jQueryObject SearchResultsInsertionOrderGridViewJ {get {if (_SearchResultsInsertionOrderGridViewJ == null) {_SearchResultsInsertionOrderGridViewJ = jQuery.Select("#" + clientId + "_SearchResultsInsertionOrderGridView");}; return _SearchResultsInsertionOrderGridViewJ;}} private jQueryObject _SearchResultsInsertionOrderGridViewJ;//mappings.Add("System.Web.UI.WebControls.GridView", ElementGetter("Element"));
		public Element SearchResultsCampaignCreditGridView {get {if (_SearchResultsCampaignCreditGridView == null) {_SearchResultsCampaignCreditGridView = (Element)Document.GetElementById(clientId + "_SearchResultsCampaignCreditGridView");}; return _SearchResultsCampaignCreditGridView;}} private Element _SearchResultsCampaignCreditGridView;
		public jQueryObject SearchResultsCampaignCreditGridViewJ {get {if (_SearchResultsCampaignCreditGridViewJ == null) {_SearchResultsCampaignCreditGridViewJ = jQuery.Select("#" + clientId + "_SearchResultsCampaignCreditGridView");}; return _SearchResultsCampaignCreditGridViewJ;}} private jQueryObject _SearchResultsCampaignCreditGridViewJ;//mappings.Add("System.Web.UI.WebControls.GridView", ElementGetter("Element"));
		public Element TotalExVatRow {get {if (_TotalExVatRow == null) {_TotalExVatRow = (Element)Document.GetElementById(clientId + "_TotalExVatRow");}; return _TotalExVatRow;}} private Element _TotalExVatRow;
		public jQueryObject TotalExVatRowJ {get {if (_TotalExVatRowJ == null) {_TotalExVatRowJ = jQuery.Select("#" + clientId + "_TotalExVatRow");}; return _TotalExVatRowJ;}} private jQueryObject _TotalExVatRowJ;//mappings.Add("System.Web.UI.HtmlControls.HtmlTableRow", ElementGetter("Element"));
		public Element TotalExVatLabel {get {if (_TotalExVatLabel == null) {_TotalExVatLabel = (Element)Document.GetElementById(clientId + "_TotalExVatLabel");}; return _TotalExVatLabel;}} private Element _TotalExVatLabel;
		public jQueryObject TotalExVatLabelJ {get {if (_TotalExVatLabelJ == null) {_TotalExVatLabelJ = jQuery.Select("#" + clientId + "_TotalExVatLabel");}; return _TotalExVatLabelJ;}} private jQueryObject _TotalExVatLabelJ;//mappings.Add("System.Web.UI.WebControls.Label", ElementGetter("Element"));
		public Element TotalExVatValueLabel {get {if (_TotalExVatValueLabel == null) {_TotalExVatValueLabel = (Element)Document.GetElementById(clientId + "_TotalExVatValueLabel");}; return _TotalExVatValueLabel;}} private Element _TotalExVatValueLabel;
		public jQueryObject TotalExVatValueLabelJ {get {if (_TotalExVatValueLabelJ == null) {_TotalExVatValueLabelJ = jQuery.Select("#" + clientId + "_TotalExVatValueLabel");}; return _TotalExVatValueLabelJ;}} private jQueryObject _TotalExVatValueLabelJ;//mappings.Add("System.Web.UI.WebControls.Label", ElementGetter("Element"));
		public Element TicketSalesExVATValueLabel {get {if (_TicketSalesExVATValueLabel == null) {_TicketSalesExVATValueLabel = (Element)Document.GetElementById(clientId + "_TicketSalesExVATValueLabel");}; return _TicketSalesExVATValueLabel;}} private Element _TicketSalesExVATValueLabel;
		public jQueryObject TicketSalesExVATValueLabelJ {get {if (_TicketSalesExVATValueLabelJ == null) {_TicketSalesExVATValueLabelJ = jQuery.Select("#" + clientId + "_TicketSalesExVATValueLabel");}; return _TicketSalesExVATValueLabelJ;}} private jQueryObject _TicketSalesExVATValueLabelJ;//mappings.Add("System.Web.UI.WebControls.Label", ElementGetter("Element"));
		public Element BookingFeeExVATValueLabel {get {if (_BookingFeeExVATValueLabel == null) {_BookingFeeExVATValueLabel = (Element)Document.GetElementById(clientId + "_BookingFeeExVATValueLabel");}; return _BookingFeeExVATValueLabel;}} private Element _BookingFeeExVATValueLabel;
		public jQueryObject BookingFeeExVATValueLabelJ {get {if (_BookingFeeExVATValueLabelJ == null) {_BookingFeeExVATValueLabelJ = jQuery.Select("#" + clientId + "_BookingFeeExVATValueLabel");}; return _BookingFeeExVATValueLabelJ;}} private jQueryObject _BookingFeeExVATValueLabelJ;//mappings.Add("System.Web.UI.WebControls.Label", ElementGetter("Element"));
		public Element TotalVatRow {get {if (_TotalVatRow == null) {_TotalVatRow = (Element)Document.GetElementById(clientId + "_TotalVatRow");}; return _TotalVatRow;}} private Element _TotalVatRow;
		public jQueryObject TotalVatRowJ {get {if (_TotalVatRowJ == null) {_TotalVatRowJ = jQuery.Select("#" + clientId + "_TotalVatRow");}; return _TotalVatRowJ;}} private jQueryObject _TotalVatRowJ;//mappings.Add("System.Web.UI.HtmlControls.HtmlTableRow", ElementGetter("Element"));
		public Element TotalVatLabel {get {if (_TotalVatLabel == null) {_TotalVatLabel = (Element)Document.GetElementById(clientId + "_TotalVatLabel");}; return _TotalVatLabel;}} private Element _TotalVatLabel;
		public jQueryObject TotalVatLabelJ {get {if (_TotalVatLabelJ == null) {_TotalVatLabelJ = jQuery.Select("#" + clientId + "_TotalVatLabel");}; return _TotalVatLabelJ;}} private jQueryObject _TotalVatLabelJ;//mappings.Add("System.Web.UI.WebControls.Label", ElementGetter("Element"));
		public Element TotalVatValueLabel {get {if (_TotalVatValueLabel == null) {_TotalVatValueLabel = (Element)Document.GetElementById(clientId + "_TotalVatValueLabel");}; return _TotalVatValueLabel;}} private Element _TotalVatValueLabel;
		public jQueryObject TotalVatValueLabelJ {get {if (_TotalVatValueLabelJ == null) {_TotalVatValueLabelJ = jQuery.Select("#" + clientId + "_TotalVatValueLabel");}; return _TotalVatValueLabelJ;}} private jQueryObject _TotalVatValueLabelJ;//mappings.Add("System.Web.UI.WebControls.Label", ElementGetter("Element"));
		public Element TicketSalesVATValueLabel {get {if (_TicketSalesVATValueLabel == null) {_TicketSalesVATValueLabel = (Element)Document.GetElementById(clientId + "_TicketSalesVATValueLabel");}; return _TicketSalesVATValueLabel;}} private Element _TicketSalesVATValueLabel;
		public jQueryObject TicketSalesVATValueLabelJ {get {if (_TicketSalesVATValueLabelJ == null) {_TicketSalesVATValueLabelJ = jQuery.Select("#" + clientId + "_TicketSalesVATValueLabel");}; return _TicketSalesVATValueLabelJ;}} private jQueryObject _TicketSalesVATValueLabelJ;//mappings.Add("System.Web.UI.WebControls.Label", ElementGetter("Element"));
		public Element BookingFeeVATValueLabel {get {if (_BookingFeeVATValueLabel == null) {_BookingFeeVATValueLabel = (Element)Document.GetElementById(clientId + "_BookingFeeVATValueLabel");}; return _BookingFeeVATValueLabel;}} private Element _BookingFeeVATValueLabel;
		public jQueryObject BookingFeeVATValueLabelJ {get {if (_BookingFeeVATValueLabelJ == null) {_BookingFeeVATValueLabelJ = jQuery.Select("#" + clientId + "_BookingFeeVATValueLabel");}; return _BookingFeeVATValueLabelJ;}} private jQueryObject _BookingFeeVATValueLabelJ;//mappings.Add("System.Web.UI.WebControls.Label", ElementGetter("Element"));
		public Element TotalRow {get {if (_TotalRow == null) {_TotalRow = (Element)Document.GetElementById(clientId + "_TotalRow");}; return _TotalRow;}} private Element _TotalRow;
		public jQueryObject TotalRowJ {get {if (_TotalRowJ == null) {_TotalRowJ = jQuery.Select("#" + clientId + "_TotalRow");}; return _TotalRowJ;}} private jQueryObject _TotalRowJ;//mappings.Add("System.Web.UI.HtmlControls.HtmlTableRow", ElementGetter("Element"));
		public Element TotalLabel {get {if (_TotalLabel == null) {_TotalLabel = (Element)Document.GetElementById(clientId + "_TotalLabel");}; return _TotalLabel;}} private Element _TotalLabel;
		public jQueryObject TotalLabelJ {get {if (_TotalLabelJ == null) {_TotalLabelJ = jQuery.Select("#" + clientId + "_TotalLabel");}; return _TotalLabelJ;}} private jQueryObject _TotalLabelJ;//mappings.Add("System.Web.UI.WebControls.Label", ElementGetter("Element"));
		public Element TotalValueLabel {get {if (_TotalValueLabel == null) {_TotalValueLabel = (Element)Document.GetElementById(clientId + "_TotalValueLabel");}; return _TotalValueLabel;}} private Element _TotalValueLabel;
		public jQueryObject TotalValueLabelJ {get {if (_TotalValueLabelJ == null) {_TotalValueLabelJ = jQuery.Select("#" + clientId + "_TotalValueLabel");}; return _TotalValueLabelJ;}} private jQueryObject _TotalValueLabelJ;//mappings.Add("System.Web.UI.WebControls.Label", ElementGetter("Element"));
		public Element TicketSalesTotalValueLabel {get {if (_TicketSalesTotalValueLabel == null) {_TicketSalesTotalValueLabel = (Element)Document.GetElementById(clientId + "_TicketSalesTotalValueLabel");}; return _TicketSalesTotalValueLabel;}} private Element _TicketSalesTotalValueLabel;
		public jQueryObject TicketSalesTotalValueLabelJ {get {if (_TicketSalesTotalValueLabelJ == null) {_TicketSalesTotalValueLabelJ = jQuery.Select("#" + clientId + "_TicketSalesTotalValueLabel");}; return _TicketSalesTotalValueLabelJ;}} private jQueryObject _TicketSalesTotalValueLabelJ;//mappings.Add("System.Web.UI.WebControls.Label", ElementGetter("Element"));
		public Element BookingFeeTotalValueLabel {get {if (_BookingFeeTotalValueLabel == null) {_BookingFeeTotalValueLabel = (Element)Document.GetElementById(clientId + "_BookingFeeTotalValueLabel");}; return _BookingFeeTotalValueLabel;}} private Element _BookingFeeTotalValueLabel;
		public jQueryObject BookingFeeTotalValueLabelJ {get {if (_BookingFeeTotalValueLabelJ == null) {_BookingFeeTotalValueLabelJ = jQuery.Select("#" + clientId + "_BookingFeeTotalValueLabel");}; return _BookingFeeTotalValueLabelJ;}} private jQueryObject _BookingFeeTotalValueLabelJ;//mappings.Add("System.Web.UI.WebControls.Label", ElementGetter("Element"));
		public Element TotalTransferRow {get {if (_TotalTransferRow == null) {_TotalTransferRow = (Element)Document.GetElementById(clientId + "_TotalTransferRow");}; return _TotalTransferRow;}} private Element _TotalTransferRow;
		public jQueryObject TotalTransferRowJ {get {if (_TotalTransferRowJ == null) {_TotalTransferRowJ = jQuery.Select("#" + clientId + "_TotalTransferRow");}; return _TotalTransferRowJ;}} private jQueryObject _TotalTransferRowJ;//mappings.Add("System.Web.UI.HtmlControls.HtmlTableRow", ElementGetter("Element"));
		public Element TotalTransferValueLabel {get {if (_TotalTransferValueLabel == null) {_TotalTransferValueLabel = (Element)Document.GetElementById(clientId + "_TotalTransferValueLabel");}; return _TotalTransferValueLabel;}} private Element _TotalTransferValueLabel;
		public jQueryObject TotalTransferValueLabelJ {get {if (_TotalTransferValueLabelJ == null) {_TotalTransferValueLabelJ = jQuery.Select("#" + clientId + "_TotalTransferValueLabel");}; return _TotalTransferValueLabelJ;}} private jQueryObject _TotalTransferValueLabelJ;//mappings.Add("System.Web.UI.WebControls.Label", ElementGetter("Element"));
		public Element GenericContainerPage {get {if (_GenericContainerPage == null) {_GenericContainerPage = (Element)Document.GetElementById(clientId + "_GenericContainerPage");}; return _GenericContainerPage;}} private Element _GenericContainerPage;
		public jQueryObject GenericContainerPageJ {get {if (_GenericContainerPageJ == null) {_GenericContainerPageJ = jQuery.Select("#" + clientId + "_GenericContainerPage");}; return _GenericContainerPageJ;}} private jQueryObject _GenericContainerPageJ;//mappings.Add("Spotted.GenericPage", ElementGetter("Element"));
	}
}