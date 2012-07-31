//mappings.Add("System.Web.UI.HtmlControls.HtmlGenericControl", ElementGetter("Element"));
//mappings.Add("System.Web.UI.WebControls.LinkButton", ElementGetter("Element"));
//mappings.Add("System.Web.UI.WebControls.CustomValidator", ElementGetter("Element"));
using System;
using System.Collections.Generic;
using System.Html;
using jQueryApi;
using Js.Library;

namespace Js.Controls.PhotoControl
{
	public partial class View
	{
		public string clientId;
		public View(string clientId)
		{
			this.clientId = clientId;
		}
		public DivElement uiContent {get {if (_uiContent == null) {_uiContent = (DivElement)Document.GetElementById(clientId + "_uiContent");}; return _uiContent;}} private DivElement _uiContent;
		public jQueryObject uiContentJ {get {if (_uiContentJ == null) {_uiContentJ = jQuery.Select("#" + clientId + "_uiContent");}; return _uiContentJ;}} private jQueryObject _uiContentJ;
		public Element uiPrevPhotoButtonDiv {get {if (_uiPrevPhotoButtonDiv == null) {_uiPrevPhotoButtonDiv = (Element)Document.GetElementById(clientId + "_uiPrevPhotoButtonDiv");}; return _uiPrevPhotoButtonDiv;}} private Element _uiPrevPhotoButtonDiv;
		public jQueryObject uiPrevPhotoButtonDivJ {get {if (_uiPrevPhotoButtonDivJ == null) {_uiPrevPhotoButtonDivJ = jQuery.Select("#" + clientId + "_uiPrevPhotoButtonDiv");}; return _uiPrevPhotoButtonDivJ;}} private jQueryObject _uiPrevPhotoButtonDivJ;//mappings.Add("System.Web.UI.HtmlControls.HtmlGenericControl", ElementGetter("Element"));
		public ImageElement uiPrevPhotoButton {get {if (_uiPrevPhotoButton == null) {_uiPrevPhotoButton = (ImageElement)Document.GetElementById(clientId + "_uiPrevPhotoButton");}; return _uiPrevPhotoButton;}} private ImageElement _uiPrevPhotoButton;
		public jQueryObject uiPrevPhotoButtonJ {get {if (_uiPrevPhotoButtonJ == null) {_uiPrevPhotoButtonJ = jQuery.Select("#" + clientId + "_uiPrevPhotoButton");}; return _uiPrevPhotoButtonJ;}} private jQueryObject _uiPrevPhotoButtonJ;
		public Element uiNextPhotoButtonDiv {get {if (_uiNextPhotoButtonDiv == null) {_uiNextPhotoButtonDiv = (Element)Document.GetElementById(clientId + "_uiNextPhotoButtonDiv");}; return _uiNextPhotoButtonDiv;}} private Element _uiNextPhotoButtonDiv;
		public jQueryObject uiNextPhotoButtonDivJ {get {if (_uiNextPhotoButtonDivJ == null) {_uiNextPhotoButtonDivJ = jQuery.Select("#" + clientId + "_uiNextPhotoButtonDiv");}; return _uiNextPhotoButtonDivJ;}} private jQueryObject _uiNextPhotoButtonDivJ;//mappings.Add("System.Web.UI.HtmlControls.HtmlGenericControl", ElementGetter("Element"));
		public ImageElement uiNextPhotoButton {get {if (_uiNextPhotoButton == null) {_uiNextPhotoButton = (ImageElement)Document.GetElementById(clientId + "_uiNextPhotoButton");}; return _uiNextPhotoButton;}} private ImageElement _uiNextPhotoButton;
		public jQueryObject uiNextPhotoButtonJ {get {if (_uiNextPhotoButtonJ == null) {_uiNextPhotoButtonJ = jQuery.Select("#" + clientId + "_uiNextPhotoButton");}; return _uiNextPhotoButtonJ;}} private jQueryObject _uiNextPhotoButtonJ;
		public Element uiBannerHolder {get {if (_uiBannerHolder == null) {_uiBannerHolder = (Element)Document.GetElementById(clientId + "_uiBannerHolder");}; return _uiBannerHolder;}} private Element _uiBannerHolder;
		public jQueryObject uiBannerHolderJ {get {if (_uiBannerHolderJ == null) {_uiBannerHolderJ = jQuery.Select("#" + clientId + "_uiBannerHolder");}; return _uiBannerHolderJ;}} private jQueryObject _uiBannerHolderJ;//mappings.Add("System.Web.UI.HtmlControls.HtmlGenericControl", ElementGetter("Element"));
		public Element uiBannerPlaceHolder {get {if (_uiBannerPlaceHolder == null) {_uiBannerPlaceHolder = (Element)Document.GetElementById(clientId + "_uiBannerPlaceHolder");}; return _uiBannerPlaceHolder;}} private Element _uiBannerPlaceHolder;
		public jQueryObject uiBannerPlaceHolderJ {get {if (_uiBannerPlaceHolderJ == null) {_uiBannerPlaceHolderJ = jQuery.Select("#" + clientId + "_uiBannerPlaceHolder");}; return _uiBannerPlaceHolderJ;}} private jQueryObject _uiBannerPlaceHolderJ;//mappings.Add("System.Web.UI.HtmlControls.HtmlGenericControl", ElementGetter("Element"));
		public Js.Controls.Banners.Generator.Controller BannerPhoto {get {return (Js.Controls.Banners.Generator.Controller) Script.Eval(clientId + "_BannerPhotoController");}}
		public Element uiPhotoDiv {get {if (_uiPhotoDiv == null) {_uiPhotoDiv = (Element)Document.GetElementById(clientId + "_uiPhotoDiv");}; return _uiPhotoDiv;}} private Element _uiPhotoDiv;
		public jQueryObject uiPhotoDivJ {get {if (_uiPhotoDivJ == null) {_uiPhotoDivJ = jQuery.Select("#" + clientId + "_uiPhotoDiv");}; return _uiPhotoDivJ;}} private jQueryObject _uiPhotoDivJ;//mappings.Add("System.Web.UI.HtmlControls.HtmlGenericControl", ElementGetter("Element"));
		public Element uiPhotoHolder {get {if (_uiPhotoHolder == null) {_uiPhotoHolder = (Element)Document.GetElementById(clientId + "_uiPhotoHolder");}; return _uiPhotoHolder;}} private Element _uiPhotoHolder;
		public jQueryObject uiPhotoHolderJ {get {if (_uiPhotoHolderJ == null) {_uiPhotoHolderJ = jQuery.Select("#" + clientId + "_uiPhotoHolder");}; return _uiPhotoHolderJ;}} private jQueryObject _uiPhotoHolderJ;//mappings.Add("System.Web.UI.HtmlControls.HtmlGenericControl", ElementGetter("Element"));
		public ImageElement uiPhoto {get {if (_uiPhoto == null) {_uiPhoto = (ImageElement)Document.GetElementById(clientId + "_uiPhoto");}; return _uiPhoto;}} private ImageElement _uiPhoto;
		public jQueryObject uiPhotoJ {get {if (_uiPhotoJ == null) {_uiPhotoJ = jQuery.Select("#" + clientId + "_uiPhoto");}; return _uiPhotoJ;}} private jQueryObject _uiPhotoJ;
		public Element uiPhotoOverlay {get {if (_uiPhotoOverlay == null) {_uiPhotoOverlay = (Element)Document.GetElementById(clientId + "_uiPhotoOverlay");}; return _uiPhotoOverlay;}} private Element _uiPhotoOverlay;
		public jQueryObject uiPhotoOverlayJ {get {if (_uiPhotoOverlayJ == null) {_uiPhotoOverlayJ = jQuery.Select("#" + clientId + "_uiPhotoOverlay");}; return _uiPhotoOverlayJ;}} private jQueryObject _uiPhotoOverlayJ;//mappings.Add("System.Web.UI.HtmlControls.HtmlGenericControl", ElementGetter("Element"));
		public Element uiFlashHolder {get {if (_uiFlashHolder == null) {_uiFlashHolder = (Element)Document.GetElementById(clientId + "_uiFlashHolder");}; return _uiFlashHolder;}} private Element _uiFlashHolder;
		public jQueryObject uiFlashHolderJ {get {if (_uiFlashHolderJ == null) {_uiFlashHolderJ = jQuery.Select("#" + clientId + "_uiFlashHolder");}; return _uiFlashHolderJ;}} private jQueryObject _uiFlashHolderJ;//mappings.Add("System.Web.UI.HtmlControls.HtmlGenericControl", ElementGetter("Element"));
		public Element uiPhotoGalleryLinkHolder {get {if (_uiPhotoGalleryLinkHolder == null) {_uiPhotoGalleryLinkHolder = (Element)Document.GetElementById(clientId + "_uiPhotoGalleryLinkHolder");}; return _uiPhotoGalleryLinkHolder;}} private Element _uiPhotoGalleryLinkHolder;
		public jQueryObject uiPhotoGalleryLinkHolderJ {get {if (_uiPhotoGalleryLinkHolderJ == null) {_uiPhotoGalleryLinkHolderJ = jQuery.Select("#" + clientId + "_uiPhotoGalleryLinkHolder");}; return _uiPhotoGalleryLinkHolderJ;}} private jQueryObject _uiPhotoGalleryLinkHolderJ;//mappings.Add("System.Web.UI.HtmlControls.HtmlGenericControl", ElementGetter("Element"));
		public AnchorElement uiPhotoGalleryLink {get {if (_uiPhotoGalleryLink == null) {_uiPhotoGalleryLink = (AnchorElement)Document.GetElementById(clientId + "_uiPhotoGalleryLink");}; return _uiPhotoGalleryLink;}} private AnchorElement _uiPhotoGalleryLink;
		public jQueryObject uiPhotoGalleryLinkJ {get {if (_uiPhotoGalleryLinkJ == null) {_uiPhotoGalleryLinkJ = jQuery.Select("#" + clientId + "_uiPhotoGalleryLink");}; return _uiPhotoGalleryLinkJ;}} private jQueryObject _uiPhotoGalleryLinkJ;
		public Element uiTakenByDetailsSpan {get {if (_uiTakenByDetailsSpan == null) {_uiTakenByDetailsSpan = (Element)Document.GetElementById(clientId + "_uiTakenByDetailsSpan");}; return _uiTakenByDetailsSpan;}} private Element _uiTakenByDetailsSpan;
		public jQueryObject uiTakenByDetailsSpanJ {get {if (_uiTakenByDetailsSpanJ == null) {_uiTakenByDetailsSpanJ = jQuery.Select("#" + clientId + "_uiTakenByDetailsSpan");}; return _uiTakenByDetailsSpanJ;}} private jQueryObject _uiTakenByDetailsSpanJ;//mappings.Add("System.Web.UI.HtmlControls.HtmlGenericControl", ElementGetter("Element"));
		public Element uiUsrsInPhotoSpan {get {if (_uiUsrsInPhotoSpan == null) {_uiUsrsInPhotoSpan = (Element)Document.GetElementById(clientId + "_uiUsrsInPhotoSpan");}; return _uiUsrsInPhotoSpan;}} private Element _uiUsrsInPhotoSpan;
		public jQueryObject uiUsrsInPhotoSpanJ {get {if (_uiUsrsInPhotoSpanJ == null) {_uiUsrsInPhotoSpanJ = jQuery.Select("#" + clientId + "_uiUsrsInPhotoSpan");}; return _uiUsrsInPhotoSpanJ;}} private jQueryObject _uiUsrsInPhotoSpanJ;//mappings.Add("System.Web.UI.HtmlControls.HtmlGenericControl", ElementGetter("Element"));
		public DivElement uiBuddyChooserPanel {get {if (_uiBuddyChooserPanel == null) {_uiBuddyChooserPanel = (DivElement)Document.GetElementById(clientId + "_uiBuddyChooserPanel");}; return _uiBuddyChooserPanel;}} private DivElement _uiBuddyChooserPanel;
		public jQueryObject uiBuddyChooserPanelJ {get {if (_uiBuddyChooserPanelJ == null) {_uiBuddyChooserPanelJ = jQuery.Select("#" + clientId + "_uiBuddyChooserPanel");}; return _uiBuddyChooserPanelJ;}} private jQueryObject _uiBuddyChooserPanelJ;
		public Element uiUsrSpottedToggleButton {get {if (_uiUsrSpottedToggleButton == null) {_uiUsrSpottedToggleButton = (Element)Document.GetElementById(clientId + "_uiUsrSpottedToggleButton");}; return _uiUsrSpottedToggleButton;}} private Element _uiUsrSpottedToggleButton;
		public jQueryObject uiUsrSpottedToggleButtonJ {get {if (_uiUsrSpottedToggleButtonJ == null) {_uiUsrSpottedToggleButtonJ = jQuery.Select("#" + clientId + "_uiUsrSpottedToggleButton");}; return _uiUsrSpottedToggleButtonJ;}} private jQueryObject _uiUsrSpottedToggleButtonJ;//mappings.Add("System.Web.UI.WebControls.LinkButton", ElementGetter("Element"));
		public Element uiUseAsProfilePictureButton {get {if (_uiUseAsProfilePictureButton == null) {_uiUseAsProfilePictureButton = (Element)Document.GetElementById(clientId + "_uiUseAsProfilePictureButton");}; return _uiUseAsProfilePictureButton;}} private Element _uiUseAsProfilePictureButton;
		public jQueryObject uiUseAsProfilePictureButtonJ {get {if (_uiUseAsProfilePictureButtonJ == null) {_uiUseAsProfilePictureButtonJ = jQuery.Select("#" + clientId + "_uiUseAsProfilePictureButton");}; return _uiUseAsProfilePictureButtonJ;}} private jQueryObject _uiUseAsProfilePictureButtonJ;//mappings.Add("System.Web.UI.WebControls.LinkButton", ElementGetter("Element"));
		public Element uiBuddyChooserPanelInner {get {if (_uiBuddyChooserPanelInner == null) {_uiBuddyChooserPanelInner = (Element)Document.GetElementById(clientId + "_uiBuddyChooserPanelInner");}; return _uiBuddyChooserPanelInner;}} private Element _uiBuddyChooserPanelInner;
		public jQueryObject uiBuddyChooserPanelInnerJ {get {if (_uiBuddyChooserPanelInnerJ == null) {_uiBuddyChooserPanelInnerJ = jQuery.Select("#" + clientId + "_uiBuddyChooserPanelInner");}; return _uiBuddyChooserPanelInnerJ;}} private jQueryObject _uiBuddyChooserPanelInnerJ;//mappings.Add("System.Web.UI.HtmlControls.HtmlGenericControl", ElementGetter("Element"));
		public Js.Controls.BuddyChooser.Controller uiBuddyChooser {get {return (Js.Controls.BuddyChooser.Controller) Script.Eval(clientId + "_uiBuddyChooserController");}}
		public Element uiBuddySpottedButton {get {if (_uiBuddySpottedButton == null) {_uiBuddySpottedButton = (Element)Document.GetElementById(clientId + "_uiBuddySpottedButton");}; return _uiBuddySpottedButton;}} private Element _uiBuddySpottedButton;
		public jQueryObject uiBuddySpottedButtonJ {get {if (_uiBuddySpottedButtonJ == null) {_uiBuddySpottedButtonJ = jQuery.Select("#" + clientId + "_uiBuddySpottedButton");}; return _uiBuddySpottedButtonJ;}} private jQueryObject _uiBuddySpottedButtonJ;//mappings.Add("System.Web.UI.WebControls.LinkButton", ElementGetter("Element"));
		public Element uiBuddyValidator {get {if (_uiBuddyValidator == null) {_uiBuddyValidator = (Element)Document.GetElementById(clientId + "_uiBuddyValidator");}; return _uiBuddyValidator;}} private Element _uiBuddyValidator;
		public jQueryObject uiBuddyValidatorJ {get {if (_uiBuddyValidatorJ == null) {_uiBuddyValidatorJ = jQuery.Select("#" + clientId + "_uiBuddyValidator");}; return _uiBuddyValidatorJ;}} private jQueryObject _uiBuddyValidatorJ;//mappings.Add("System.Web.UI.WebControls.CustomValidator", ElementGetter("Element"));
		public Element uiCompetitionPanel {get {if (_uiCompetitionPanel == null) {_uiCompetitionPanel = (Element)Document.GetElementById(clientId + "_uiCompetitionPanel");}; return _uiCompetitionPanel;}} private Element _uiCompetitionPanel;
		public jQueryObject uiCompetitionPanelJ {get {if (_uiCompetitionPanelJ == null) {_uiCompetitionPanelJ = jQuery.Select("#" + clientId + "_uiCompetitionPanel");}; return _uiCompetitionPanelJ;}} private jQueryObject _uiCompetitionPanelJ;//mappings.Add("System.Web.UI.HtmlControls.HtmlGenericControl", ElementGetter("Element"));
		public AnchorElement uiAddToCompetitionGroup {get {if (_uiAddToCompetitionGroup == null) {_uiAddToCompetitionGroup = (AnchorElement)Document.GetElementById(clientId + "_uiAddToCompetitionGroup");}; return _uiAddToCompetitionGroup;}} private AnchorElement _uiAddToCompetitionGroup;
		public jQueryObject uiAddToCompetitionGroupJ {get {if (_uiAddToCompetitionGroupJ == null) {_uiAddToCompetitionGroupJ = jQuery.Select("#" + clientId + "_uiAddToCompetitionGroup");}; return _uiAddToCompetitionGroupJ;}} private jQueryObject _uiAddToCompetitionGroupJ;
		public ImageElement uiAddToCompetitionGroupImg {get {if (_uiAddToCompetitionGroupImg == null) {_uiAddToCompetitionGroupImg = (ImageElement)Document.GetElementById(clientId + "_uiAddToCompetitionGroupImg");}; return _uiAddToCompetitionGroupImg;}} private ImageElement _uiAddToCompetitionGroupImg;
		public jQueryObject uiAddToCompetitionGroupImgJ {get {if (_uiAddToCompetitionGroupImgJ == null) {_uiAddToCompetitionGroupImgJ = jQuery.Select("#" + clientId + "_uiAddToCompetitionGroupImg");}; return _uiAddToCompetitionGroupImgJ;}} private jQueryObject _uiAddToCompetitionGroupImgJ;
		public AnchorElement uiCompetitionGroupLink {get {if (_uiCompetitionGroupLink == null) {_uiCompetitionGroupLink = (AnchorElement)Document.GetElementById(clientId + "_uiCompetitionGroupLink");}; return _uiCompetitionGroupLink;}} private AnchorElement _uiCompetitionGroupLink;
		public jQueryObject uiCompetitionGroupLinkJ {get {if (_uiCompetitionGroupLinkJ == null) {_uiCompetitionGroupLinkJ = jQuery.Select("#" + clientId + "_uiCompetitionGroupLink");}; return _uiCompetitionGroupLinkJ;}} private jQueryObject _uiCompetitionGroupLinkJ;
		public InputElement uiAddToCompetitionGroupImgAddButtonUrl {get {if (_uiAddToCompetitionGroupImgAddButtonUrl == null) {_uiAddToCompetitionGroupImgAddButtonUrl = (InputElement)Document.GetElementById(clientId + "_uiAddToCompetitionGroupImgAddButtonUrl");}; return _uiAddToCompetitionGroupImgAddButtonUrl;}} private InputElement _uiAddToCompetitionGroupImgAddButtonUrl;
		public jQueryObject uiAddToCompetitionGroupImgAddButtonUrlJ {get {if (_uiAddToCompetitionGroupImgAddButtonUrlJ == null) {_uiAddToCompetitionGroupImgAddButtonUrlJ = jQuery.Select("#" + clientId + "_uiAddToCompetitionGroupImgAddButtonUrl");}; return _uiAddToCompetitionGroupImgAddButtonUrlJ;}} private jQueryObject _uiAddToCompetitionGroupImgAddButtonUrlJ;
		public InputElement uiAddToCompetitionGroupImgRemoveButtonUrl {get {if (_uiAddToCompetitionGroupImgRemoveButtonUrl == null) {_uiAddToCompetitionGroupImgRemoveButtonUrl = (InputElement)Document.GetElementById(clientId + "_uiAddToCompetitionGroupImgRemoveButtonUrl");}; return _uiAddToCompetitionGroupImgRemoveButtonUrl;}} private InputElement _uiAddToCompetitionGroupImgRemoveButtonUrl;
		public jQueryObject uiAddToCompetitionGroupImgRemoveButtonUrlJ {get {if (_uiAddToCompetitionGroupImgRemoveButtonUrlJ == null) {_uiAddToCompetitionGroupImgRemoveButtonUrlJ = jQuery.Select("#" + clientId + "_uiAddToCompetitionGroupImgRemoveButtonUrl");}; return _uiAddToCompetitionGroupImgRemoveButtonUrlJ;}} private jQueryObject _uiAddToCompetitionGroupImgRemoveButtonUrlJ;
		public AnchorElement uiQuickBrowserUrl {get {if (_uiQuickBrowserUrl == null) {_uiQuickBrowserUrl = (AnchorElement)Document.GetElementById(clientId + "_uiQuickBrowserUrl");}; return _uiQuickBrowserUrl;}} private AnchorElement _uiQuickBrowserUrl;
		public jQueryObject uiQuickBrowserUrlJ {get {if (_uiQuickBrowserUrlJ == null) {_uiQuickBrowserUrlJ = jQuery.Select("#" + clientId + "_uiQuickBrowserUrl");}; return _uiQuickBrowserUrlJ;}} private jQueryObject _uiQuickBrowserUrlJ;
		public Element uiIsFavouritePhotoToggleButton {get {if (_uiIsFavouritePhotoToggleButton == null) {_uiIsFavouritePhotoToggleButton = (Element)Document.GetElementById(clientId + "_uiIsFavouritePhotoToggleButton");}; return _uiIsFavouritePhotoToggleButton;}} private Element _uiIsFavouritePhotoToggleButton;
		public jQueryObject uiIsFavouritePhotoToggleButtonJ {get {if (_uiIsFavouritePhotoToggleButtonJ == null) {_uiIsFavouritePhotoToggleButtonJ = jQuery.Select("#" + clientId + "_uiIsFavouritePhotoToggleButton");}; return _uiIsFavouritePhotoToggleButtonJ;}} private jQueryObject _uiIsFavouritePhotoToggleButtonJ;//mappings.Add("System.Web.UI.WebControls.LinkButton", ElementGetter("Element"));
		public AnchorElement uiSendLink {get {if (_uiSendLink == null) {_uiSendLink = (AnchorElement)Document.GetElementById(clientId + "_uiSendLink");}; return _uiSendLink;}} private AnchorElement _uiSendLink;
		public jQueryObject uiSendLinkJ {get {if (_uiSendLinkJ == null) {_uiSendLinkJ = jQuery.Select("#" + clientId + "_uiSendLink");}; return _uiSendLinkJ;}} private jQueryObject _uiSendLinkJ;
		public AnchorElement uiReportLink {get {if (_uiReportLink == null) {_uiReportLink = (AnchorElement)Document.GetElementById(clientId + "_uiReportLink");}; return _uiReportLink;}} private AnchorElement _uiReportLink;
		public jQueryObject uiReportLinkJ {get {if (_uiReportLinkJ == null) {_uiReportLinkJ = jQuery.Select("#" + clientId + "_uiReportLink");}; return _uiReportLinkJ;}} private jQueryObject _uiReportLinkJ;
		public Element uiAddToGroupTopPhotosSpan {get {if (_uiAddToGroupTopPhotosSpan == null) {_uiAddToGroupTopPhotosSpan = (Element)Document.GetElementById(clientId + "_uiAddToGroupTopPhotosSpan");}; return _uiAddToGroupTopPhotosSpan;}} private Element _uiAddToGroupTopPhotosSpan;
		public jQueryObject uiAddToGroupTopPhotosSpanJ {get {if (_uiAddToGroupTopPhotosSpanJ == null) {_uiAddToGroupTopPhotosSpanJ = jQuery.Select("#" + clientId + "_uiAddToGroupTopPhotosSpan");}; return _uiAddToGroupTopPhotosSpanJ;}} private jQueryObject _uiAddToGroupTopPhotosSpanJ;//mappings.Add("System.Web.UI.HtmlControls.HtmlGenericControl", ElementGetter("Element"));
		public AnchorElement uiAddToGroupLink {get {if (_uiAddToGroupLink == null) {_uiAddToGroupLink = (AnchorElement)Document.GetElementById(clientId + "_uiAddToGroupLink");}; return _uiAddToGroupLink;}} private AnchorElement _uiAddToGroupLink;
		public jQueryObject uiAddToGroupLinkJ {get {if (_uiAddToGroupLinkJ == null) {_uiAddToGroupLinkJ = jQuery.Select("#" + clientId + "_uiAddToGroupLink");}; return _uiAddToGroupLinkJ;}} private jQueryObject _uiAddToGroupLinkJ;
		public Element uiAddToFrontPageSpan {get {if (_uiAddToFrontPageSpan == null) {_uiAddToFrontPageSpan = (Element)Document.GetElementById(clientId + "_uiAddToFrontPageSpan");}; return _uiAddToFrontPageSpan;}} private Element _uiAddToFrontPageSpan;
		public jQueryObject uiAddToFrontPageSpanJ {get {if (_uiAddToFrontPageSpanJ == null) {_uiAddToFrontPageSpanJ = jQuery.Select("#" + clientId + "_uiAddToFrontPageSpan");}; return _uiAddToFrontPageSpanJ;}} private jQueryObject _uiAddToFrontPageSpanJ;//mappings.Add("System.Web.UI.HtmlControls.HtmlGenericControl", ElementGetter("Element"));
		public Element uiDownloadPhotoLinkHtml {get {if (_uiDownloadPhotoLinkHtml == null) {_uiDownloadPhotoLinkHtml = (Element)Document.GetElementById(clientId + "_uiDownloadPhotoLinkHtml");}; return _uiDownloadPhotoLinkHtml;}} private Element _uiDownloadPhotoLinkHtml;
		public jQueryObject uiDownloadPhotoLinkHtmlJ {get {if (_uiDownloadPhotoLinkHtmlJ == null) {_uiDownloadPhotoLinkHtmlJ = jQuery.Select("#" + clientId + "_uiDownloadPhotoLinkHtml");}; return _uiDownloadPhotoLinkHtmlJ;}} private jQueryObject _uiDownloadPhotoLinkHtmlJ;//mappings.Add("System.Web.UI.HtmlControls.HtmlGenericControl", ElementGetter("Element"));
		public Element uiCopyrightUsrLinkSpan {get {if (_uiCopyrightUsrLinkSpan == null) {_uiCopyrightUsrLinkSpan = (Element)Document.GetElementById(clientId + "_uiCopyrightUsrLinkSpan");}; return _uiCopyrightUsrLinkSpan;}} private Element _uiCopyrightUsrLinkSpan;
		public jQueryObject uiCopyrightUsrLinkSpanJ {get {if (_uiCopyrightUsrLinkSpanJ == null) {_uiCopyrightUsrLinkSpanJ = jQuery.Select("#" + clientId + "_uiCopyrightUsrLinkSpan");}; return _uiCopyrightUsrLinkSpanJ;}} private jQueryObject _uiCopyrightUsrLinkSpanJ;//mappings.Add("System.Web.UI.HtmlControls.HtmlGenericControl", ElementGetter("Element"));
		public Element uiPhotoVideoLabel1 {get {if (_uiPhotoVideoLabel1 == null) {_uiPhotoVideoLabel1 = (Element)Document.GetElementById(clientId + "_uiPhotoVideoLabel1");}; return _uiPhotoVideoLabel1;}} private Element _uiPhotoVideoLabel1;
		public jQueryObject uiPhotoVideoLabel1J {get {if (_uiPhotoVideoLabel1J == null) {_uiPhotoVideoLabel1J = jQuery.Select("#" + clientId + "_uiPhotoVideoLabel1");}; return _uiPhotoVideoLabel1J;}} private jQueryObject _uiPhotoVideoLabel1J;//mappings.Add("System.Web.UI.HtmlControls.HtmlGenericControl", ElementGetter("Element"));
		public InputElement uiLinkToThis {get {if (_uiLinkToThis == null) {_uiLinkToThis = (InputElement)Document.GetElementById(clientId + "_uiLinkToThis");}; return _uiLinkToThis;}} private InputElement _uiLinkToThis;
		public jQueryObject uiLinkToThisJ {get {if (_uiLinkToThisJ == null) {_uiLinkToThisJ = jQuery.Select("#" + clientId + "_uiLinkToThis");}; return _uiLinkToThisJ;}} private jQueryObject _uiLinkToThisJ;
		public Element uiPhotoVideoLabel2 {get {if (_uiPhotoVideoLabel2 == null) {_uiPhotoVideoLabel2 = (Element)Document.GetElementById(clientId + "_uiPhotoVideoLabel2");}; return _uiPhotoVideoLabel2;}} private Element _uiPhotoVideoLabel2;
		public jQueryObject uiPhotoVideoLabel2J {get {if (_uiPhotoVideoLabel2J == null) {_uiPhotoVideoLabel2J = jQuery.Select("#" + clientId + "_uiPhotoVideoLabel2");}; return _uiPhotoVideoLabel2J;}} private jQueryObject _uiPhotoVideoLabel2J;//mappings.Add("System.Web.UI.HtmlControls.HtmlGenericControl", ElementGetter("Element"));
		public InputElement uiEmbedThis {get {if (_uiEmbedThis == null) {_uiEmbedThis = (InputElement)Document.GetElementById(clientId + "_uiEmbedThis");}; return _uiEmbedThis;}} private InputElement _uiEmbedThis;
		public jQueryObject uiEmbedThisJ {get {if (_uiEmbedThisJ == null) {_uiEmbedThisJ = jQuery.Select("#" + clientId + "_uiEmbedThis");}; return _uiEmbedThisJ;}} private jQueryObject _uiEmbedThisJ;
		public Element PhotoOfWeekDiv {get {if (_PhotoOfWeekDiv == null) {_PhotoOfWeekDiv = (Element)Document.GetElementById(clientId + "_PhotoOfWeekDiv");}; return _PhotoOfWeekDiv;}} private Element _PhotoOfWeekDiv;
		public jQueryObject PhotoOfWeekDivJ {get {if (_PhotoOfWeekDivJ == null) {_PhotoOfWeekDivJ = jQuery.Select("#" + clientId + "_PhotoOfWeekDiv");}; return _PhotoOfWeekDivJ;}} private jQueryObject _PhotoOfWeekDivJ;//mappings.Add("System.Web.UI.HtmlControls.HtmlGenericControl", ElementGetter("Element"));
		public Element Div1 {get {if (_Div1 == null) {_Div1 = (Element)Document.GetElementById(clientId + "_Div1");}; return _Div1;}} private Element _Div1;
		public jQueryObject Div1J {get {if (_Div1J == null) {_Div1J = jQuery.Select("#" + clientId + "_Div1");}; return _Div1J;}} private jQueryObject _Div1J;//mappings.Add("System.Web.UI.HtmlControls.HtmlGenericControl", ElementGetter("Element"));
		public Element uiPhotoUsage {get {if (_uiPhotoUsage == null) {_uiPhotoUsage = (Element)Document.GetElementById(clientId + "_uiPhotoUsage");}; return _uiPhotoUsage;}} private Element _uiPhotoUsage;
		public jQueryObject uiPhotoUsageJ {get {if (_uiPhotoUsageJ == null) {_uiPhotoUsageJ = jQuery.Select("#" + clientId + "_uiPhotoUsage");}; return _uiPhotoUsageJ;}} private jQueryObject _uiPhotoUsageJ;//mappings.Add("System.Web.UI.HtmlControls.HtmlGenericControl", ElementGetter("Element"));
		public InputElement uiDisplayMakeFrontPageOptions {get {if (_uiDisplayMakeFrontPageOptions == null) {_uiDisplayMakeFrontPageOptions = (InputElement)Document.GetElementById(clientId + "_uiDisplayMakeFrontPageOptions");}; return _uiDisplayMakeFrontPageOptions;}} private InputElement _uiDisplayMakeFrontPageOptions;
		public jQueryObject uiDisplayMakeFrontPageOptionsJ {get {if (_uiDisplayMakeFrontPageOptionsJ == null) {_uiDisplayMakeFrontPageOptionsJ = jQuery.Select("#" + clientId + "_uiDisplayMakeFrontPageOptions");}; return _uiDisplayMakeFrontPageOptionsJ;}} private jQueryObject _uiDisplayMakeFrontPageOptionsJ;
		public InputElement uiUsrIsLoggedIn {get {if (_uiUsrIsLoggedIn == null) {_uiUsrIsLoggedIn = (InputElement)Document.GetElementById(clientId + "_uiUsrIsLoggedIn");}; return _uiUsrIsLoggedIn;}} private InputElement _uiUsrIsLoggedIn;
		public jQueryObject uiUsrIsLoggedInJ {get {if (_uiUsrIsLoggedInJ == null) {_uiUsrIsLoggedInJ = jQuery.Select("#" + clientId + "_uiUsrIsLoggedIn");}; return _uiUsrIsLoggedInJ;}} private jQueryObject _uiUsrIsLoggedInJ;
		public InputElement uiDisableBanner {get {if (_uiDisableBanner == null) {_uiDisableBanner = (InputElement)Document.GetElementById(clientId + "_uiDisableBanner");}; return _uiDisableBanner;}} private InputElement _uiDisableBanner;
		public jQueryObject uiDisableBannerJ {get {if (_uiDisableBannerJ == null) {_uiDisableBannerJ = jQuery.Select("#" + clientId + "_uiDisableBanner");}; return _uiDisableBannerJ;}} private jQueryObject _uiDisableBannerJ;
		public InputElement uiFirstTimeLoading {get {if (_uiFirstTimeLoading == null) {_uiFirstTimeLoading = (InputElement)Document.GetElementById(clientId + "_uiFirstTimeLoading");}; return _uiFirstTimeLoading;}} private InputElement _uiFirstTimeLoading;
		public jQueryObject uiFirstTimeLoadingJ {get {if (_uiFirstTimeLoadingJ == null) {_uiFirstTimeLoadingJ = jQuery.Select("#" + clientId + "_uiFirstTimeLoading");}; return _uiFirstTimeLoadingJ;}} private jQueryObject _uiFirstTimeLoadingJ;
		public InputElement uiOverlayEnabled {get {if (_uiOverlayEnabled == null) {_uiOverlayEnabled = (InputElement)Document.GetElementById(clientId + "_uiOverlayEnabled");}; return _uiOverlayEnabled;}} private InputElement _uiOverlayEnabled;
		public jQueryObject uiOverlayEnabledJ {get {if (_uiOverlayEnabledJ == null) {_uiOverlayEnabledJ = jQuery.Select("#" + clientId + "_uiOverlayEnabled");}; return _uiOverlayEnabledJ;}} private jQueryObject _uiOverlayEnabledJ;
		public InputElement uiOverlayWidth {get {if (_uiOverlayWidth == null) {_uiOverlayWidth = (InputElement)Document.GetElementById(clientId + "_uiOverlayWidth");}; return _uiOverlayWidth;}} private InputElement _uiOverlayWidth;
		public jQueryObject uiOverlayWidthJ {get {if (_uiOverlayWidthJ == null) {_uiOverlayWidthJ = jQuery.Select("#" + clientId + "_uiOverlayWidth");}; return _uiOverlayWidthJ;}} private jQueryObject _uiOverlayWidthJ;
		public InputElement uiOverlayHeight {get {if (_uiOverlayHeight == null) {_uiOverlayHeight = (InputElement)Document.GetElementById(clientId + "_uiOverlayHeight");}; return _uiOverlayHeight;}} private InputElement _uiOverlayHeight;
		public jQueryObject uiOverlayHeightJ {get {if (_uiOverlayHeightJ == null) {_uiOverlayHeightJ = jQuery.Select("#" + clientId + "_uiOverlayHeight");}; return _uiOverlayHeightJ;}} private jQueryObject _uiOverlayHeightJ;
	}
}