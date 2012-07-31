using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using Bobs;

namespace Spotted.Templates.Usrs
{
	public partial class GroupMembers : System.Web.UI.UserControl
	{
		private void Page_Load(object sender, System.EventArgs e)
		{
			// Put user code to initialize the page here
		}

		protected string BuddyStart
		{
			get
			{
				if ((CurrentUsr.JoinedBuddy != null && CurrentUsr.JoinedBuddy.FullBuddy) || (Usr.Current != null && CurrentUsr.K == Usr.Current.K))
					return "<b>";
				else
					return "";
			}
		}
		protected string BuddyEnd
		{
			get
			{
				if ((CurrentUsr.JoinedBuddy != null && CurrentUsr.JoinedBuddy.FullBuddy) || (Usr.Current != null && CurrentUsr.K == Usr.Current.K))
					return "</b>";
				else
					return "";
			}
		}

		protected Usr CurrentUsr
		{
			get
			{
				if (currentUsr == null)
					currentUsr = ((Usr)((DataListItem)NamingContainer).DataItem);
				return currentUsr;
			}
		}
		Usr currentUsr;

		#region Web Form Designer generated code
		override protected void OnInit(EventArgs e)
		{
			//
			// CODEGEN: This call is required by the ASP.NET Web Form Designer.
			//
			InitializeComponent();
			base.OnInit(e);
		}

		/// <summary>
		///		Required method for Designer support - do not modify
		///		the contents of this method with the code editor.
		/// </summary>
		private void InitializeComponent()
		{
			
		}
		#endregion
	}
}