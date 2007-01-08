// This only works with the GeoIP Country database
// See regionExample.cs, cityExample.cs, and orgExample.cs
// for the Region database, city database, and ISP/Organization databases

using System;
using System.IO;

namespace GeoLiteLib{
public class GeoLiteCountry {
  public static string GetCountryCodeFromIP (string IPAddress, string dataFilePath) {
  
    //open the database
    LookupService ls = new LookupService(dataFilePath, LookupService.GEOIP_MEMORY_CACHE);
    
    //get country of the ip address
    Country c = ls.getCountry(IPAddress);
    
    return c.getCode();   
  }
}
}
