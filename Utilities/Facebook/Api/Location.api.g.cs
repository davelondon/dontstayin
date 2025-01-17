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
    
    
    [FacebookObjectAttribute("location")]
    public class Location : Facebook.Api.FacebookObjectBase {
        
        /// <summary>Intializes an instance of <see cref="Location" /> using the specified xml document or snippet as the data source.</summary>
        /// <param name="content">An <see cref="XElement" /> object containing xml data for the object.</param>
        public Location(System.Xml.Linq.XElement content) : 
                base(content) {
        }
        
        /// <summary>Intializes an instance of <see cref="Location" />, prefilling the internal dictionary with the specified values.</summary>
        /// <param name="dict">An <see cref="IDictionary{String, Object}" /> object containing property names and values.</param>
        public Location(System.Collections.Generic.IDictionary<string, object> dict) : 
                base(dict) {
        }
        
        /// <summary>Intializes an instance of <see cref="Location" />.</summary>
        public Location() {
        }
        
        public String Street {
            get {
                return this.GetString("street");
            }
            set {
                this.InnerDictionary["street"] = value;
            }
        }
        
        public String City {
            get {
                return this.GetString("city");
            }
            set {
                this.InnerDictionary["city"] = value;
            }
        }
        
        public String State {
            get {
                return this.GetString("state");
            }
            set {
                this.InnerDictionary["state"] = value;
            }
        }
        
        public String Country {
            get {
                return this.GetString("country");
            }
            set {
                this.InnerDictionary["country"] = value;
            }
        }
        
        public String Zip {
            get {
                return this.GetString("zip");
            }
            set {
                this.InnerDictionary["zip"] = value;
            }
        }
        
        public Decimal Latitude {
            get {
                return this.GetValueType<Decimal>("latitude");
            }
            set {
                this.InnerDictionary["latitude"] = value;
            }
        }
        
        public Decimal Longitude {
            get {
                return this.GetValueType<Decimal>("longitude");
            }
            set {
                this.InnerDictionary["longitude"] = value;
            }
        }
    }
}
