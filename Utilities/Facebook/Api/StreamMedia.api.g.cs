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
    
    
    [FacebookObjectAttribute("stream_media")]
    public class StreamMedia : Facebook.Api.FacebookObjectBase {
        
        /// <summary>Intializes an instance of <see cref="StreamMedia" /> using the specified xml document or snippet as the data source.</summary>
        /// <param name="content">An <see cref="XElement" /> object containing xml data for the object.</param>
        public StreamMedia(System.Xml.Linq.XElement content) : 
                base(content) {
        }
        
        /// <summary>Intializes an instance of <see cref="StreamMedia" />, prefilling the internal dictionary with the specified values.</summary>
        /// <param name="dict">An <see cref="IDictionary{String, Object}" /> object containing property names and values.</param>
        public StreamMedia(System.Collections.Generic.IDictionary<string, object> dict) : 
                base(dict) {
        }
        
        /// <summary>Intializes an instance of <see cref="StreamMedia" />.</summary>
        public StreamMedia() {
        }
        
        public String Href {
            get {
                return this.GetString("href");
            }
            set {
                this.InnerDictionary["href"] = value;
            }
        }
        
        public String Alt {
            get {
                return this.GetString("alt");
            }
            set {
                this.InnerDictionary["alt"] = value;
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
        
        public String Src {
            get {
                return this.GetString("src");
            }
            set {
                this.InnerDictionary["src"] = value;
            }
        }
        
        public StreamVideo Video {
            get {
                return this.GetFacebookObject<StreamVideo>("video");
            }
            set {
                this.InnerDictionary["video"] = value;
            }
        }
        
        public String Obj {
            get {
                return this.GetString("obj");
            }
            set {
                this.InnerDictionary["obj"] = value;
            }
        }
        
        public StreamMusic Music {
            get {
                return this.GetFacebookObject<StreamMusic>("music");
            }
            set {
                this.InnerDictionary["music"] = value;
            }
        }
        
        public String Data {
            get {
                return this.GetString("data");
            }
            set {
                this.InnerDictionary["data"] = value;
            }
        }
        
        public StreamPhoto Photo {
            get {
                return this.GetFacebookObject<StreamPhoto>("photo");
            }
            set {
                this.InnerDictionary["photo"] = value;
            }
        }
        
        public StreamSwf Swf {
            get {
                return this.GetFacebookObject<StreamSwf>("swf");
            }
            set {
                this.InnerDictionary["swf"] = value;
            }
        }
    }
}
