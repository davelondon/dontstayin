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
    
    
    public class FriendsController : FacebookApiController {
        
        public FriendsController(IFacebookContext facebookContext) : 
                base(facebookContext) {
        }
        
        /// <summary>Returns whether or not each pair of specified users is friends with each other.</summary>
        /// <param name="uids1">A list of user IDs matched with <code>uids2</code>. This is a comma-separated list of user IDs.</param>
        /// <param name="uids2">A list of user IDs matched with <code>uids1</code>. This is a comma-separated list of user IDs.</param>
        public FacebookResponse<FacebookList<FriendInfo>> AreFriends(String[] uids1, String[] uids2) {
            System.Collections.Generic.Dictionary<string, object> args = new System.Collections.Generic.Dictionary<string, object>();
            args.Add("uids1", uids1);
            args.Add("uids2", uids2);
            var response = this.ExecuteRequest<FacebookList<FriendInfo>>("Friends.areFriends", args);
            return response;
        }
        
        /// <summary>Returns the identifiers for the current user's Facebook friends.</summary>
        public FacebookResponse<List<Int64>> Get() {
            System.Collections.Generic.Dictionary<string, object> args = new System.Collections.Generic.Dictionary<string, object>();
            var response = this.ExecuteRequest<List<Int64>>("Friends.get", args);
            return response;
        }
        
        /// <summary>Returns the identifiers for the current user's Facebook friends.</summary>
        /// <param name="uid">The <a href="/index.php/User_ID" title="User ID">user ID</a> for the user whose friends you want to return. Specify the <code>uid</code> when calling this method without a session key.</param>
        public FacebookResponse<List<Int64>> Get(Int64 uid) {
            System.Collections.Generic.Dictionary<string, object> args = new System.Collections.Generic.Dictionary<string, object>();
            args.Add("uid", uid);
            var response = this.ExecuteRequest<List<Int64>>("Friends.get", args);
            return response;
        }
        
        /// <summary>Returns the identifiers for the current user's Facebook friends.</summary>
        /// <param name="flid">Returns the friends in a friend list.</param>
        public FacebookResponse<List<Int64>> GetList(Int64 flid) {
            System.Collections.Generic.Dictionary<string, object> args = new System.Collections.Generic.Dictionary<string, object>();
            args.Add("flid", flid);
            var response = this.ExecuteRequest<List<Int64>>("Friends.get", args);
            return response;
        }
        
        /// <summary>Returns the identifiers for the current user's Facebook friends who have authorized the specific calling application.</summary>
        public FacebookResponse<List<Int64>> GetAppUsers() {
            System.Collections.Generic.Dictionary<string, object> args = new System.Collections.Generic.Dictionary<string, object>();
            var response = this.ExecuteRequest<List<Int64>>("Friends.getAppUsers", args);
            return response;
        }
        
        /// <summary>Returns the identifiers for the current user's Facebook friend lists.</summary>
        public FacebookResponse<FacebookList<Friendlist>> GetLists() {
            System.Collections.Generic.Dictionary<string, object> args = new System.Collections.Generic.Dictionary<string, object>();
            var response = this.ExecuteRequest<FacebookList<Friendlist>>("Friends.getLists", args);
            return response;
        }
    }
}
