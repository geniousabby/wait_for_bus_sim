// Get the weather
if (ds_map_find_value(async_load, "id") == weather_request) {
    if (ds_map_find_value(async_load, "status") == 0) {
        var json_string = async_load[? "result"];
        var data = json_parse(json_string);
        
        // 1. Get Temperature (Inside the "main" struct)
        if (variable_struct_exists(data, "main")) {
            current_temp = string(data.main.temp) + "°C";
        }
        
        // 2. Get Description (Inside an Array called "weather")
        // OpenWeatherMap uses [ ] brackets in JSON for weather, so we use [0]
        if (variable_struct_exists(data, "weather")) {
            weather_desc = data.weather[0].description;
        }
    } else {
        current_temp = "Error";
    }
}