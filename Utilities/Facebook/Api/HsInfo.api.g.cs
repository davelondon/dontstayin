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
    
    
    [FacebookObjectAttribute("hs_info")]
    public class HsInfo : Facebook.Api.FacebookObjectBase {
        
        /// <summary>Intializes an instance of <see cref="HsInfo" /> using the specified xml document or snippet as the data source.</summary>
        /// <param name="content">An <see cref="XElement" /> object containing xml data for the object.</param>
        public HsInfo(System.Xml.Linq.XElement content) : 
                base(content) {
        }
        
        /// <summary>Intializes an instance of <see cref="HsInfo" />, prefilling the internal dictionary with the specified values.</summary>
        /// <param name="dict">An <see cref="IDictionary{String, Object}" /> object containing property names and values.</param>
        public HsInfo(System.Collections.Generic.IDictionary<string, object> dict) : 
                base(dict) {
        }
        
        /// <summary>Intializes an instance of <see cref="HsInfo" />.</summary>
        public HsInfo() {
        }
        
        public String Hs1Name {
            get {
                return this.GetString("hs1_name");
            }
            set {
                this.InnerDictionary["hs1_name"] = value;
            }
        }
        
        public String Hs2Name {
            get {
                return this.GetString("hs2_name");
            }
            set {
                this.InnerDictionary["hs2_name"] = value;
            }
        }
        
        public Int64 GradYear {
            get {
                return this.GetValueType<Int64>("grad_year");
            }
            set {
                this.InnerDictionary["grad_year"] = value;
            }
        }
        
        public Int64 Hs1Id {
            get {
                return this.GetValueType<Int64>("hs1_id");
            }
            set {
                this.InnerDictionary["hs1_id"] = value;
            }
        }
        
        public Int64 Hs2Id {
            get {
                return this.GetValueType<Int64>("hs2_id");
            }
            set {
                this.InnerDictionary["hs2_id"] = value;
            }
        }
    }
}