﻿using System;
using System.Collections.Generic;
using System.Data.Linq;
using System.Data.Linq.Mapping;
using System.Linq;
using System.Text;
using DataInterface;
using Model.Entities;
using Model.Repositories;

namespace Model
{
	public interface IDsiDataContext : IUnitOfWork, IDisposable
	{
		IEvents Events { get; }
		ITable<EventMusicType> EventMusicTypes { get; }
		IVenues Venues { get; }
		IThemes Themes { get; }
		ITable<Group> Groups { get; }
		ITable<Thread> Threads { get; }
		DataLoadOptions LoadOptions { get; set; }
		IQueryable<IFHtmCoverCircleLatLonResult> FHtmCoverCircleLatLon(double lat, double lon, double radius);
		IQueryable<IFHtmCoverCircleLatLonResult> FHtmCoverCircleLatLon(double south, double west, double north, double east);
		IQueryable<IFHtmCoverRegionResult> FHtmCoverRect(double south, double west, double north, double east);
		double? FDistanceLatLon(double? lat1, double? lon1, double? lat2, double? lon2);
	}
}