﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:2.0.50727.42
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using System;
using System.ComponentModel;
using System.Diagnostics;
using System.Web.Services;
using System.Web.Services.Protocols;
using System.Xml.Serialization;

// 
// This source code was auto-generated by wsdl, Version=2.0.50727.42.
// 


/// <remarks/>
[System.CodeDom.Compiler.GeneratedCodeAttribute("wsdl", "1.0.3705.0")]
[System.Diagnostics.DebuggerStepThroughAttribute()]
[System.ComponentModel.DesignerCategoryAttribute("code")]
[System.Web.Services.WebServiceBindingAttribute(Name="SECCardServiceSoapBinding", Namespace="https://www.secpay.com/java-bin/services/SECCardService")]
public partial class SECVPNService : System.Web.Services.Protocols.SoapHttpClientProtocol {
    
    /// <remarks/>
    public SECVPNService() {
        this.Url = "https://www.secpay.com/java-bin/services/SECCardService";
    }
    
    /// <remarks/>
    [System.Web.Services.Protocols.SoapRpcMethodAttribute("", RequestNamespace="http://secvpn.secpay.com", ResponseNamespace="https://www.secpay.com/java-bin/services/SECCardService")]
    [return: System.Xml.Serialization.SoapElementAttribute("refundCardFullReturn")]
    public string refundCardFull(string mid, string vpn_pswd, string trans_id, string amount, string remote_pswd, string new_trans_id) {
        object[] results = this.Invoke("refundCardFull", new object[] {
                    mid,
                    vpn_pswd,
                    trans_id,
                    amount,
                    remote_pswd,
                    new_trans_id});
        return ((string)(results[0]));
    }
    
    /// <remarks/>
    public System.IAsyncResult BeginrefundCardFull(string mid, string vpn_pswd, string trans_id, string amount, string remote_pswd, string new_trans_id, System.AsyncCallback callback, object asyncState) {
        return this.BeginInvoke("refundCardFull", new object[] {
                    mid,
                    vpn_pswd,
                    trans_id,
                    amount,
                    remote_pswd,
                    new_trans_id}, callback, asyncState);
    }
    
    /// <remarks/>
    public string EndrefundCardFull(System.IAsyncResult asyncResult) {
        object[] results = this.EndInvoke(asyncResult);
        return ((string)(results[0]));
    }
    
    /// <remarks/>
    [System.Web.Services.Protocols.SoapRpcMethodAttribute("", RequestNamespace="http://secvpn.secpay.com", ResponseNamespace="https://www.secpay.com/java-bin/services/SECCardService")]
    [return: System.Xml.Serialization.SoapElementAttribute("releaseCardFullReturn")]
    public string releaseCardFull(string mid, string vpn_pswd, string trans_id, string amount, string remote_pswd, string new_trans_id) {
        object[] results = this.Invoke("releaseCardFull", new object[] {
                    mid,
                    vpn_pswd,
                    trans_id,
                    amount,
                    remote_pswd,
                    new_trans_id});
        return ((string)(results[0]));
    }
    
    /// <remarks/>
    public System.IAsyncResult BeginreleaseCardFull(string mid, string vpn_pswd, string trans_id, string amount, string remote_pswd, string new_trans_id, System.AsyncCallback callback, object asyncState) {
        return this.BeginInvoke("releaseCardFull", new object[] {
                    mid,
                    vpn_pswd,
                    trans_id,
                    amount,
                    remote_pswd,
                    new_trans_id}, callback, asyncState);
    }
    
    /// <remarks/>
    public string EndreleaseCardFull(System.IAsyncResult asyncResult) {
        object[] results = this.EndInvoke(asyncResult);
        return ((string)(results[0]));
    }
    
    /// <remarks/>
    [System.Web.Services.Protocols.SoapRpcMethodAttribute("", RequestNamespace="http://secvpn.secpay.com", ResponseNamespace="https://www.secpay.com/java-bin/services/SECCardService")]
    [return: System.Xml.Serialization.SoapElementAttribute("repeatCardFullReturn")]
    public string repeatCardFull(string mid, string vpn_pswd, string trans_id, string amount, string remote_pswd, string new_trans_id, string exp_date, string order) {
        object[] results = this.Invoke("repeatCardFull", new object[] {
                    mid,
                    vpn_pswd,
                    trans_id,
                    amount,
                    remote_pswd,
                    new_trans_id,
                    exp_date,
                    order});
        return ((string)(results[0]));
    }
    
    /// <remarks/>
    public System.IAsyncResult BeginrepeatCardFull(string mid, string vpn_pswd, string trans_id, string amount, string remote_pswd, string new_trans_id, string exp_date, string order, System.AsyncCallback callback, object asyncState) {
        return this.BeginInvoke("repeatCardFull", new object[] {
                    mid,
                    vpn_pswd,
                    trans_id,
                    amount,
                    remote_pswd,
                    new_trans_id,
                    exp_date,
                    order}, callback, asyncState);
    }
    
    /// <remarks/>
    public string EndrepeatCardFull(System.IAsyncResult asyncResult) {
        object[] results = this.EndInvoke(asyncResult);
        return ((string)(results[0]));
    }
    
    /// <remarks/>
    [System.Web.Services.Protocols.SoapRpcMethodAttribute("", RequestNamespace="http://secvpn.secpay.com", ResponseNamespace="https://www.secpay.com/java-bin/services/SECCardService")]
    [return: System.Xml.Serialization.SoapElementAttribute("validateCardFullReturn")]
    public string validateCardFull(string mid, string vpn_pswd, string trans_id, string ip, string name, string card_number, string amount, string expiry_date, string issue_number, string start_date, string order, string shipping, string billing, string options) {
        object[] results = this.Invoke("validateCardFull", new object[] {
                    mid,
                    vpn_pswd,
                    trans_id,
                    ip,
                    name,
                    card_number,
                    amount,
                    expiry_date,
                    issue_number,
                    start_date,
                    order,
                    shipping,
                    billing,
                    options});
        return ((string)(results[0]));
    }
    
    /// <remarks/>
    public System.IAsyncResult BeginvalidateCardFull(
                string mid, 
                string vpn_pswd, 
                string trans_id, 
                string ip, 
                string name, 
                string card_number, 
                string amount, 
                string expiry_date, 
                string issue_number, 
                string start_date, 
                string order, 
                string shipping, 
                string billing, 
                string options, 
                System.AsyncCallback callback, 
                object asyncState) {
        return this.BeginInvoke("validateCardFull", new object[] {
                    mid,
                    vpn_pswd,
                    trans_id,
                    ip,
                    name,
                    card_number,
                    amount,
                    expiry_date,
                    issue_number,
                    start_date,
                    order,
                    shipping,
                    billing,
                    options}, callback, asyncState);
    }
    
    /// <remarks/>
    public string EndvalidateCardFull(System.IAsyncResult asyncResult) {
        object[] results = this.EndInvoke(asyncResult);
        return ((string)(results[0]));
    }
    
    /// <remarks/>
    [System.Web.Services.Protocols.SoapRpcMethodAttribute("", RequestNamespace="http://secvpn.secpay.com", ResponseNamespace="https://www.secpay.com/java-bin/services/SECCardService")]
    [return: System.Xml.Serialization.SoapElementAttribute("threeDSecureEnrolmentRequestReturn")]
    public string threeDSecureEnrolmentRequest(
                string mid, 
                string vpn_pswd, 
                string trans_id, 
                string ip, 
                string name, 
                string card_number, 
                string amount, 
                string expiry_date, 
                string issue_number, 
                string start_date, 
                string order, 
                string shipping, 
                string billing, 
                string options, 
                string device_category, 
                string accept_headers, 
                string user_agent, 
                string mpi_merchant_name, 
                string mpi_merchant_url, 
                string mpi_description, 
                string purchaseRecurringFrequency, 
                string purchaseRecurringExpiry, 
                string purchaseInstallments) {
        object[] results = this.Invoke("threeDSecureEnrolmentRequest", new object[] {
                    mid,
                    vpn_pswd,
                    trans_id,
                    ip,
                    name,
                    card_number,
                    amount,
                    expiry_date,
                    issue_number,
                    start_date,
                    order,
                    shipping,
                    billing,
                    options,
                    device_category,
                    accept_headers,
                    user_agent,
                    mpi_merchant_name,
                    mpi_merchant_url,
                    mpi_description,
                    purchaseRecurringFrequency,
                    purchaseRecurringExpiry,
                    purchaseInstallments});
        return ((string)(results[0]));
    }
    
    /// <remarks/>
    public System.IAsyncResult BeginthreeDSecureEnrolmentRequest(
                string mid, 
                string vpn_pswd, 
                string trans_id, 
                string ip, 
                string name, 
                string card_number, 
                string amount, 
                string expiry_date, 
                string issue_number, 
                string start_date, 
                string order, 
                string shipping, 
                string billing, 
                string options, 
                string device_category, 
                string accept_headers, 
                string user_agent, 
                string mpi_merchant_name, 
                string mpi_merchant_url, 
                string mpi_description, 
                string purchaseRecurringFrequency, 
                string purchaseRecurringExpiry, 
                string purchaseInstallments, 
                System.AsyncCallback callback, 
                object asyncState) {
        return this.BeginInvoke("threeDSecureEnrolmentRequest", new object[] {
                    mid,
                    vpn_pswd,
                    trans_id,
                    ip,
                    name,
                    card_number,
                    amount,
                    expiry_date,
                    issue_number,
                    start_date,
                    order,
                    shipping,
                    billing,
                    options,
                    device_category,
                    accept_headers,
                    user_agent,
                    mpi_merchant_name,
                    mpi_merchant_url,
                    mpi_description,
                    purchaseRecurringFrequency,
                    purchaseRecurringExpiry,
                    purchaseInstallments}, callback, asyncState);
    }
    
    /// <remarks/>
    public string EndthreeDSecureEnrolmentRequest(System.IAsyncResult asyncResult) {
        object[] results = this.EndInvoke(asyncResult);
        return ((string)(results[0]));
    }
    
    /// <remarks/>
    [System.Web.Services.Protocols.SoapRpcMethodAttribute("", RequestNamespace="http://secvpn.secpay.com", ResponseNamespace="https://www.secpay.com/java-bin/services/SECCardService")]
    [return: System.Xml.Serialization.SoapElementAttribute("threeDSecureAuthorisationRequestReturn")]
    public string threeDSecureAuthorisationRequest(string mid, string vpn_pswd, string trans_id, string md, string paRes, string options) {
        object[] results = this.Invoke("threeDSecureAuthorisationRequest", new object[] {
                    mid,
                    vpn_pswd,
                    trans_id,
                    md,
                    paRes,
                    options});
        return ((string)(results[0]));
    }
    
    /// <remarks/>
    public System.IAsyncResult BeginthreeDSecureAuthorisationRequest(string mid, string vpn_pswd, string trans_id, string md, string paRes, string options, System.AsyncCallback callback, object asyncState) {
        return this.BeginInvoke("threeDSecureAuthorisationRequest", new object[] {
                    mid,
                    vpn_pswd,
                    trans_id,
                    md,
                    paRes,
                    options}, callback, asyncState);
    }
    
    /// <remarks/>
    public string EndthreeDSecureAuthorisationRequest(System.IAsyncResult asyncResult) {
        object[] results = this.EndInvoke(asyncResult);
        return ((string)(results[0]));
    }
    
    /// <remarks/>
    [System.Web.Services.Protocols.SoapRpcMethodAttribute("", RequestNamespace="http://secvpn.secpay.com", ResponseNamespace="https://www.secpay.com/java-bin/services/SECCardService")]
    [return: System.Xml.Serialization.SoapElementAttribute("getReportReturn")]
    public string getReport(string mid, string vpn_pswd, string remote_pswd, string report_type, string cond_type, string condition, string currency, string predicate, bool html, bool showErrs) {
        object[] results = this.Invoke("getReport", new object[] {
                    mid,
                    vpn_pswd,
                    remote_pswd,
                    report_type,
                    cond_type,
                    condition,
                    currency,
                    predicate,
                    html,
                    showErrs});
        return ((string)(results[0]));
    }
    
    /// <remarks/>
    public System.IAsyncResult BegingetReport(string mid, string vpn_pswd, string remote_pswd, string report_type, string cond_type, string condition, string currency, string predicate, bool html, bool showErrs, System.AsyncCallback callback, object asyncState) {
        return this.BeginInvoke("getReport", new object[] {
                    mid,
                    vpn_pswd,
                    remote_pswd,
                    report_type,
                    cond_type,
                    condition,
                    currency,
                    predicate,
                    html,
                    showErrs}, callback, asyncState);
    }
    
    /// <remarks/>
    public string EndgetReport(System.IAsyncResult asyncResult) {
        object[] results = this.EndInvoke(asyncResult);
        return ((string)(results[0]));
    }
}
