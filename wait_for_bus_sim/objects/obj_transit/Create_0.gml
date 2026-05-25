// Configuration
var api_key = "";
var city = "Vancouver";
var url = "" + city + "&appid=" + api_key;

// Send the request
schedule_request = http_get(url);
current_bus = "Fetching...";
weather_desc = "";
