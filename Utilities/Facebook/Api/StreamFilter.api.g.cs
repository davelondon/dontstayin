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
    
    
    [FacebookObjectAttribute("stream_filter")]
    public class StreamFilter : Facebook.Api.FacebookObjectBase {
        
        /// <summary>Intializes an instance of <see cref="StreamFilter" /> using the specified xml document or snippet as the data source.</summary>
        /// <param name="content">An <see cref="XElement" /> object containing xml data for the object.</param>
        public StreamFilter(System.Xml.Linq.XElement content) : 
                base(content) {
        }
        
        /// <summary>Intializes an instance of <see cref="StreamFilter" />, prefilling the internal dictionary with the specified values.</summary>
        /// <param name="dict">An <see cref="IDictionary{String, Object}" /> object containing property names and values.</param>
        public StreamFilter(System.Collections.Generic.IDictionary<string, object> dict) : 
                base(dict) {
        }
        
        /// <summary>Intializes an instance of <see cref="StreamFilter" />.</summary>
        public StreamFilter() {
        }
        
        public Int64 Uid {
            get {
                return this.GetValueType<Int64>("uid");
            }
            set {
                this.InnerDictionary["uid"] = value;
            }
        }
        
        public String FilterKey {
            get {
                return this.GetString("filter_key");
            }
            set {
                this.InnerDictionary["filter_key"] = value;
            }
        }
        
        public String Name {
            get {
                return this.GetString("name");
            }
            set {
                this.InnerDictionary["name"] = value;
            }
        }
        
        public Int64 Rank {
            get {
                return this.GetValueType<Int64>("rank");
            }
            set {
                this.InnerDictionary["rank"] = value;
            }
        }
        
        public String IconUrl {
            get {
                return this.GetString("icon_url");
            }
            set {
                this.InnerDictionary["icon_url"] = value;
            }
        }
        
        public Boolean IsVisible {
            get {
                return this.GetValueType<Boolean>("is_visible");
            }
            set {
                this.InnerDictionary["is_visible"] = value;
            }
        }
        
        public String Type {
            get {
                return this.GetString("type");
            }
            set {
                this.InnerDictionary["type"] = value;
            }
        }
        
        public Int64 Value {
            get {
                return this.GetValueType<Int64>("value");
            }
            set {
                this.InnerDictionary["value"] = value;
            }
        }
    }
}