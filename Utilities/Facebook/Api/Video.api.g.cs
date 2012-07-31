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
    
    
    [FacebookObjectAttribute("video")]
    public class Video : Facebook.Api.FacebookObjectBase {
        
        /// <summary>Intializes an instance of <see cref="Video" /> using the specified xml document or snippet as the data source.</summary>
        /// <param name="content">An <see cref="XElement" /> object containing xml data for the object.</param>
        public Video(System.Xml.Linq.XElement content) : 
                base(content) {
        }
        
        /// <summary>Intializes an instance of <see cref="Video" />, prefilling the internal dictionary with the specified values.</summary>
        /// <param name="dict">An <see cref="IDictionary{String, Object}" /> object containing property names and values.</param>
        public Video(System.Collections.Generic.IDictionary<string, object> dict) : 
                base(dict) {
        }
        
        /// <summary>Intializes an instance of <see cref="Video" />.</summary>
        public Video() {
        }
        
        public Int64 Vid {
            get {
                return this.GetValueType<Int64>("vid");
            }
            set {
                this.InnerDictionary["vid"] = value;
            }
        }
        
        public String Title {
            get {
                return this.GetString("title");
            }
            set {
                this.InnerDictionary["title"] = value;
            }
        }
        
        public String Description {
            get {
                return this.GetString("description");
            }
            set {
                this.InnerDictionary["description"] = value;
            }
        }
        
        public String Link {
            get {
                return this.GetString("link");
            }
            set {
                this.InnerDictionary["link"] = value;
            }
        }
    }
}