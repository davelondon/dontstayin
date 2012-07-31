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
    
    
    public class FbmlController : FacebookApiController {
        
        public FbmlController(IFacebookContext facebookContext) : 
                base(facebookContext) {
        }
        
        /// <summary>Associates a given "handle" with FBML markup so that the handle can be used within the <a href="/index.php/Fb:ref" title="Fb:ref">fb:ref</a> FBML tag.</summary>
        /// <param name="handle">The handle to associate with the given <a href="/index.php/FBML" title="FBML">FBML</a>.</param>
        /// <param name="fbml">The FBML to associate with the given handle.</param>
        public FacebookResponse<Boolean> SetRefHandle(String handle, String fbml) {
            System.Collections.Generic.Dictionary<string, object> args = new System.Collections.Generic.Dictionary<string, object>();
            args.Add("handle", handle);
            args.Add("fbml", fbml);
            var response = this.ExecuteRequest<Boolean>("Fbml.setRefHandle", args);
            return response;
        }
        
        /// <summary>Fetches and re-caches the content stored at the given URL.</summary>
        /// <param name="url">The absolute URL from which to fetch content. This URL should be used in a <a href="/index.php/Fb:ref" title="Fb:ref">fb:ref</a> <a href="/index.php/FBML" title="FBML">FBML</a> tag.</param>
        public FacebookResponse<Boolean> RefreshRefUrl(String url) {
            System.Collections.Generic.Dictionary<string, object> args = new System.Collections.Generic.Dictionary<string, object>();
            args.Add("url", url);
            var response = this.ExecuteRequest<Boolean>("Fbml.refreshRefUrl", args);
            return response;
        }
        
        /// <summary>Fetches and re-caches the image stored at the given URL.</summary>
        /// <param name="url">The absolute URL from which to refresh the image.</param>
        public FacebookResponse<Boolean> RefreshImgSrc(String url) {
            System.Collections.Generic.Dictionary<string, object> args = new System.Collections.Generic.Dictionary<string, object>();
            args.Add("url", url);
            var response = this.ExecuteRequest<Boolean>("Fbml.refreshImgSrc", args);
            return response;
        }
        
        /// <summary>Lets you insert text strings into the Facebook Translations database so they can be translated.</summary>
        /// <param name="nativeStrings">A JSON-encoded array of strings to translate. Each element of the string array is an object, with <code>text</code> storing the actual string, <code>description</code> storing the description of the text.</param>
        public FacebookResponse<Boolean> UploadNativeStrings(String[] nativeStrings) {
            System.Collections.Generic.Dictionary<string, object> args = new System.Collections.Generic.Dictionary<string, object>();
            args.Add("native_strings", nativeStrings);
            var response = this.ExecuteRequest<Boolean>("Fbml.uploadNativeStrings", args);
            return response;
        }
        
        /// <summary>Registers <a href="/index.php/Custom_Tags" title="Custom Tags">custom tags</a> you can include in your that applications' FBML markup. Custom tags consist of FBML snippets that are rendered during parse time on the containing page that references the custom tag.</summary>
        /// <param name="tags">a JSON-encoded list of tag objects. Each tag object is an object with the following properties:
        ///<ul><li> <i>name</i> (required) (string): the name of the tag. The name must be a string up to 30 characters. Only letters, numbers, underscores ('_') and hyphens ('-') are allowed.
        ///</li><li> <i>type</i> (optional) (string): Specify either <code>leaf</code> or <code>container</code>. Leaf tags can't contain any other tags (similar to &lt;fb:name/&gt;). Container tags may contain children between their open and close tags (like &lt;fb:editor&gt;&lt;/fb:editor&gt;). <i>(Default value is leaf.)</i>. 
        ///</li><li> <i>description</i> (optional) (string): A full description of the tag's functionality. This is used for documentation only, and is especially useful for public tags.
        ///</li><li> <i>is_public</i> (optional) (string):  Specify either <code>true</code> or <code>false</code>. Specifying <code>true</code> indicates that other applications can use this tag. You can have a mix of public and private tags within the same array. <i>(Default value is false.)</i>. 
        ///</li><li> <i>attributes</i> (optional) (mixed): A list of attribute objects. Attributes are used to add dynamic elements to tags. The values of those attributes are substituted into the tag's FBML before it's parsed. Each attribute has the following fields:
        ///<ul><li> <i>name</i> (required) (string): The attribute's name. The name must be a string up to 30 characters in length. Only letters, numbers, underscores ('_') and hyphens ('-') are allowed.
        ///</li><li> <i>description</i> (optional) (string): The attribute's description. This is used for documentation only, and is especially useful for public tags.
        ///</li><li> <i>default_value</i> (optional) (string): The value to use when the attribute is missing. If an attribute doesn't have a default value, it is considered to be required and the developer will see an error message if the attribute is missing.
        ///</li></ul>
        ///</li><li> <i>fbml</i> (required) (string): The FBML markup to substitute into the page where the tag is encountered. This property is required only for leaf tags.
        ///</li><li> <i>open_tag_fbml</i> (required) (string): The FBML markup to substitute into the page where the open tag appears. This property is required for container tags only.
        ///</li><li> <i>close_tag_fbml</i> (required) (string): The FBML markup to substitute into the page where the close tag appears. This property is required for container tags only. <b>Note:</b> Facebook recommends you do not include &lt;script&gt; tags in this FBML snippet.
        ///</li><li> <i>header_fbml</i>: An FBML snippet that is rendered once on the page before the first tag that defined it. If multiple tags define the same value for <code>header_fbml</code>, and more than one of them appear on a page, then <code>header_fbml</code> is rendered only once. You should only use this for including CSS and initializing any JavaScript variables, not for rendering visible content. Facebook recommends you avoid including heavy JavaScript libraries and performing expensive JavaScript operations in <code>header_fbml</code> for performance reasons. Instead, use <code>footer_fbml</code>.
        ///</li><li> <i>footer_fbml</i>: Similar to <code>header_fbml</code>, it's an FBML snippet that gets rendered after all custom tags are rendered. Facebook recommends you include heavy JavaScript libraries and perform any expensive JavaScript operations in footer_fbml, and avoid them in <code>fbml</code>, <code>open_tag_fbml</code>, <code>close_tag_fbml</code>, and <code>header_fbml</code>.</param>
        public FacebookResponse<Boolean> RegisterCustomTags(String[] tags) {
            System.Collections.Generic.Dictionary<string, object> args = new System.Collections.Generic.Dictionary<string, object>();
            args.Add("tags", tags);
            var response = this.ExecuteRequest<Boolean>("Fbml.registerCustomTags", args);
            return response;
        }
        
        /// <summary>Returns the <a href="/index.php/Custom_Tags" title="Custom Tags">custom tag</a> definitions for tags that were previously defined using <a href="/index.php/Fbml.registerCustomTags" title="Fbml.registerCustomTags">fbml.registerCustomTags</a>.</summary>
        public FacebookResponse<FacebookList<CustomTag>> GetCustomTags() {
            System.Collections.Generic.Dictionary<string, object> args = new System.Collections.Generic.Dictionary<string, object>();
            var response = this.ExecuteRequest<FacebookList<CustomTag>>("Fbml.getCustomTags", args);
            return response;
        }
        
        /// <summary>Returns the <a href="/index.php/Custom_Tags" title="Custom Tags">custom tag</a> definitions for tags that were previously defined using <a href="/index.php/Fbml.registerCustomTags" title="Fbml.registerCustomTags">fbml.registerCustomTags</a>.</summary>
        /// <param name="appId">The ID of the application whose custom tags you want to get. If the ID is the calling application's ID, all the application's custom tags are returned. Otherwise, only the application's public custom tags are returned. <i>(Default value is the calling application's ID.)</i>.</param>
        public FacebookResponse<FacebookList<CustomTag>> GetCustomTags(String appId) {
            System.Collections.Generic.Dictionary<string, object> args = new System.Collections.Generic.Dictionary<string, object>();
            args.Add("app_id", appId);
            var response = this.ExecuteRequest<FacebookList<CustomTag>>("Fbml.getCustomTags", args);
            return response;
        }
        
        /// <summary>Deletes one or more <a href="/index.php/Custom_Tags" title="Custom Tags">custom tags</a> you previously registered for the calling application with <a href="/index.php/Fbml.registerCustomTags" title="Fbml.registerCustomTags">fbml.registerCustomTags</a>.</summary>
        public FacebookResponse<Boolean> DeleteCustomTags() {
            System.Collections.Generic.Dictionary<string, object> args = new System.Collections.Generic.Dictionary<string, object>();
            var response = this.ExecuteRequest<Boolean>("Fbml.deleteCustomTags", args);
            return response;
        }
        
        /// <summary>Deletes one or more <a href="/index.php/Custom_Tags" title="Custom Tags">custom tags</a> you previously registered for the calling application with <a href="/index.php/Fbml.registerCustomTags" title="Fbml.registerCustomTags">fbml.registerCustomTags</a>.</summary>
        /// <param name="names">A JSON-encoded array of strings containing the names of the tags you want to delete. If this attribute is missing, all the application's custom tags will be deleted.</param>
        public FacebookResponse<Boolean> DeleteCustomTags(String[] names) {
            System.Collections.Generic.Dictionary<string, object> args = new System.Collections.Generic.Dictionary<string, object>();
            args.Add("names", names);
            var response = this.ExecuteRequest<Boolean>("Fbml.deleteCustomTags", args);
            return response;
        }
    }
}