function time_to_mix_juice(juice)
    juices = [["Pure Strawberry Joy", 0.5],["Energizer", 1.5] ,["Green Garden", 1.5], ["Tropical Island", 3], ["All or Nothing",5]]
    for i in 1:5
        if juice == juices[i][1]
            return juices[i][2]
        end
    end
    return 2.5
end

function wedges_from_lime(size)
    (size ==  "small") ? 6 : ((size == "medium") ? 8 : ((size == "large") ? 10 : 0))
end

function limes_to_cut(needed, limes)
    count = 0 
    if length(limes) == 0 return 0 end
    while needed > 0
        needed -= wedges_from_lime(limes[1])
        popfirst!(limes)
        count += 1
        if length(limes) == 0 break end
    end
    count
end

function order_times(orders)
    times = [time_to_mix_juice(order) for order in orders]
end

function remaining_orders(time_left, orders)
    while time_left > 0
        
            time_left -= time_to_mix_juice(orders[1])
            popfirst!(orders) 
            if length(orders) == 0 break end
    end
    return orders
end
