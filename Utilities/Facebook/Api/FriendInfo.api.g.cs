//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:2.0.50727.3082
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

// ------------------------------------------------------------------------------
// <auto-generated>
//     This API code was generated by the DanDoes.NET Facebook API Generator.
//     Facebook.Api.Generator v1.0.3412.20062
//     
//     The following documents were used to generate this code:
//		Facebook API Object Schema:	http://api.facebook.com/1.0/facebook.xsd
//		Facebook API Wiki:			http://wiki.developers.facebook.com/index.php/API
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------
namespace Facebook.Api {
    using System;
    using System.Collections.Generic;
    using System.Xml.Linq;
    using Facebook;
    
    
    [FacebookObjectAttribute("friend_info")]
    public class FriendInfo : Facebook.Api.FacebookObjectBase {
        
        /// <summary>Intializes an instance of <see cref="FriendInfo" /> using the specified xml document or snippet as the data source.</summary>
        /// <param name="content">An <see cref="XElement" /> object containing xml data for the object.</param>
        public FriendInfo(System.Xml.Linq.XElement content) : 
                base(content) {
        }
        
        /// <summary>Intializes an instance of <see cref="FriendInfo" />, prefilling the internal dictionary with the specified values.</summary>
        /// <param name="dict">An <see cref="IDictionary{String, Object}" /> object containing property names and values.</param>
        public FriendInfo(System.Collections.Generic.IDictionary<string, object> dict) : 
                base(dict) {
        }
        
        /// <summary>Intializes an instance of <see cref="FriendInfo" />.</summary>
        public FriendInfo() {
        }
        
        public Int64 Uid1 {
            get {
                return this.GetValueType<Int64>("uid1");
            }
            set {
                this.InnerDictionary["uid1"] = value;
            }
        }
        
        public Int64 Uid2 {
            get {
                return this.GetValueType<Int64>("uid2");
            }
            set {
                this.InnerDictionary["uid2"] = value;
            }
        }
        
        public Boolean AreFriends {
            get {
                return this.GetValueType<Boolean>("are_friends");
            }
            set {
                this.InnerDictionary["are_friends"] = value;
            }
        }
    }
}