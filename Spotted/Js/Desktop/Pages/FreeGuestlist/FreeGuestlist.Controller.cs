﻿using System;
using System.Html;
using Js.Library;
using jQueryApi;
using Js.Controls.Picker;
using Js.jQueryGetAPI;


namespace Js.Pages.FreeGuestlist
{
	
	public class Controller
	{
		public View view;
		public Controller(View v)
		{
			this.view = v;

			view.Picker.EventSelectionSepcificationChanged = new Js.Controls.Picker.EventSelectionEvent(EventSelectionChange);
			view.Picker.HandlersSet();

			if (Misc.BrowserIsIE)
				jQuery.OnDocumentReady(initialise);
			else
				initialise();
		}
		void initialise()
		{
			view.BackLinkJ.Click(backLinkClick);
			view.ForwardLinkJ.Click(forwardLinkClick);

			view.Picker.FireEventSelectionChange();
		}
		public void backLinkClick(jQueryEvent e)
		{
			e.PreventDefault();
			view.Picker.DateModify(-7, "d");
		}
		public void forwardLinkClick(jQueryEvent e)
		{
			e.PreventDefault();
			view.Picker.DateModify(7, "d");
		}
		void updateDate(DateStub newDate)
		{
			int year = new Date().GetFullYear();
			DateStub previousMonday = newDate.PreviousMonday();
			DateStub nextSunday = newDate.NextSunday();
			if (newDate.NextSunday().Month == newDate.PreviousMonday().Month)
			{
				view.MonthLabel.InnerHTML = previousMonday.Day + " - " + nextSunday.Day + " " + nextSunday.MonthNameFull + (nextSunday.Year != year ? (" " + nextSunday.Year.ToString()) : "");
			}
			else
			{
				view.MonthLabel.InnerHTML = previousMonday.Day + " " + previousMonday.MonthNameFull + " - " + nextSunday.Day + " " + nextSunday.MonthNameFull + (nextSunday.Year != year ? (" " + nextSunday.Year.ToString()) : "");
			}
		}
		string previousSpecificationState = "";
		public void EventSelectionChange(object o, EventSelectionArgs e)
		{

			bool hasPlace = e.Specification != null && e.Specification.Place != null && e.Specification.Place.K > 0;
			bool hasMusic = e.Specification != null && e.Specification.Music != null && e.Specification.Music.K > 0;
			if (!hasMusic && !hasPlace)
			{
				view.CalendarHolderOuter.Style.Display = "none";
				return;
			}

			string specificationState = 
				"place-" + (e.Specification.Place == null ? "0" : e.Specification.Place.K.ToString()) + "|" +
				"music-" + (e.Specification.Music == null ? "0" : e.Specification.Music.K.ToString()) + "|" +
				"date-" + (e.Specification.Date == null ? "0" : e.Specification.Date.ToString());

			if (specificationState != previousSpecificationState)
			{
				previousSpecificationState = specificationState;

				string url = "/support/getuncached.aspx?type=calendar&freeguestlist=1" +
					"&placek=" + (e.Specification.Place == null ? "0" : e.Specification.Place.K.ToString()) +
					"&musictypek=" + (e.Specification.Music == null ? "0" : e.Specification.Music.K.ToString()) +
					"&date=" + (e.Specification.Date == null ? "0" : e.Specification.Date.ToString());

				updateDate(e.Specification.Date);

				requestId++;

				int currentRequestId = requestId;
				int currentLoadId = loadId;

				jQueryGet.Get(
					url,
					null,
					new ActionGet(gotCalendar),
					null,
					currentRequestId.ToString());

				Window.SetTimeout(
					delegate
					{
						if (loadId == currentLoadId)
						{
							view.CalendarLoadingOverlay.Style.Height = view.CalendarHolder.OffsetHeight.ToString() + "px";
							view.CalendarLoadingOverlay.Style.Display = "";
							view.LoadingLabel.Style.Display = "";
							view.MonthLabel.Style.Display = "none";
						}
					},
					100);
			}
		}

		int requestId = 0;
		int loadId = 0;
		void gotCalendar(string data, string textStatus, jQueryXmlHttpRequest req, string args)
		{
			int requestIdFromArgs = int.Parse((string)args);
			if (requestId == requestIdFromArgs)
			{
				//Debug("gotCalendar data.Length = " + data.Length.ToString() + ", args = " + (args == null ? "null" : args.ToString()) + " (processing)");
				loadId++;
				view.CalendarHolder.InnerHTML = data;
				view.CalendarHolderOuter.Style.Display = "";
				view.CalendarLoadingOverlay.Style.Display = "none";
				view.LoadingLabel.Style.Display = "none";
				view.MonthLabel.Style.Display = "";
			}
			//else
			//	Debug("gotCalendar data.Length = " + data.Length.ToString() + ", args = " + (args == null ? "null" : args.ToString()) + " (skipping)");
		}

		#region Debug
		int debugCount = 0;
		void Debug(string text)
		{
			view.Debug.Style.Display = "";
			debugCount++;
			view.Debug.Value = debugCount.ToString() + " " + text + "\n" + view.Debug.Value;
		}
		#endregion
	}
	
}
