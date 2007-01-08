csc /t:library  /out:GeoLiteCountry.dll *.cs 
move GeoLiteCountry.dll ..\deploy\bin
pause