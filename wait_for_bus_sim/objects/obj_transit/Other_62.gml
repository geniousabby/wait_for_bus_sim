// Get the bus
if (ds_map_find_value(async_load, "id") == schedule_request) {
    if (ds_map_find_value(async_load, "status") == 0) {
        var json_string = async_load[? "result"];
        var data = json_parse(json_string);
        
        
        // Get Description (Inside an Array called "bus")
        // OpenWeatherMap uses [ ] brackets in JSON for weather, so we use [0]
        if (variable_struct_exists(data, "bus")) {
            schedule_request = data.weather[0].description;
        }
    } else {
        current_bus = "Error";
    }
}