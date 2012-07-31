//mappings.Add("System.Web.UI.HtmlControls.HtmlGenericControl", ElementGetter("Element"));
//mappings.Add("System.Web.UI.WebControls.Calendar", ElementGetter("Element"));
//mappings.Add("System.Web.UI.HtmlControls.HtmlTableRow", ElementGetter("Element"));
//mappings.Add("Spotted.Controls.Pic", ElementGetter("Element"));
//mappings.Add("System.Web.UI.WebControls.DataList", ElementGetter("Element"));
//mappings.Add("System.Web.UI.WebControls.DataGrid", ElementGetter("Element"));
//mappings.Add("Spotted.CustomControls.PromoterIntro", ElementGetter("Element"));
//mappings.Add("Spotted.CustomControls.h1", ElementGetter("Element"));
//mappings.Add("System.Web.UI.WebControls.ValidationSummary", ElementGetter("Element"));
//mappings.Add("System.Web.UI.WebControls.RequiredFieldValidator", ElementGetter("Element"));
//mappings.Add("System.Web.UI.WebControls.CompareValidator", ElementGetter("Element"));
//mappings.Add("System.Web.UI.WebControls.RegularExpressionValidator", ElementGetter("Element"));
//mappings.Add("System.Web.UI.WebControls.CustomValidator", ElementGetter("Element"));
//mappings.Add("System.Web.UI.WebControls.Button", ElementGetter("Element"));
//mappings.Add("Spotted.GenericPage", ElementGetter("Element"));
using System;
using System.Collections.Generic;
using System.Html;
using jQueryApi;
using Js.Library;

namespace Js.Pages.Promoters.Competitions
{
	public partial class View
		 : Js.Pages.Promoters.PromoterUserControl.View
	{
		public string clientId;
		public View(string clientId)
			 : base(clientId)
		{
			this.clientId = clientId;
		}
		public DivElement PanelEdit {get {if (_PanelEdit == null) {_PanelEdit = (DivElement)Document.GetElementById(clientId + "_PanelEdit");}; return _PanelEdit;}} private DivElement _PanelEdit;
		public jQueryObject PanelEditJ {get {if (_PanelEditJ == null) {_PanelEditJ = jQuery.Select("#" + clientId + "_PanelEdit");}; return _PanelEditJ;}} private jQueryObject _PanelEditJ;
		public InputElement EditPrizesFirstNumber {get {if (_EditPrizesFirstNumber == null) {_EditPrizesFirstNumber = (InputElement)Document.GetElementById(clientId + "_EditPrizesFirstNumber");}; return _EditPrizesFirstNumber;}} private InputElement _EditPrizesFirstNumber;
		public jQueryObject EditPrizesFirstNumberJ {get {if (_EditPrizesFirstNumberJ == null) {_EditPrizesFirstNumberJ = jQuery.Select("#" + clientId + "_EditPrizesFirstNumber");}; return _EditPrizesFirstNumberJ;}} private jQueryObject _EditPrizesFirstNumberJ;
		public InputElement EditPrizesFirstDesc {get {if (_EditPrizesFirstDesc == null) {_EditPrizesFirstDesc = (InputElement)Document.GetElementById(clientId + "_EditPrizesFirstDesc");}; return _EditPrizesFirstDesc;}} private InputElement _EditPrizesFirstDesc;
		public jQueryObject EditPrizesFirstDescJ {get {if (_EditPrizesFirstDescJ == null) {_EditPrizesFirstDescJ = jQuery.Select("#" + clientId + "_EditPrizesFirstDesc");}; return _EditPrizesFirstDescJ;}} private jQueryObject _EditPrizesFirstDescJ;
		public InputElement EditPrizesSecondNumber {get {if (_EditPrizesSecondNumber == null) {_EditPrizesSecondNumber = (InputElement)Document.GetElementById(clientId + "_EditPrizesSecondNumber");}; return _EditPrizesSecondNumber;}} private InputElement _EditPrizesSecondNumber;
		public jQueryObject EditPrizesSecondNumberJ {get {if (_EditPrizesSecondNumberJ == null) {_EditPrizesSecondNumberJ = jQuery.Select("#" + clientId + "_EditPrizesSecondNumber");}; return _EditPrizesSecondNumberJ;}} private jQueryObject _EditPrizesSecondNumberJ;
		public InputElement EditPrizesSecondDesc {get {if (_EditPrizesSecondDesc == null) {_EditPrizesSecondDesc = (InputElement)Document.GetElementById(clientId + "_EditPrizesSecondDesc");}; return _EditPrizesSecondDesc;}} private InputElement _EditPrizesSecondDesc;
		public jQueryObject EditPrizesSecondDescJ {get {if (_EditPrizesSecondDescJ == null) {_EditPrizesSecondDescJ = jQuery.Select("#" + clientId + "_EditPrizesSecondDesc");}; return _EditPrizesSecondDescJ;}} private jQueryObject _EditPrizesSecondDescJ;
		public InputElement EditPrizesThirdNumber {get {if (_EditPrizesThirdNumber == null) {_EditPrizesThirdNumber = (InputElement)Document.GetElementById(clientId + "_EditPrizesThirdNumber");}; return _EditPrizesThirdNumber;}} private InputElement _EditPrizesThirdNumber;
		public jQueryObject EditPrizesThirdNumberJ {get {if (_EditPrizesThirdNumberJ == null) {_EditPrizesThirdNumberJ = jQuery.Select("#" + clientId + "_EditPrizesThirdNumber");}; return _EditPrizesThirdNumberJ;}} private jQueryObject _EditPrizesThirdNumberJ;
		public InputElement EditPrizesThirdDesc {get {if (_EditPrizesThirdDesc == null) {_EditPrizesThirdDesc = (InputElement)Document.GetElementById(clientId + "_EditPrizesThirdDesc");}; return _EditPrizesThirdDesc;}} private InputElement _EditPrizesThirdDesc;
		public jQueryObject EditPrizesThirdDescJ {get {if (_EditPrizesThirdDescJ == null) {_EditPrizesThirdDescJ = jQuery.Select("#" + clientId + "_EditPrizesThirdDesc");}; return _EditPrizesThirdDescJ;}} private jQueryObject _EditPrizesThirdDescJ;
		public SelectElement EditPrizesValue {get {if (_EditPrizesValue == null) {_EditPrizesValue = (SelectElement)Document.GetElementById(clientId + "_EditPrizesValue");}; return _EditPrizesValue;}} private SelectElement _EditPrizesValue;
		public jQueryObject EditPrizesValueJ {get {if (_EditPrizesValueJ == null) {_EditPrizesValueJ = jQuery.Select("#" + clientId + "_EditPrizesValue");}; return _EditPrizesValueJ;}} private jQueryObject _EditPrizesValueJ;
		public CheckBoxElement EditLinkNoneRadio {get {if (_EditLinkNoneRadio == null) {_EditLinkNoneRadio = (CheckBoxElement)Document.GetElementById(clientId + "_EditLinkNoneRadio");}; return _EditLinkNoneRadio;}} private CheckBoxElement _EditLinkNoneRadio;
		public jQueryObject EditLinkNoneRadioJ {get {if (_EditLinkNoneRadioJ == null) {_EditLinkNoneRadioJ = jQuery.Select("#" + clientId + "_EditLinkNoneRadio");}; return _EditLinkNoneRadioJ;}} private jQueryObject _EditLinkNoneRadioJ;
		public CheckBoxElement EditLinkEventRadio {get {if (_EditLinkEventRadio == null) {_EditLinkEventRadio = (CheckBoxElement)Document.GetElementById(clientId + "_EditLinkEventRadio");}; return _EditLinkEventRadio;}} private CheckBoxElement _EditLinkEventRadio;
		public jQueryObject EditLinkEventRadioJ {get {if (_EditLinkEventRadioJ == null) {_EditLinkEventRadioJ = jQuery.Select("#" + clientId + "_EditLinkEventRadio");}; return _EditLinkEventRadioJ;}} private jQueryObject _EditLinkEventRadioJ;
		public CheckBoxElement EditLinkBrandRadio {get {if (_EditLinkBrandRadio == null) {_EditLinkBrandRadio = (CheckBoxElement)Document.GetElementById(clientId + "_EditLinkBrandRadio");}; return _EditLinkBrandRadio;}} private CheckBoxElement _EditLinkBrandRadio;
		public jQueryObject EditLinkBrandRadioJ {get {if (_EditLinkBrandRadioJ == null) {_EditLinkBrandRadioJ = jQuery.Select("#" + clientId + "_EditLinkBrandRadio");}; return _EditLinkBrandRadioJ;}} private jQueryObject _EditLinkBrandRadioJ;
		public Element EditLinkEventP {get {if (_EditLinkEventP == null) {_EditLinkEventP = (Element)Document.GetElementById(clientId + "_EditLinkEventP");}; return _EditLinkEventP;}} private Element _EditLinkEventP;
		public jQueryObject EditLinkEventPJ {get {if (_EditLinkEventPJ == null) {_EditLinkEventPJ = jQuery.Select("#" + clientId + "_EditLinkEventP");}; return _EditLinkEventPJ;}} private jQueryObject _EditLinkEventPJ;//mappings.Add("System.Web.UI.HtmlControls.HtmlGenericControl", ElementGetter("Element"));
		public Element EditLinkBrandP {get {if (_EditLinkBrandP == null) {_EditLinkBrandP = (Element)Document.GetElementById(clientId + "_EditLinkBrandP");}; return _EditLinkBrandP;}} private Element _EditLinkBrandP;
		public jQueryObject EditLinkBrandPJ {get {if (_EditLinkBrandPJ == null) {_EditLinkBrandPJ = jQuery.Select("#" + clientId + "_EditLinkBrandP");}; return _EditLinkBrandPJ;}} private jQueryObject _EditLinkBrandPJ;//mappings.Add("System.Web.UI.HtmlControls.HtmlGenericControl", ElementGetter("Element"));
		public SelectElement EditLinkEventDropDown {get {if (_EditLinkEventDropDown == null) {_EditLinkEventDropDown = (SelectElement)Document.GetElementById(clientId + "_EditLinkEventDropDown");}; return _EditLinkEventDropDown;}} private SelectElement _EditLinkEventDropDown;
		public jQueryObject EditLinkEventDropDownJ {get {if (_EditLinkEventDropDownJ == null) {_EditLinkEventDropDownJ = jQuery.Select("#" + clientId + "_EditLinkEventDropDown");}; return _EditLinkEventDropDownJ;}} private jQueryObject _EditLinkEventDropDownJ;
		public SelectElement EditLinkBrandDropDown {get {if (_EditLinkBrandDropDown == null) {_EditLinkBrandDropDown = (SelectElement)Document.GetElementById(clientId + "_EditLinkBrandDropDown");}; return _EditLinkBrandDropDown;}} private SelectElement _EditLinkBrandDropDown;
		public jQueryObject EditLinkBrandDropDownJ {get {if (_EditLinkBrandDropDownJ == null) {_EditLinkBrandDropDownJ = jQuery.Select("#" + clientId + "_EditLinkBrandDropDown");}; return _EditLinkBrandDropDownJ;}} private jQueryObject _EditLinkBrandDropDownJ;
		public AnchorElement EditLinkEventAnchor {get {if (_EditLinkEventAnchor == null) {_EditLinkEventAnchor = (AnchorElement)Document.GetElementById(clientId + "_EditLinkEventAnchor");}; return _EditLinkEventAnchor;}} private AnchorElement _EditLinkEventAnchor;
		public jQueryObject EditLinkEventAnchorJ {get {if (_EditLinkEventAnchorJ == null) {_EditLinkEventAnchorJ = jQuery.Select("#" + clientId + "_EditLinkEventAnchor");}; return _EditLinkEventAnchorJ;}} private jQueryObject _EditLinkEventAnchorJ;
		public AnchorElement EditLinkBrandAnchor {get {if (_EditLinkBrandAnchor == null) {_EditLinkBrandAnchor = (AnchorElement)Document.GetElementById(clientId + "_EditLinkBrandAnchor");}; return _EditLinkBrandAnchor;}} private AnchorElement _EditLinkBrandAnchor;
		public jQueryObject EditLinkBrandAnchorJ {get {if (_EditLinkBrandAnchorJ == null) {_EditLinkBrandAnchorJ = jQuery.Select("#" + clientId + "_EditLinkBrandAnchor");}; return _EditLinkBrandAnchorJ;}} private jQueryObject _EditLinkBrandAnchorJ;
		public InputElement EditQuestion {get {if (_EditQuestion == null) {_EditQuestion = (InputElement)Document.GetElementById(clientId + "_EditQuestion");}; return _EditQuestion;}} private InputElement _EditQuestion;
		public jQueryObject EditQuestionJ {get {if (_EditQuestionJ == null) {_EditQuestionJ = jQuery.Select("#" + clientId + "_EditQuestion");}; return _EditQuestionJ;}} private jQueryObject _EditQuestionJ;
		public InputElement EditAnswer1 {get {if (_EditAnswer1 == null) {_EditAnswer1 = (InputElement)Document.GetElementById(clientId + "_EditAnswer1");}; return _EditAnswer1;}} private InputElement _EditAnswer1;
		public jQueryObject EditAnswer1J {get {if (_EditAnswer1J == null) {_EditAnswer1J = jQuery.Select("#" + clientId + "_EditAnswer1");}; return _EditAnswer1J;}} private jQueryObject _EditAnswer1J;
		public InputElement EditAnswer2 {get {if (_EditAnswer2 == null) {_EditAnswer2 = (InputElement)Document.GetElementById(clientId + "_EditAnswer2");}; return _EditAnswer2;}} private InputElement _EditAnswer2;
		public jQueryObject EditAnswer2J {get {if (_EditAnswer2J == null) {_EditAnswer2J = jQuery.Select("#" + clientId + "_EditAnswer2");}; return _EditAnswer2J;}} private jQueryObject _EditAnswer2J;
		public InputElement EditAnswer3 {get {if (_EditAnswer3 == null) {_EditAnswer3 = (InputElement)Document.GetElementById(clientId + "_EditAnswer3");}; return _EditAnswer3;}} private InputElement _EditAnswer3;
		public jQueryObject EditAnswer3J {get {if (_EditAnswer3J == null) {_EditAnswer3J = jQuery.Select("#" + clientId + "_EditAnswer3");}; return _EditAnswer3J;}} private jQueryObject _EditAnswer3J;
		public CheckBoxElement EditCorrectRadio1 {get {if (_EditCorrectRadio1 == null) {_EditCorrectRadio1 = (CheckBoxElement)Document.GetElementById(clientId + "_EditCorrectRadio1");}; return _EditCorrectRadio1;}} private CheckBoxElement _EditCorrectRadio1;
		public jQueryObject EditCorrectRadio1J {get {if (_EditCorrectRadio1J == null) {_EditCorrectRadio1J = jQuery.Select("#" + clientId + "_EditCorrectRadio1");}; return _EditCorrectRadio1J;}} private jQueryObject _EditCorrectRadio1J;
		public CheckBoxElement EditCorrectRadio2 {get {if (_EditCorrectRadio2 == null) {_EditCorrectRadio2 = (CheckBoxElement)Document.GetElementById(clientId + "_EditCorrectRadio2");}; return _EditCorrectRadio2;}} private CheckBoxElement _EditCorrectRadio2;
		public jQueryObject EditCorrectRadio2J {get {if (_EditCorrectRadio2J == null) {_EditCorrectRadio2J = jQuery.Select("#" + clientId + "_EditCorrectRadio2");}; return _EditCorrectRadio2J;}} private jQueryObject _EditCorrectRadio2J;
		public CheckBoxElement EditCorrectRadio3 {get {if (_EditCorrectRadio3 == null) {_EditCorrectRadio3 = (CheckBoxElement)Document.GetElementById(clientId + "_EditCorrectRadio3");}; return _EditCorrectRadio3;}} private CheckBoxElement _EditCorrectRadio3;
		public jQueryObject EditCorrectRadio3J {get {if (_EditCorrectRadio3J == null) {_EditCorrectRadio3J = jQuery.Select("#" + clientId + "_EditCorrectRadio3");}; return _EditCorrectRadio3J;}} private jQueryObject _EditCorrectRadio3J;
		public SelectElement EditPrizeContact {get {if (_EditPrizeContact == null) {_EditPrizeContact = (SelectElement)Document.GetElementById(clientId + "_EditPrizeContact");}; return _EditPrizeContact;}} private SelectElement _EditPrizeContact;
		public jQueryObject EditPrizeContactJ {get {if (_EditPrizeContactJ == null) {_EditPrizeContactJ = jQuery.Select("#" + clientId + "_EditPrizeContact");}; return _EditPrizeContactJ;}} private jQueryObject _EditPrizeContactJ;
		public Element EditDateClose {get {if (_EditDateClose == null) {_EditDateClose = (Element)Document.GetElementById(clientId + "_EditDateClose");}; return _EditDateClose;}} private Element _EditDateClose;
		public jQueryObject EditDateCloseJ {get {if (_EditDateCloseJ == null) {_EditDateCloseJ = jQuery.Select("#" + clientId + "_EditDateClose");}; return _EditDateCloseJ;}} private jQueryObject _EditDateCloseJ;//mappings.Add("System.Web.UI.WebControls.Calendar", ElementGetter("Element"));
		public Element EditDateStart {get {if (_EditDateStart == null) {_EditDateStart = (Element)Document.GetElementById(clientId + "_EditDateStart");}; return _EditDateStart;}} private Element _EditDateStart;
		public jQueryObject EditDateStartJ {get {if (_EditDateStartJ == null) {_EditDateStartJ = jQuery.Select("#" + clientId + "_EditDateStart");}; return _EditDateStartJ;}} private jQueryObject _EditDateStartJ;//mappings.Add("System.Web.UI.WebControls.Calendar", ElementGetter("Element"));
		public Element EditLinkTr {get {if (_EditLinkTr == null) {_EditLinkTr = (Element)Document.GetElementById(clientId + "_EditLinkTr");}; return _EditLinkTr;}} private Element _EditLinkTr;
		public jQueryObject EditLinkTrJ {get {if (_EditLinkTrJ == null) {_EditLinkTrJ = jQuery.Select("#" + clientId + "_EditLinkTr");}; return _EditLinkTrJ;}} private jQueryObject _EditLinkTrJ;//mappings.Add("System.Web.UI.HtmlControls.HtmlTableRow", ElementGetter("Element"));
		public DivElement PanelPic {get {if (_PanelPic == null) {_PanelPic = (DivElement)Document.GetElementById(clientId + "_PanelPic");}; return _PanelPic;}} private DivElement _PanelPic;
		public jQueryObject PanelPicJ {get {if (_PanelPicJ == null) {_PanelPicJ = jQuery.Select("#" + clientId + "_PanelPic");}; return _PanelPicJ;}} private jQueryObject _PanelPicJ;
		public DivElement PicUploadPanel {get {if (_PicUploadPanel == null) {_PicUploadPanel = (DivElement)Document.GetElementById(clientId + "_PicUploadPanel");}; return _PicUploadPanel;}} private DivElement _PicUploadPanel;
		public jQueryObject PicUploadPanelJ {get {if (_PicUploadPanelJ == null) {_PicUploadPanelJ = jQuery.Select("#" + clientId + "_PicUploadPanel");}; return _PicUploadPanelJ;}} private jQueryObject _PicUploadPanelJ;
		public DivElement PanelPicSavedPanel {get {if (_PanelPicSavedPanel == null) {_PanelPicSavedPanel = (DivElement)Document.GetElementById(clientId + "_PanelPicSavedPanel");}; return _PanelPicSavedPanel;}} private DivElement _PanelPicSavedPanel;
		public jQueryObject PanelPicSavedPanelJ {get {if (_PanelPicSavedPanelJ == null) {_PanelPicSavedPanelJ = jQuery.Select("#" + clientId + "_PanelPicSavedPanel");}; return _PanelPicSavedPanelJ;}} private jQueryObject _PanelPicSavedPanelJ;
		public Element PicUc {get {if (_PicUc == null) {_PicUc = (Element)Document.GetElementById(clientId + "_PicUc");}; return _PicUc;}} private Element _PicUc;
		public jQueryObject PicUcJ {get {if (_PicUcJ == null) {_PicUcJ = jQuery.Select("#" + clientId + "_PicUc");}; return _PicUcJ;}} private jQueryObject _PicUcJ;//mappings.Add("Spotted.Controls.Pic", ElementGetter("Element"));
		public DivElement PicUploadDefaultPanel {get {if (_PicUploadDefaultPanel == null) {_PicUploadDefaultPanel = (DivElement)Document.GetElementById(clientId + "_PicUploadDefaultPanel");}; return _PicUploadDefaultPanel;}} private DivElement _PicUploadDefaultPanel;
		public jQueryObject PicUploadDefaultPanelJ {get {if (_PicUploadDefaultPanelJ == null) {_PicUploadDefaultPanelJ = jQuery.Select("#" + clientId + "_PicUploadDefaultPanel");}; return _PicUploadDefaultPanelJ;}} private jQueryObject _PicUploadDefaultPanelJ;
		public Element PicUploadDefaultDataList {get {if (_PicUploadDefaultDataList == null) {_PicUploadDefaultDataList = (Element)Document.GetElementById(clientId + "_PicUploadDefaultDataList");}; return _PicUploadDefaultDataList;}} private Element _PicUploadDefaultDataList;
		public jQueryObject PicUploadDefaultDataListJ {get {if (_PicUploadDefaultDataListJ == null) {_PicUploadDefaultDataListJ = jQuery.Select("#" + clientId + "_PicUploadDefaultDataList");}; return _PicUploadDefaultDataListJ;}} private jQueryObject _PicUploadDefaultDataListJ;//mappings.Add("System.Web.UI.WebControls.DataList", ElementGetter("Element"));
		public DivElement PanelList {get {if (_PanelList == null) {_PanelList = (DivElement)Document.GetElementById(clientId + "_PanelList");}; return _PanelList;}} private DivElement _PanelList;
		public jQueryObject PanelListJ {get {if (_PanelListJ == null) {_PanelListJ = jQuery.Select("#" + clientId + "_PanelList");}; return _PanelListJ;}} private jQueryObject _PanelListJ;
		public Element CompDataGrid {get {if (_CompDataGrid == null) {_CompDataGrid = (Element)Document.GetElementById(clientId + "_CompDataGrid");}; return _CompDataGrid;}} private Element _CompDataGrid;
		public jQueryObject CompDataGridJ {get {if (_CompDataGridJ == null) {_CompDataGridJ = jQuery.Select("#" + clientId + "_CompDataGrid");}; return _CompDataGridJ;}} private jQueryObject _CompDataGridJ;//mappings.Add("System.Web.UI.WebControls.DataGrid", ElementGetter("Element"));
		public Element PromoterIntro {get {if (_PromoterIntro == null) {_PromoterIntro = (Element)Document.GetElementById(clientId + "_PromoterIntro");}; return _PromoterIntro;}} private Element _PromoterIntro;
		public jQueryObject PromoterIntroJ {get {if (_PromoterIntroJ == null) {_PromoterIntroJ = jQuery.Select("#" + clientId + "_PromoterIntro");}; return _PromoterIntroJ;}} private jQueryObject _PromoterIntroJ;//mappings.Add("Spotted.CustomControls.PromoterIntro", ElementGetter("Element"));
		public DivElement InfoPanel {get {if (_InfoPanel == null) {_InfoPanel = (DivElement)Document.GetElementById(clientId + "_InfoPanel");}; return _InfoPanel;}} private DivElement _InfoPanel;
		public jQueryObject InfoPanelJ {get {if (_InfoPanelJ == null) {_InfoPanelJ = jQuery.Select("#" + clientId + "_InfoPanel");}; return _InfoPanelJ;}} private jQueryObject _InfoPanelJ;
		public Element H14 {get {if (_H14 == null) {_H14 = (Element)Document.GetElementById(clientId + "_H14");}; return _H14;}} private Element _H14;
		public jQueryObject H14J {get {if (_H14J == null) {_H14J = jQuery.Select("#" + clientId + "_H14");}; return _H14J;}} private jQueryObject _H14J;//mappings.Add("Spotted.CustomControls.h1", ElementGetter("Element"));
		public Element Validationsummary1 {get {if (_Validationsummary1 == null) {_Validationsummary1 = (Element)Document.GetElementById(clientId + "_Validationsummary1");}; return _Validationsummary1;}} private Element _Validationsummary1;
		public jQueryObject Validationsummary1J {get {if (_Validationsummary1J == null) {_Validationsummary1J = jQuery.Select("#" + clientId + "_Validationsummary1");}; return _Validationsummary1J;}} private jQueryObject _Validationsummary1J;//mappings.Add("System.Web.UI.WebControls.ValidationSummary", ElementGetter("Element"));
		public Element RequiredFieldValidator1 {get {if (_RequiredFieldValidator1 == null) {_RequiredFieldValidator1 = (Element)Document.GetElementById(clientId + "_RequiredFieldValidator1");}; return _RequiredFieldValidator1;}} private Element _RequiredFieldValidator1;
		public jQueryObject RequiredFieldValidator1J {get {if (_RequiredFieldValidator1J == null) {_RequiredFieldValidator1J = jQuery.Select("#" + clientId + "_RequiredFieldValidator1");}; return _RequiredFieldValidator1J;}} private jQueryObject _RequiredFieldValidator1J;//mappings.Add("System.Web.UI.WebControls.RequiredFieldValidator", ElementGetter("Element"));
		public Element CompareValidator1 {get {if (_CompareValidator1 == null) {_CompareValidator1 = (Element)Document.GetElementById(clientId + "_CompareValidator1");}; return _CompareValidator1;}} private Element _CompareValidator1;
		public jQueryObject CompareValidator1J {get {if (_CompareValidator1J == null) {_CompareValidator1J = jQuery.Select("#" + clientId + "_CompareValidator1");}; return _CompareValidator1J;}} private jQueryObject _CompareValidator1J;//mappings.Add("System.Web.UI.WebControls.CompareValidator", ElementGetter("Element"));
		public Element RequiredFieldValidator2 {get {if (_RequiredFieldValidator2 == null) {_RequiredFieldValidator2 = (Element)Document.GetElementById(clientId + "_RequiredFieldValidator2");}; return _RequiredFieldValidator2;}} private Element _RequiredFieldValidator2;
		public jQueryObject RequiredFieldValidator2J {get {if (_RequiredFieldValidator2J == null) {_RequiredFieldValidator2J = jQuery.Select("#" + clientId + "_RequiredFieldValidator2");}; return _RequiredFieldValidator2J;}} private jQueryObject _RequiredFieldValidator2J;//mappings.Add("System.Web.UI.WebControls.RequiredFieldValidator", ElementGetter("Element"));
		public Element RegularExpressionValidator1 {get {if (_RegularExpressionValidator1 == null) {_RegularExpressionValidator1 = (Element)Document.GetElementById(clientId + "_RegularExpressionValidator1");}; return _RegularExpressionValidator1;}} private Element _RegularExpressionValidator1;
		public jQueryObject RegularExpressionValidator1J {get {if (_RegularExpressionValidator1J == null) {_RegularExpressionValidator1J = jQuery.Select("#" + clientId + "_RegularExpressionValidator1");}; return _RegularExpressionValidator1J;}} private jQueryObject _RegularExpressionValidator1J;//mappings.Add("System.Web.UI.WebControls.RegularExpressionValidator", ElementGetter("Element"));
		public Element CompareValidator2 {get {if (_CompareValidator2 == null) {_CompareValidator2 = (Element)Document.GetElementById(clientId + "_CompareValidator2");}; return _CompareValidator2;}} private Element _CompareValidator2;
		public jQueryObject CompareValidator2J {get {if (_CompareValidator2J == null) {_CompareValidator2J = jQuery.Select("#" + clientId + "_CompareValidator2");}; return _CompareValidator2J;}} private jQueryObject _CompareValidator2J;//mappings.Add("System.Web.UI.WebControls.CompareValidator", ElementGetter("Element"));
		public Element RegularExpressionValidator2 {get {if (_RegularExpressionValidator2 == null) {_RegularExpressionValidator2 = (Element)Document.GetElementById(clientId + "_RegularExpressionValidator2");}; return _RegularExpressionValidator2;}} private Element _RegularExpressionValidator2;
		public jQueryObject RegularExpressionValidator2J {get {if (_RegularExpressionValidator2J == null) {_RegularExpressionValidator2J = jQuery.Select("#" + clientId + "_RegularExpressionValidator2");}; return _RegularExpressionValidator2J;}} private jQueryObject _RegularExpressionValidator2J;//mappings.Add("System.Web.UI.WebControls.RegularExpressionValidator", ElementGetter("Element"));
		public Element CompareValidator3 {get {if (_CompareValidator3 == null) {_CompareValidator3 = (Element)Document.GetElementById(clientId + "_CompareValidator3");}; return _CompareValidator3;}} private Element _CompareValidator3;
		public jQueryObject CompareValidator3J {get {if (_CompareValidator3J == null) {_CompareValidator3J = jQuery.Select("#" + clientId + "_CompareValidator3");}; return _CompareValidator3J;}} private jQueryObject _CompareValidator3J;//mappings.Add("System.Web.UI.WebControls.CompareValidator", ElementGetter("Element"));
		public Element RegularExpressionValidator3 {get {if (_RegularExpressionValidator3 == null) {_RegularExpressionValidator3 = (Element)Document.GetElementById(clientId + "_RegularExpressionValidator3");}; return _RegularExpressionValidator3;}} private Element _RegularExpressionValidator3;
		public jQueryObject RegularExpressionValidator3J {get {if (_RegularExpressionValidator3J == null) {_RegularExpressionValidator3J = jQuery.Select("#" + clientId + "_RegularExpressionValidator3");}; return _RegularExpressionValidator3J;}} private jQueryObject _RegularExpressionValidator3J;//mappings.Add("System.Web.UI.WebControls.RegularExpressionValidator", ElementGetter("Element"));
		public Element RequiredFieldValidator3 {get {if (_RequiredFieldValidator3 == null) {_RequiredFieldValidator3 = (Element)Document.GetElementById(clientId + "_RequiredFieldValidator3");}; return _RequiredFieldValidator3;}} private Element _RequiredFieldValidator3;
		public jQueryObject RequiredFieldValidator3J {get {if (_RequiredFieldValidator3J == null) {_RequiredFieldValidator3J = jQuery.Select("#" + clientId + "_RequiredFieldValidator3");}; return _RequiredFieldValidator3J;}} private jQueryObject _RequiredFieldValidator3J;//mappings.Add("System.Web.UI.WebControls.RequiredFieldValidator", ElementGetter("Element"));
		public Element RegularExpressionValidator4 {get {if (_RegularExpressionValidator4 == null) {_RegularExpressionValidator4 = (Element)Document.GetElementById(clientId + "_RegularExpressionValidator4");}; return _RegularExpressionValidator4;}} private Element _RegularExpressionValidator4;
		public jQueryObject RegularExpressionValidator4J {get {if (_RegularExpressionValidator4J == null) {_RegularExpressionValidator4J = jQuery.Select("#" + clientId + "_RegularExpressionValidator4");}; return _RegularExpressionValidator4J;}} private jQueryObject _RegularExpressionValidator4J;//mappings.Add("System.Web.UI.WebControls.RegularExpressionValidator", ElementGetter("Element"));
		public Js.Controls.Html.Controller EditSponsorDescriptionHtml {get {return (Js.Controls.Html.Controller) Script.Eval(clientId + "_EditSponsorDescriptionHtmlController");}}
		public Element CustomValidator1 {get {if (_CustomValidator1 == null) {_CustomValidator1 = (Element)Document.GetElementById(clientId + "_CustomValidator1");}; return _CustomValidator1;}} private Element _CustomValidator1;
		public jQueryObject CustomValidator1J {get {if (_CustomValidator1J == null) {_CustomValidator1J = jQuery.Select("#" + clientId + "_CustomValidator1");}; return _CustomValidator1J;}} private jQueryObject _CustomValidator1J;//mappings.Add("System.Web.UI.WebControls.CustomValidator", ElementGetter("Element"));
		public Element RequiredFieldValidator4 {get {if (_RequiredFieldValidator4 == null) {_RequiredFieldValidator4 = (Element)Document.GetElementById(clientId + "_RequiredFieldValidator4");}; return _RequiredFieldValidator4;}} private Element _RequiredFieldValidator4;
		public jQueryObject RequiredFieldValidator4J {get {if (_RequiredFieldValidator4J == null) {_RequiredFieldValidator4J = jQuery.Select("#" + clientId + "_RequiredFieldValidator4");}; return _RequiredFieldValidator4J;}} private jQueryObject _RequiredFieldValidator4J;//mappings.Add("System.Web.UI.WebControls.RequiredFieldValidator", ElementGetter("Element"));
		public Element RegularExpressionValidator5 {get {if (_RegularExpressionValidator5 == null) {_RegularExpressionValidator5 = (Element)Document.GetElementById(clientId + "_RegularExpressionValidator5");}; return _RegularExpressionValidator5;}} private Element _RegularExpressionValidator5;
		public jQueryObject RegularExpressionValidator5J {get {if (_RegularExpressionValidator5J == null) {_RegularExpressionValidator5J = jQuery.Select("#" + clientId + "_RegularExpressionValidator5");}; return _RegularExpressionValidator5J;}} private jQueryObject _RegularExpressionValidator5J;//mappings.Add("System.Web.UI.WebControls.RegularExpressionValidator", ElementGetter("Element"));
		public Element RequiredFieldValidator5 {get {if (_RequiredFieldValidator5 == null) {_RequiredFieldValidator5 = (Element)Document.GetElementById(clientId + "_RequiredFieldValidator5");}; return _RequiredFieldValidator5;}} private Element _RequiredFieldValidator5;
		public jQueryObject RequiredFieldValidator5J {get {if (_RequiredFieldValidator5J == null) {_RequiredFieldValidator5J = jQuery.Select("#" + clientId + "_RequiredFieldValidator5");}; return _RequiredFieldValidator5J;}} private jQueryObject _RequiredFieldValidator5J;//mappings.Add("System.Web.UI.WebControls.RequiredFieldValidator", ElementGetter("Element"));
		public Element RegularExpressionValidator6 {get {if (_RegularExpressionValidator6 == null) {_RegularExpressionValidator6 = (Element)Document.GetElementById(clientId + "_RegularExpressionValidator6");}; return _RegularExpressionValidator6;}} private Element _RegularExpressionValidator6;
		public jQueryObject RegularExpressionValidator6J {get {if (_RegularExpressionValidator6J == null) {_RegularExpressionValidator6J = jQuery.Select("#" + clientId + "_RegularExpressionValidator6");}; return _RegularExpressionValidator6J;}} private jQueryObject _RegularExpressionValidator6J;//mappings.Add("System.Web.UI.WebControls.RegularExpressionValidator", ElementGetter("Element"));
		public Element RequiredFieldValidator6 {get {if (_RequiredFieldValidator6 == null) {_RequiredFieldValidator6 = (Element)Document.GetElementById(clientId + "_RequiredFieldValidator6");}; return _RequiredFieldValidator6;}} private Element _RequiredFieldValidator6;
		public jQueryObject RequiredFieldValidator6J {get {if (_RequiredFieldValidator6J == null) {_RequiredFieldValidator6J = jQuery.Select("#" + clientId + "_RequiredFieldValidator6");}; return _RequiredFieldValidator6J;}} private jQueryObject _RequiredFieldValidator6J;//mappings.Add("System.Web.UI.WebControls.RequiredFieldValidator", ElementGetter("Element"));
		public Element RegularExpressionValidator7 {get {if (_RegularExpressionValidator7 == null) {_RegularExpressionValidator7 = (Element)Document.GetElementById(clientId + "_RegularExpressionValidator7");}; return _RegularExpressionValidator7;}} private Element _RegularExpressionValidator7;
		public jQueryObject RegularExpressionValidator7J {get {if (_RegularExpressionValidator7J == null) {_RegularExpressionValidator7J = jQuery.Select("#" + clientId + "_RegularExpressionValidator7");}; return _RegularExpressionValidator7J;}} private jQueryObject _RegularExpressionValidator7J;//mappings.Add("System.Web.UI.WebControls.RegularExpressionValidator", ElementGetter("Element"));
		public Element RequiredFieldValidator7 {get {if (_RequiredFieldValidator7 == null) {_RequiredFieldValidator7 = (Element)Document.GetElementById(clientId + "_RequiredFieldValidator7");}; return _RequiredFieldValidator7;}} private Element _RequiredFieldValidator7;
		public jQueryObject RequiredFieldValidator7J {get {if (_RequiredFieldValidator7J == null) {_RequiredFieldValidator7J = jQuery.Select("#" + clientId + "_RequiredFieldValidator7");}; return _RequiredFieldValidator7J;}} private jQueryObject _RequiredFieldValidator7J;//mappings.Add("System.Web.UI.WebControls.RequiredFieldValidator", ElementGetter("Element"));
		public Element RegularExpressionValidator8 {get {if (_RegularExpressionValidator8 == null) {_RegularExpressionValidator8 = (Element)Document.GetElementById(clientId + "_RegularExpressionValidator8");}; return _RegularExpressionValidator8;}} private Element _RegularExpressionValidator8;
		public jQueryObject RegularExpressionValidator8J {get {if (_RegularExpressionValidator8J == null) {_RegularExpressionValidator8J = jQuery.Select("#" + clientId + "_RegularExpressionValidator8");}; return _RegularExpressionValidator8J;}} private jQueryObject _RegularExpressionValidator8J;//mappings.Add("System.Web.UI.WebControls.RegularExpressionValidator", ElementGetter("Element"));
		public Element CustomValidator2 {get {if (_CustomValidator2 == null) {_CustomValidator2 = (Element)Document.GetElementById(clientId + "_CustomValidator2");}; return _CustomValidator2;}} private Element _CustomValidator2;
		public jQueryObject CustomValidator2J {get {if (_CustomValidator2J == null) {_CustomValidator2J = jQuery.Select("#" + clientId + "_CustomValidator2");}; return _CustomValidator2J;}} private jQueryObject _CustomValidator2J;//mappings.Add("System.Web.UI.WebControls.CustomValidator", ElementGetter("Element"));
		public Element Customvalidator3 {get {if (_Customvalidator3 == null) {_Customvalidator3 = (Element)Document.GetElementById(clientId + "_Customvalidator3");}; return _Customvalidator3;}} private Element _Customvalidator3;
		public jQueryObject Customvalidator3J {get {if (_Customvalidator3J == null) {_Customvalidator3J = jQuery.Select("#" + clientId + "_Customvalidator3");}; return _Customvalidator3J;}} private jQueryObject _Customvalidator3J;//mappings.Add("System.Web.UI.WebControls.CustomValidator", ElementGetter("Element"));
		public Element Customvalidator4 {get {if (_Customvalidator4 == null) {_Customvalidator4 = (Element)Document.GetElementById(clientId + "_Customvalidator4");}; return _Customvalidator4;}} private Element _Customvalidator4;
		public jQueryObject Customvalidator4J {get {if (_Customvalidator4J == null) {_Customvalidator4J = jQuery.Select("#" + clientId + "_Customvalidator4");}; return _Customvalidator4J;}} private jQueryObject _Customvalidator4J;//mappings.Add("System.Web.UI.WebControls.CustomValidator", ElementGetter("Element"));
		public Element Customvalidator5 {get {if (_Customvalidator5 == null) {_Customvalidator5 = (Element)Document.GetElementById(clientId + "_Customvalidator5");}; return _Customvalidator5;}} private Element _Customvalidator5;
		public jQueryObject Customvalidator5J {get {if (_Customvalidator5J == null) {_Customvalidator5J = jQuery.Select("#" + clientId + "_Customvalidator5");}; return _Customvalidator5J;}} private jQueryObject _Customvalidator5J;//mappings.Add("System.Web.UI.WebControls.CustomValidator", ElementGetter("Element"));
		public Element Customvalidator6 {get {if (_Customvalidator6 == null) {_Customvalidator6 = (Element)Document.GetElementById(clientId + "_Customvalidator6");}; return _Customvalidator6;}} private Element _Customvalidator6;
		public jQueryObject Customvalidator6J {get {if (_Customvalidator6J == null) {_Customvalidator6J = jQuery.Select("#" + clientId + "_Customvalidator6");}; return _Customvalidator6J;}} private jQueryObject _Customvalidator6J;//mappings.Add("System.Web.UI.WebControls.CustomValidator", ElementGetter("Element"));
		public Element CustomValidator7 {get {if (_CustomValidator7 == null) {_CustomValidator7 = (Element)Document.GetElementById(clientId + "_CustomValidator7");}; return _CustomValidator7;}} private Element _CustomValidator7;
		public jQueryObject CustomValidator7J {get {if (_CustomValidator7J == null) {_CustomValidator7J = jQuery.Select("#" + clientId + "_CustomValidator7");}; return _CustomValidator7J;}} private jQueryObject _CustomValidator7J;//mappings.Add("System.Web.UI.WebControls.CustomValidator", ElementGetter("Element"));
		public InputElement Button2 {get {if (_Button2 == null) {_Button2 = (InputElement)Document.GetElementById(clientId + "_Button2");}; return _Button2;}} private InputElement _Button2;
		public jQueryObject Button2J {get {if (_Button2J == null) {_Button2J = jQuery.Select("#" + clientId + "_Button2");}; return _Button2J;}} private jQueryObject _Button2J;
		public Element Button3 {get {if (_Button3 == null) {_Button3 = (Element)Document.GetElementById(clientId + "_Button3");}; return _Button3;}} private Element _Button3;
		public jQueryObject Button3J {get {if (_Button3J == null) {_Button3J = jQuery.Select("#" + clientId + "_Button3");}; return _Button3J;}} private jQueryObject _Button3J;//mappings.Add("System.Web.UI.WebControls.Button", ElementGetter("Element"));
		public Element Validationsummary2 {get {if (_Validationsummary2 == null) {_Validationsummary2 = (Element)Document.GetElementById(clientId + "_Validationsummary2");}; return _Validationsummary2;}} private Element _Validationsummary2;
		public jQueryObject Validationsummary2J {get {if (_Validationsummary2J == null) {_Validationsummary2J = jQuery.Select("#" + clientId + "_Validationsummary2");}; return _Validationsummary2J;}} private jQueryObject _Validationsummary2J;//mappings.Add("System.Web.UI.WebControls.ValidationSummary", ElementGetter("Element"));
		public Element H12 {get {if (_H12 == null) {_H12 = (Element)Document.GetElementById(clientId + "_H12");}; return _H12;}} private Element _H12;
		public jQueryObject H12J {get {if (_H12J == null) {_H12J = jQuery.Select("#" + clientId + "_H12");}; return _H12J;}} private jQueryObject _H12J;//mappings.Add("Spotted.CustomControls.h1", ElementGetter("Element"));
		public Element H11 {get {if (_H11 == null) {_H11 = (Element)Document.GetElementById(clientId + "_H11");}; return _H11;}} private Element _H11;
		public jQueryObject H11J {get {if (_H11J == null) {_H11J = jQuery.Select("#" + clientId + "_H11");}; return _H11J;}} private jQueryObject _H11J;//mappings.Add("Spotted.CustomControls.h1", ElementGetter("Element"));
		public Element GenericContainerPage {get {if (_GenericContainerPage == null) {_GenericContainerPage = (Element)Document.GetElementById(clientId + "_GenericContainerPage");}; return _GenericContainerPage;}} private Element _GenericContainerPage;
		public jQueryObject GenericContainerPageJ {get {if (_GenericContainerPageJ == null) {_GenericContainerPageJ = jQuery.Select("#" + clientId + "_GenericContainerPage");}; return _GenericContainerPageJ;}} private jQueryObject _GenericContainerPageJ;//mappings.Add("Spotted.GenericPage", ElementGetter("Element"));
	}
}