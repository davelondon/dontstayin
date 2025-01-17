﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.239
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

// 
// This source code was auto-generated by Microsoft.VSDesigner, Version 4.0.30319.239.
// 
#pragma warning disable 1591

namespace Spotted.com.royalmail.epro.www1 {
    using System;
    using System.Web.Services;
    using System.Diagnostics;
    using System.Web.Services.Protocols;
    using System.ComponentModel;
    using System.Xml.Serialization;
    
    
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Web.Services", "4.0.30319.1")]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Web.Services.WebServiceBindingAttribute(Name="EProExportServiceSoap", Namespace="urn:schemas-royalmail-com/webservice/epro")]
    [System.Xml.Serialization.XmlIncludeAttribute(typeof(ExportParameter))]
    public partial class EProExportService : System.Web.Services.Protocols.SoapHttpClientProtocol {
        
        private Authentication authenticationValueField;
        
        private ClientAuthentication clientAuthenticationValueField;
        
        private System.Threading.SendOrPostCallback GetExportListOperationCompleted;
        
        private System.Threading.SendOrPostCallback GenerateExportOperationCompleted;
        
        private bool useDefaultCredentialsSetExplicitly;
        
        /// <remarks/>
        public EProExportService() {
            this.Url = global::Spotted.Properties.Settings.Default.Spotted_com_royalmail_epro_www1_EProExportService;
            if ((this.IsLocalFileSystemWebService(this.Url) == true)) {
                this.UseDefaultCredentials = true;
                this.useDefaultCredentialsSetExplicitly = false;
            }
            else {
                this.useDefaultCredentialsSetExplicitly = true;
            }
        }
        
        public Authentication AuthenticationValue {
            get {
                return this.authenticationValueField;
            }
            set {
                this.authenticationValueField = value;
            }
        }
        
        public ClientAuthentication ClientAuthenticationValue {
            get {
                return this.clientAuthenticationValueField;
            }
            set {
                this.clientAuthenticationValueField = value;
            }
        }
        
        public new string Url {
            get {
                return base.Url;
            }
            set {
                if ((((this.IsLocalFileSystemWebService(base.Url) == true) 
                            && (this.useDefaultCredentialsSetExplicitly == false)) 
                            && (this.IsLocalFileSystemWebService(value) == false))) {
                    base.UseDefaultCredentials = false;
                }
                base.Url = value;
            }
        }
        
        public new bool UseDefaultCredentials {
            get {
                return base.UseDefaultCredentials;
            }
            set {
                base.UseDefaultCredentials = value;
                this.useDefaultCredentialsSetExplicitly = true;
            }
        }
        
        /// <remarks/>
        public event GetExportListCompletedEventHandler GetExportListCompleted;
        
        /// <remarks/>
        public event GenerateExportCompletedEventHandler GenerateExportCompleted;
        
        /// <remarks/>
        [System.Web.Services.Protocols.SoapHeaderAttribute("ClientAuthenticationValue")]
        [System.Web.Services.Protocols.SoapHeaderAttribute("AuthenticationValue")]
        [System.Web.Services.Protocols.SoapDocumentMethodAttribute("urn:schemas-royalmail-com/webservice/epro/GetExportList", Use=System.Web.Services.Description.SoapBindingUse.Literal, ParameterStyle=System.Web.Services.Protocols.SoapParameterStyle.Bare)]
        [return: System.Xml.Serialization.XmlArrayAttribute("ExportList", Namespace="urn:schemas-royalmail-com/webservice/epro")]
        [return: System.Xml.Serialization.XmlArrayItemAttribute(IsNullable=false)]
        public Export[] GetExportList() {
            object[] results = this.Invoke("GetExportList", new object[0]);
            return ((Export[])(results[0]));
        }
        
        /// <remarks/>
        public void GetExportListAsync() {
            this.GetExportListAsync(null);
        }
        
        /// <remarks/>
        public void GetExportListAsync(object userState) {
            if ((this.GetExportListOperationCompleted == null)) {
                this.GetExportListOperationCompleted = new System.Threading.SendOrPostCallback(this.OnGetExportListOperationCompleted);
            }
            this.InvokeAsync("GetExportList", new object[0], this.GetExportListOperationCompleted, userState);
        }
        
        private void OnGetExportListOperationCompleted(object arg) {
            if ((this.GetExportListCompleted != null)) {
                System.Web.Services.Protocols.InvokeCompletedEventArgs invokeArgs = ((System.Web.Services.Protocols.InvokeCompletedEventArgs)(arg));
                this.GetExportListCompleted(this, new GetExportListCompletedEventArgs(invokeArgs.Results, invokeArgs.Error, invokeArgs.Cancelled, invokeArgs.UserState));
            }
        }
        
        /// <remarks/>
        [System.Web.Services.Protocols.SoapHeaderAttribute("ClientAuthenticationValue")]
        [System.Web.Services.Protocols.SoapHeaderAttribute("AuthenticationValue")]
        [System.Web.Services.Protocols.SoapDocumentMethodAttribute("urn:schemas-royalmail-com/webservice/epro/GenerateExport", Use=System.Web.Services.Description.SoapBindingUse.Literal, ParameterStyle=System.Web.Services.Protocols.SoapParameterStyle.Bare)]
        [return: System.Xml.Serialization.XmlElementAttribute(Namespace="urn:schemas-royalmail-com/webservice/epro")]
        public GenerateExportOutput GenerateExport([System.Xml.Serialization.XmlElementAttribute(Namespace="urn:schemas-royalmail-com/webservice/epro")] GenerateExportInput GenerateExportRequest) {
            object[] results = this.Invoke("GenerateExport", new object[] {
                        GenerateExportRequest});
            return ((GenerateExportOutput)(results[0]));
        }
        
        /// <remarks/>
        public void GenerateExportAsync(GenerateExportInput GenerateExportRequest) {
            this.GenerateExportAsync(GenerateExportRequest, null);
        }
        
        /// <remarks/>
        public void GenerateExportAsync(GenerateExportInput GenerateExportRequest, object userState) {
            if ((this.GenerateExportOperationCompleted == null)) {
                this.GenerateExportOperationCompleted = new System.Threading.SendOrPostCallback(this.OnGenerateExportOperationCompleted);
            }
            this.InvokeAsync("GenerateExport", new object[] {
                        GenerateExportRequest}, this.GenerateExportOperationCompleted, userState);
        }
        
        private void OnGenerateExportOperationCompleted(object arg) {
            if ((this.GenerateExportCompleted != null)) {
                System.Web.Services.Protocols.InvokeCompletedEventArgs invokeArgs = ((System.Web.Services.Protocols.InvokeCompletedEventArgs)(arg));
                this.GenerateExportCompleted(this, new GenerateExportCompletedEventArgs(invokeArgs.Results, invokeArgs.Error, invokeArgs.Cancelled, invokeArgs.UserState));
            }
        }
        
        /// <remarks/>
        public new void CancelAsync(object userState) {
            base.CancelAsync(userState);
        }
        
        private bool IsLocalFileSystemWebService(string url) {
            if (((url == null) 
                        || (url == string.Empty))) {
                return false;
            }
            System.Uri wsUri = new System.Uri(url);
            if (((wsUri.Port >= 1024) 
                        && (string.Compare(wsUri.Host, "localHost", System.StringComparison.OrdinalIgnoreCase) == 0))) {
                return true;
            }
            return false;
        }
    }
    
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Xml", "4.0.30319.233")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(Namespace="urn:schemas-royalmail-com/webservice/epro")]
    [System.Xml.Serialization.XmlRootAttribute(Namespace="urn:schemas-royalmail-com/webservice/epro", IsNullable=false)]
    public partial class ClientAuthentication : System.Web.Services.Protocols.SoapHeader {
        
        private string usernameField;
        
        private string passwordField;
        
        private int accessCodeField;
        
        private bool accessCodeFieldSpecified;
        
        private string accountField;
        
        private string pinField;
        
        private string versionField;
        
        /// <remarks/>
        public string Username {
            get {
                return this.usernameField;
            }
            set {
                this.usernameField = value;
            }
        }
        
        /// <remarks/>
        public string Password {
            get {
                return this.passwordField;
            }
            set {
                this.passwordField = value;
            }
        }
        
        /// <remarks/>
        public int AccessCode {
            get {
                return this.accessCodeField;
            }
            set {
                this.accessCodeField = value;
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlIgnoreAttribute()]
        public bool AccessCodeSpecified {
            get {
                return this.accessCodeFieldSpecified;
            }
            set {
                this.accessCodeFieldSpecified = value;
            }
        }
        
        /// <remarks/>
        public string Account {
            get {
                return this.accountField;
            }
            set {
                this.accountField = value;
            }
        }
        
        /// <remarks/>
        public string Pin {
            get {
                return this.pinField;
            }
            set {
                this.pinField = value;
            }
        }
        
        /// <remarks/>
        public string Version {
            get {
                return this.versionField;
            }
            set {
                this.versionField = value;
            }
        }
    }
    
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Xml", "4.0.30319.233")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(Namespace="urn:schemas-royalmail-com/webservice/epro")]
    public partial class PossibleValue {
        
        private string valueField;
        
        private string descriptionField;
        
        /// <remarks/>
        [System.Xml.Serialization.XmlAttributeAttribute()]
        public string Value {
            get {
                return this.valueField;
            }
            set {
                this.valueField = value;
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlAttributeAttribute()]
        public string Description {
            get {
                return this.descriptionField;
            }
            set {
                this.descriptionField = value;
            }
        }
    }
    
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Xml", "4.0.30319.233")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(Namespace="urn:schemas-royalmail-com/webservice/epro")]
    public partial class RequiredParameter {
        
        private PossibleValue[] possibleValuesField;
        
        private string nameField;
        
        private string displayNameField;
        
        private ParameterTypes parameterTypeField;
        
        /// <remarks/>
        [System.Xml.Serialization.XmlArrayItemAttribute(IsNullable=false)]
        public PossibleValue[] PossibleValues {
            get {
                return this.possibleValuesField;
            }
            set {
                this.possibleValuesField = value;
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlAttributeAttribute()]
        public string Name {
            get {
                return this.nameField;
            }
            set {
                this.nameField = value;
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlAttributeAttribute()]
        public string DisplayName {
            get {
                return this.displayNameField;
            }
            set {
                this.displayNameField = value;
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlAttributeAttribute()]
        public ParameterTypes ParameterType {
            get {
                return this.parameterTypeField;
            }
            set {
                this.parameterTypeField = value;
            }
        }
    }
    
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Xml", "4.0.30319.233")]
    [System.SerializableAttribute()]
    [System.Xml.Serialization.XmlTypeAttribute(Namespace="urn:schemas-royalmail-com/webservice/epro")]
    public enum ParameterTypes {
        
        /// <remarks/>
        DateParameter,
        
        /// <remarks/>
        DateTimeParameter,
        
        /// <remarks/>
        TextParameter,
        
        /// <remarks/>
        MultiSelectParameter,
        
        /// <remarks/>
        SingleSelectParameter,
        
        /// <remarks/>
        BooleanParameter,
        
        /// <remarks/>
        DirectValueParameter,
    }
    
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Xml", "4.0.30319.233")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(Namespace="urn:schemas-royalmail-com/webservice/epro")]
    public partial class GenerateExportOutput {
        
        private System.Xml.XmlElement exportDataField;
        
        private RequiredParameter[] extraParametersRequiredField;
        
        /// <remarks/>
        [System.Xml.Serialization.XmlAnyElementAttribute(Name="ExportData", Namespace="urn:schemas-royalmail-com/webservice/epro")]
        public System.Xml.XmlElement ExportData {
            get {
                return this.exportDataField;
            }
            set {
                this.exportDataField = value;
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlArrayItemAttribute(IsNullable=false)]
        public RequiredParameter[] ExtraParametersRequired {
            get {
                return this.extraParametersRequiredField;
            }
            set {
                this.extraParametersRequiredField = value;
            }
        }
    }
    
    /// <remarks/>
    [System.Xml.Serialization.XmlIncludeAttribute(typeof(TextParameter))]
    [System.Xml.Serialization.XmlIncludeAttribute(typeof(BooleanParameter))]
    [System.Xml.Serialization.XmlIncludeAttribute(typeof(DateTimeParameter))]
    [System.Xml.Serialization.XmlIncludeAttribute(typeof(MultiSelectParameter))]
    [System.Xml.Serialization.XmlIncludeAttribute(typeof(SingleSelectParameter))]
    [System.Xml.Serialization.XmlIncludeAttribute(typeof(DateParameter))]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Xml", "4.0.30319.233")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(Namespace="urn:schemas-royalmail-com/webservice/epro")]
    public abstract partial class ExportParameter {
        
        private string nameField;
        
        /// <remarks/>
        [System.Xml.Serialization.XmlAttributeAttribute()]
        public string Name {
            get {
                return this.nameField;
            }
            set {
                this.nameField = value;
            }
        }
    }
    
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Xml", "4.0.30319.233")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(Namespace="urn:schemas-royalmail-com/webservice/epro")]
    public partial class TextParameter : ExportParameter {
        
        private string valueField;
        
        /// <remarks/>
        [System.Xml.Serialization.XmlAttributeAttribute()]
        public string Value {
            get {
                return this.valueField;
            }
            set {
                this.valueField = value;
            }
        }
    }
    
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Xml", "4.0.30319.233")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(Namespace="urn:schemas-royalmail-com/webservice/epro")]
    public partial class BooleanParameter : ExportParameter {
        
        private bool valueField;
        
        /// <remarks/>
        [System.Xml.Serialization.XmlAttributeAttribute()]
        public bool Value {
            get {
                return this.valueField;
            }
            set {
                this.valueField = value;
            }
        }
    }
    
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Xml", "4.0.30319.233")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(Namespace="urn:schemas-royalmail-com/webservice/epro")]
    public partial class DateTimeParameter : ExportParameter {
        
        private System.DateTime valueField;
        
        /// <remarks/>
        [System.Xml.Serialization.XmlAttributeAttribute()]
        public System.DateTime Value {
            get {
                return this.valueField;
            }
            set {
                this.valueField = value;
            }
        }
    }
    
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Xml", "4.0.30319.233")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(Namespace="urn:schemas-royalmail-com/webservice/epro")]
    public partial class MultiSelectParameter : ExportParameter {
        
        private string[] valuesField;
        
        /// <remarks/>
        [System.Xml.Serialization.XmlArrayItemAttribute("Value", IsNullable=false)]
        public string[] Values {
            get {
                return this.valuesField;
            }
            set {
                this.valuesField = value;
            }
        }
    }
    
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Xml", "4.0.30319.233")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(Namespace="urn:schemas-royalmail-com/webservice/epro")]
    public partial class SingleSelectParameter : ExportParameter {
        
        private string valueField;
        
        /// <remarks/>
        [System.Xml.Serialization.XmlAttributeAttribute()]
        public string Value {
            get {
                return this.valueField;
            }
            set {
                this.valueField = value;
            }
        }
    }
    
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Xml", "4.0.30319.233")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(Namespace="urn:schemas-royalmail-com/webservice/epro")]
    public partial class DateParameter : ExportParameter {
        
        private System.DateTime valueField;
        
        /// <remarks/>
        [System.Xml.Serialization.XmlAttributeAttribute(DataType="date")]
        public System.DateTime Value {
            get {
                return this.valueField;
            }
            set {
                this.valueField = value;
            }
        }
    }
    
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Xml", "4.0.30319.233")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(Namespace="urn:schemas-royalmail-com/webservice/epro")]
    public partial class GenerateExportInput {
        
        private System.Guid exportReferenceField;
        
        private ExportOutputTypes outputTypeField;
        
        private ExportParameter[] parametersField;
        
        /// <remarks/>
        public System.Guid ExportReference {
            get {
                return this.exportReferenceField;
            }
            set {
                this.exportReferenceField = value;
            }
        }
        
        /// <remarks/>
        public ExportOutputTypes OutputType {
            get {
                return this.outputTypeField;
            }
            set {
                this.outputTypeField = value;
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlArrayItemAttribute(typeof(BooleanParameter), IsNullable=false)]
        [System.Xml.Serialization.XmlArrayItemAttribute(typeof(DateParameter), IsNullable=false)]
        [System.Xml.Serialization.XmlArrayItemAttribute(typeof(DateTimeParameter), IsNullable=false)]
        [System.Xml.Serialization.XmlArrayItemAttribute(typeof(MultiSelectParameter), IsNullable=false)]
        [System.Xml.Serialization.XmlArrayItemAttribute(typeof(SingleSelectParameter), IsNullable=false)]
        [System.Xml.Serialization.XmlArrayItemAttribute(typeof(TextParameter), IsNullable=false)]
        public ExportParameter[] Parameters {
            get {
                return this.parametersField;
            }
            set {
                this.parametersField = value;
            }
        }
    }
    
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Xml", "4.0.30319.233")]
    [System.SerializableAttribute()]
    [System.Xml.Serialization.XmlTypeAttribute(Namespace="urn:schemas-royalmail-com/webservice/epro")]
    public enum ExportOutputTypes {
        
        /// <remarks/>
        xml,
        
        /// <remarks/>
        html,
    }
    
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Xml", "4.0.30319.233")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(Namespace="urn:schemas-royalmail-com/webservice/epro")]
    public partial class Export {
        
        private System.Guid referenceField;
        
        private string nameField;
        
        private string descriptionField;
        
        /// <remarks/>
        [System.Xml.Serialization.XmlAttributeAttribute()]
        public System.Guid Reference {
            get {
                return this.referenceField;
            }
            set {
                this.referenceField = value;
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlAttributeAttribute()]
        public string Name {
            get {
                return this.nameField;
            }
            set {
                this.nameField = value;
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlAttributeAttribute()]
        public string Description {
            get {
                return this.descriptionField;
            }
            set {
                this.descriptionField = value;
            }
        }
    }
    
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Xml", "4.0.30319.233")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(Namespace="urn:schemas-royalmail-com/webservice/epro")]
    [System.Xml.Serialization.XmlRootAttribute(Namespace="urn:schemas-royalmail-com/webservice/epro", IsNullable=false)]
    public partial class Authentication : System.Web.Services.Protocols.SoapHeader {
        
        private string usernameField;
        
        private string passwordField;
        
        private int accessCodeField;
        
        private string versionField;
        
        private string securityTokenField;
        
        /// <remarks/>
        public string Username {
            get {
                return this.usernameField;
            }
            set {
                this.usernameField = value;
            }
        }
        
        /// <remarks/>
        public string Password {
            get {
                return this.passwordField;
            }
            set {
                this.passwordField = value;
            }
        }
        
        /// <remarks/>
        public int AccessCode {
            get {
                return this.accessCodeField;
            }
            set {
                this.accessCodeField = value;
            }
        }
        
        /// <remarks/>
        public string Version {
            get {
                return this.versionField;
            }
            set {
                this.versionField = value;
            }
        }
        
        /// <remarks/>
        public string SecurityToken {
            get {
                return this.securityTokenField;
            }
            set {
                this.securityTokenField = value;
            }
        }
    }
    
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Web.Services", "4.0.30319.1")]
    public delegate void GetExportListCompletedEventHandler(object sender, GetExportListCompletedEventArgs e);
    
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Web.Services", "4.0.30319.1")]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    public partial class GetExportListCompletedEventArgs : System.ComponentModel.AsyncCompletedEventArgs {
        
        private object[] results;
        
        internal GetExportListCompletedEventArgs(object[] results, System.Exception exception, bool cancelled, object userState) : 
                base(exception, cancelled, userState) {
            this.results = results;
        }
        
        /// <remarks/>
        public Export[] Result {
            get {
                this.RaiseExceptionIfNecessary();
                return ((Export[])(this.results[0]));
            }
        }
    }
    
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Web.Services", "4.0.30319.1")]
    public delegate void GenerateExportCompletedEventHandler(object sender, GenerateExportCompletedEventArgs e);
    
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Web.Services", "4.0.30319.1")]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    public partial class GenerateExportCompletedEventArgs : System.ComponentModel.AsyncCompletedEventArgs {
        
        private object[] results;
        
        internal GenerateExportCompletedEventArgs(object[] results, System.Exception exception, bool cancelled, object userState) : 
                base(exception, cancelled, userState) {
            this.results = results;
        }
        
        /// <remarks/>
        public GenerateExportOutput Result {
            get {
                this.RaiseExceptionIfNecessary();
                return ((GenerateExportOutput)(this.results[0]));
            }
        }
    }
}

#pragma warning restore 1591
