<%@ WebService Language="C#" class="GeoLiteCountryWebService" %>

using System;
using System.Web.Services;

public class GeoLiteCountryWebService : WebService
{	
	
	public GeoLiteCountryWebService()
	{
		
	}	

  [WebMethod(Description="This method will take an IP address and an Access Key and return the country code for that IP.",EnableSession=false)]
	public string GetCountryCode(string IPAddress, string accessKey)
	{
		if (accessKey != "007")
      return 	"--";
    else
      return GetCode(IPAddress);
	}
	
	private string GetCode(string IPAddress)
	{
	 return (GeoLiteLib.GeoLiteCountry.GetCountryCodeFromIP(IPAddress, Server.MapPath("geoip.dat")));
	}
	
}
