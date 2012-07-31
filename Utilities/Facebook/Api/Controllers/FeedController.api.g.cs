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
namespace Facebook.Api.Controllers {
    using System;
    using System.Collections.Generic;
    using System.Xml.Linq;
    using Facebook;
    
    
    public partial class FeedController : FacebookApiController {
        
        public FeedController(IFacebookContext facebookContext) : 
                base(facebookContext) {
        }
        
        /// <summary>Builds a template bundle around the specified templates, registers them on Facebook, and responds with a template bundle ID that can be used to identify your template bundle to other Feed-related API calls.</summary>
        /// <param name="oneLineStoryTemplates">A JSON-encoded array containing one FBML template that can be used to render one line Feed stories.</param>
        public FacebookResponse<Int64> RegisterTemplateBundle(String[] oneLineStoryTemplates) {
            System.Collections.Generic.Dictionary<string, object> args = new System.Collections.Generic.Dictionary<string, object>();
            args.Add("one_line_story_templates", oneLineStoryTemplates);
            var response = this.ExecuteRequest<Int64>("Feed.registerTemplateBundle", args);
            return response;
        }
        
        /// <summary>Builds a template bundle around the specified templates, registers them on Facebook, and responds with a template bundle ID that can be used to identify your template bundle to other Feed-related API calls.</summary>
        /// <param name="oneLineStoryTemplates">A JSON-encoded array containing one FBML template that can be used to render one line Feed stories.</param>
        /// <param name="shortStoryTemplates">A JSON-encoded array containing an object, which represents a short story template.  The dictionary should include two fields: <code>template_title</code>, which should be mapped to the FBML template used to render a short story's title, and <code>template_body</code>, which should map to the FBML template used to render a short story's body. The token set of a short story template is taken to be the union of the <code>template_title</code> and the <code>template_body</code> templates.</param>
        public FacebookResponse<Int64> RegisterTemplateBundle(String[] oneLineStoryTemplates, String[] shortStoryTemplates) {
            System.Collections.Generic.Dictionary<string, object> args = new System.Collections.Generic.Dictionary<string, object>();
            args.Add("one_line_story_templates", oneLineStoryTemplates);
            args.Add("short_story_templates", shortStoryTemplates);
            var response = this.ExecuteRequest<Int64>("Feed.registerTemplateBundle", args);
            return response;
        }
        
        /// <summary>Builds a template bundle around the specified templates, registers them on Facebook, and responds with a template bundle ID that can be used to identify your template bundle to other Feed-related API calls.</summary>
        /// <param name="oneLineStoryTemplates">A JSON-encoded array containing one FBML template that can be used to render one line Feed stories.</param>
        /// <param name="shortStoryTemplates">A JSON-encoded array containing an object, which represents a short story template.  The dictionary should include two fields: <code>template_title</code>, which should be mapped to the FBML template used to render a short story's title, and <code>template_body</code>, which should map to the FBML template used to render a short story's body. The token set of a short story template is taken to be the union of the <code>template_title</code> and the <code>template_body</code> templates.</param>
        /// <param name="actionLinks">A JSON-encoded array of action link records, where each record contains 'text' and 'href' fields.  For more information, see <a href="/index.php/Action_Links" title="Action Links">Action Links</a>.</param>
        public FacebookResponse<Int64> RegisterTemplateBundle(String[] oneLineStoryTemplates, String[] shortStoryTemplates, String[] actionLinks) {
            System.Collections.Generic.Dictionary<string, object> args = new System.Collections.Generic.Dictionary<string, object>();
            args.Add("one_line_story_templates", oneLineStoryTemplates);
            args.Add("short_story_templates", shortStoryTemplates);
            args.Add("action_links", actionLinks);
            var response = this.ExecuteRequest<Int64>("Feed.registerTemplateBundle", args);
            return response;
        }
        
        /// <summary>Retrieves the full list of all the template bundles registered by the requesting application.</summary>
        public FacebookResponse<FacebookList<TemplateBundle>> GetRegisteredTemplateBundles() {
            System.Collections.Generic.Dictionary<string, object> args = new System.Collections.Generic.Dictionary<string, object>();
            var response = this.ExecuteRequest<FacebookList<TemplateBundle>>("Feed.getRegisteredTemplateBundles", args);
            return response;
        }
        
        /// <summary>Retrieves information about a specified template bundle previously registered by the requesting application.</summary>
        /// <param name="templateBundleId">The template bundle ID used to identify a previously registered template bundle.  The ID is the one returned by a previous call to <a href="/index.php/Feed.registerTemplateBundle" title="Feed.registerTemplateBundle">feed.registerTemplateBundle</a>.</param>
        public FacebookResponse<TemplateBundle> GetRegisteredTemplateBundleByID(String templateBundleId) {
            System.Collections.Generic.Dictionary<string, object> args = new System.Collections.Generic.Dictionary<string, object>();
            args.Add("template_bundle_id", templateBundleId);
            var response = this.ExecuteRequest<TemplateBundle>("Feed.getRegisteredTemplateBundleByID", args);
            return response;
        }
        
        /// <summary>Deactivates a previously registered template bundle.</summary>
        /// <param name="templateBundleId">The template bundle ID used to identify a previously registered template bundle.  The ID is the one returned by a previous call to <a href="/index.php/Feed.registerTemplateBundle" title="Feed.registerTemplateBundle">feed.registerTemplateBundle</a>.</param>
        public FacebookResponse<Boolean> DeactivateTemplateBundleByID(String templateBundleId) {
            System.Collections.Generic.Dictionary<string, object> args = new System.Collections.Generic.Dictionary<string, object>();
            args.Add("template_bundle_id", templateBundleId);
            var response = this.ExecuteRequest<Boolean>("Feed.deactivateTemplateBundleByID", args);
            return response;
        }
    }
}