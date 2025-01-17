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
    
    
    [FacebookObjectAttribute("object_association")]
    public class ObjectAssociation : Facebook.Api.FacebookObjectBase {
        
        /// <summary>Intializes an instance of <see cref="ObjectAssociation" /> using the specified xml document or snippet as the data source.</summary>
        /// <param name="content">An <see cref="XElement" /> object containing xml data for the object.</param>
        public ObjectAssociation(System.Xml.Linq.XElement content) : 
                base(content) {
        }
        
        /// <summary>Intializes an instance of <see cref="ObjectAssociation" />, prefilling the internal dictionary with the specified values.</summary>
        /// <param name="dict">An <see cref="IDictionary{String, Object}" /> object containing property names and values.</param>
        public ObjectAssociation(System.Collections.Generic.IDictionary<string, object> dict) : 
                base(dict) {
        }
        
        /// <summary>Intializes an instance of <see cref="ObjectAssociation" />.</summary>
        public ObjectAssociation() {
        }
        
        public String Name {
            get {
                return this.GetString("name");
            }
            set {
                this.InnerDictionary["name"] = value;
            }
        }
        
        public Int64 Id1 {
            get {
                return this.GetValueType<Int64>("id1");
            }
            set {
                this.InnerDictionary["id1"] = value;
            }
        }
        
        public Int64 Id2 {
            get {
                return this.GetValueType<Int64>("id2");
            }
            set {
                this.InnerDictionary["id2"] = value;
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
        
        public DateTime Time {
            get {
                return this.GetValueType<DateTime>("time");
            }
            set {
                this.InnerDictionary["time"] = value;
            }
        }
    }
}
