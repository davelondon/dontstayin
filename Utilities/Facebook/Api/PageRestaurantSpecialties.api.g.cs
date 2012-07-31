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
    
    
    [FacebookObjectAttribute("page_restaurant_specialties")]
    public class PageRestaurantSpecialties : Facebook.Api.FacebookObjectBase {
        
        /// <summary>Intializes an instance of <see cref="PageRestaurantSpecialties" /> using the specified xml document or snippet as the data source.</summary>
        /// <param name="content">An <see cref="XElement" /> object containing xml data for the object.</param>
        public PageRestaurantSpecialties(System.Xml.Linq.XElement content) : 
                base(content) {
        }
        
        /// <summary>Intializes an instance of <see cref="PageRestaurantSpecialties" />, prefilling the internal dictionary with the specified values.</summary>
        /// <param name="dict">An <see cref="IDictionary{String, Object}" /> object containing property names and values.</param>
        public PageRestaurantSpecialties(System.Collections.Generic.IDictionary<string, object> dict) : 
                base(dict) {
        }
        
        /// <summary>Intializes an instance of <see cref="PageRestaurantSpecialties" />.</summary>
        public PageRestaurantSpecialties() {
        }
        
        public Boolean Breakfast {
            get {
                return this.GetValueType<Boolean>("breakfast");
            }
            set {
                this.InnerDictionary["breakfast"] = value;
            }
        }
        
        public Boolean Lunch {
            get {
                return this.GetValueType<Boolean>("lunch");
            }
            set {
                this.InnerDictionary["lunch"] = value;
            }
        }
        
        public Boolean Dinner {
            get {
                return this.GetValueType<Boolean>("dinner");
            }
            set {
                this.InnerDictionary["dinner"] = value;
            }
        }
        
        public Boolean Coffee {
            get {
                return this.GetValueType<Boolean>("coffee");
            }
            set {
                this.InnerDictionary["coffee"] = value;
            }
        }
        
        public Boolean Drinks {
            get {
                return this.GetValueType<Boolean>("drinks");
            }
            set {
                this.InnerDictionary["drinks"] = value;
            }
        }
    }
}