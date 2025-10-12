function get_vector_of_wagons(args...)
    return collect(args)
end

function fix_vector_of_wagons(each_wagons_id, missing_wagons)
    first, second, locomotive, rest... = each_wagons_id
    fixed = locomotive, missing_wagons..., rest..., first, second
    return collect(fixed)
end

function add_missing_stops(route, stops...)
    from, to = route
    stop_cities = [stop.second for stop in stops]
    return Dict(from, to, "stops" => stop_cities)
end

function extend_route_information(route; more_route_information...)
    from, to = route
    
    return  Dict( from, to, more_route_information...)
end
