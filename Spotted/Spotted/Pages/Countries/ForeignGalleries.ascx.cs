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

namespace Spotted.Pages.Countries
{
	public partial class ForeignGalleries : DsiUserControl
	{
		private void Page_Init(object sender, System.EventArgs e)
		{
			
		}
		private void Page_Load(object sender, System.EventArgs e)
		{
			ScriptManager.RegisterClientScriptBlock(this, typeof(Page), "DbButtonInit", "DbButtonInit(" + Bobs.Vars.LanguageString + ");", true);

			if (!Page.IsPostBack)
			{
				if (Mode.Equals(Modes.Galleries))
					ChangePanel(PanelItems);
			}
		}

		#region CurrentCountry
		public Country CurrentCountry
		{
			get
			{
				return ContainerPage.Url.ObjectFilterCountry;
			}
		}
		#endregion

		#region InfoPanel
		public void InfoPanel_Load(object o, System.EventArgs e)
		{
			ContainerPage.SetPageTitle(CurrentCountry.FriendlyName + " foreign galleries");
		}
		#endregion

		#region Cal
		public void Cal_Load(object o, System.EventArgs e)
		{
			Cal.MonthUrlGetter = new Controls.Cal.MonthUrlDelegate(GetMonthUrl);
			Cal.DayUrlGetter = new Controls.Cal.DayUrlDelegate(GetDayUrl);
			Cal.DateTimeColumn = new Column(Gallery.Columns.LastLiveDateTime);
			Cal.TableElement = Gallery.EventVenuePlaceJoin;
			Cal.QueryCondition = new And(Gallery.ShowOnSiteQ, new Q(Place.Columns.CountryK, QueryOperator.NotEqualTo, CurrentCountry.K));
		}
		public string GetMonthUrl(DateTime d, params object[] par)
		{
			return CurrentCountry.UrlForeignGalleriesMonth(d);
		}
		public string GetDayUrl(DateTime d, params object[] par)
		{
			return CurrentCountry.UrlForeignGalleriesDate(d);
		}
		#endregion

		#region PanelItems
		private void PanelPhotos_Load(object sender, System.EventArgs e)
		{
			this.BindItems();
		}
		#region BindItems()
		void BindItems()
		{
			if (ItemsPage != Items.Paging.ReturnedPage)
				ItemsPage = Items.Paging.ReturnedPage;

			if (Items.Count == 0)
			{
				ItemsPanel.Visible = false;
				NoItemsPanel.Visible = true;
			}
			else
			{
				ItemsPanel.Visible = true;
				NoItemsPanel.Visible = false;

				if (Items.Paging.ShowNoLinks)
				{
					PageP.Visible = false;
					PageP1.Visible = false;
				}
				else
				{
					PageP.Visible = true;
					PageP1.Visible = true;

					string urlNextPage = ContainerPage.Url.CurrentUrl("p", ((int)(ItemsPage + 1)).ToString());
					string urlPrevPage = "";
					if (ItemsPage == 2)
						urlPrevPage = ContainerPage.Url.CurrentUrl("p", null);
					else
						urlPrevPage = ContainerPage.Url.CurrentUrl("p", ((int)(ItemsPage - 1)).ToString());

					NextPageLink1.Enabled = Items.Paging.ShowNextPageLink;
					NextPageLink1.NavigateUrl = urlNextPage;
					PrevPageLink1.Enabled = Items.Paging.ShowPrevPageLink;
					PrevPageLink1.NavigateUrl = urlPrevPage;

					NextPageLink.Enabled = Items.Paging.ShowNextPageLink;
					NextPageLink.NavigateUrl = urlNextPage;
					PrevPageLink.Enabled = Items.Paging.ShowPrevPageLink;
					PrevPageLink.NavigateUrl = urlPrevPage;

					if (!NextPageLink1.Enabled)
						NextPageLink1.CssClass = "DisabledAnchor";
					if (!NextPageLink.Enabled)
						NextPageLink.CssClass = "DisabledAnchor";
					if (!PrevPageLink1.Enabled)
						PrevPageLink1.CssClass = "DisabledAnchor";
					if (!PrevPageLink.Enabled)
						PrevPageLink.CssClass = "DisabledAnchor";
				}

				DataList.DataSource = Items;
				DataList.ItemTemplate = this.LoadTemplate("/Templates/Galleries/Default.ascx");
				DataList.DataBind();

			}

		}
		#endregion
		#region Items
		GallerySet Items
		{
			get
			{
				if (items == null)
				{

					int itemsPerPage = 20;
					Query q = new Query();

					q.Paging.RecordsPerPage = itemsPerPage;
					q.Paging.RequestedPage = ItemsPage;

					q.TableElement = Templates.Galleries.Default.PerformJoins(null, false);
					q.Columns = Templates.Galleries.Default.Columns;

					if (ContainerPage.Url.HasDayFilter ||
						ContainerPage.Url.HasMonthFilter ||
						ContainerPage.Url.HasYearFilter)
						q.OrderBy = new OrderBy(Gallery.Columns.LastLiveDateTime, OrderBy.OrderDirection.Ascending);
					else
						q.OrderBy = new OrderBy(Gallery.Columns.LastLiveDateTime, OrderBy.OrderDirection.Descending);


					Q dateQ = new Q(true);
					if (ContainerPage.Url.HasDayFilter)
						dateQ = new And(
							new Q(Gallery.Columns.LastLiveDateTime, QueryOperator.LessThan, ContainerPage.Url.DateFilter.AddDays(1)),
							new Q(Gallery.Columns.LastLiveDateTime, QueryOperator.GreaterThanOrEqualTo, ContainerPage.Url.DateFilter));
					else if (ContainerPage.Url.HasMonthFilter)
						dateQ = new And(
							new Q(Gallery.Columns.LastLiveDateTime, QueryOperator.LessThan, ContainerPage.Url.DateFilter.AddMonths(1)),
							new Q(Gallery.Columns.LastLiveDateTime, QueryOperator.GreaterThanOrEqualTo, ContainerPage.Url.DateFilter));
					else if (ContainerPage.Url.HasYearFilter)
						dateQ = new And(
							new Q(Gallery.Columns.LastLiveDateTime, QueryOperator.LessThan, ContainerPage.Url.DateFilter.AddYears(1)),
							new Q(Gallery.Columns.LastLiveDateTime, QueryOperator.GreaterThanOrEqualTo, ContainerPage.Url.DateFilter));

					q.QueryCondition = new And(
						dateQ,
						Gallery.ShowOnSiteQ,
						new Q(Country.Columns.K, QueryOperator.NotEqualTo, CurrentCountry.K)
					);

					items = new GallerySet(q);

				}
				return items;
			}
			set
			{
				items = value;
			}
		}
		GallerySet items;
		#endregion
		#region ItemsPage
		protected int ItemsPage
		{
			get
			{
				if (itemsPage == -1)
				{
					if (ContainerPage.Url["p"].IsInt)
						itemsPage = ContainerPage.Url["p"];
					else
						itemsPage = 1;
				}
				return itemsPage;
			}
			set
			{
				itemsPage = value;
			}
		}
		int itemsPage = -1;
		#endregion

		#endregion

		#region PageMode
		Modes Mode
		{
			get
			{
				if (ContainerPage.Url[0].Equals("xxx"))
					return Modes.XXX;
				else
					return Modes.Galleries;
			}
		}
		public enum Modes
		{
			Galleries,
			XXX
		}
		#endregion

		#region ChangePanel
		void ChangePanel(Panel p)
		{
			PanelItems.Visible = p.Equals(PanelItems);
		}
		#endregion

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
			this.Load += new System.EventHandler(this.PanelPhotos_Load);
			this.Load += new System.EventHandler(this.InfoPanel_Load);
			this.Load += new System.EventHandler(this.Cal_Load);

		}
		#endregion
	}
}
