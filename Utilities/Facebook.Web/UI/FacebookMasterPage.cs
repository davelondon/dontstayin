﻿using System;
using System.Web.UI;

namespace Facebook.Web.UI
{
    public class FacebookMasterPage : MasterPage
    {
        public FacebookHttpContext FbContext { get { return FacebookHttpContext.Current; } }
        public FacebookHttpRequest FbRequest { get { return FacebookHttpRequest.Current; } }
        public FacebookHttpSession FbSession { get { return FacebookHttpSession.Current; } }
    }
}
