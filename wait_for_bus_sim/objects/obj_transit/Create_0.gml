// Configuration
var api_key = "31c38fce6dda835376fda5a2367917a1";
var city = "Vancouver";
var url = "https://api.openweathermap.org/data/2.5/weather?q=" + city + "&appid=" + api_key + "&units=metric";

// Send the request
weather_request = http_get(url);
current_temp = "Fetching...";
weather_desc = "";
