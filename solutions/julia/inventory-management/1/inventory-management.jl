function create_inventory(items)
   inventory = Dict(item => length(items[ items .== item]) for item in unique(items))
end

function add_items(inventory, items)
    for item in items
        if haskey(inventory, item)
            inventory[item] += 1
        else
            inventory[item] = 1
        end
    end
    inventory
end

function decrement_items(inventory, items)
    removed = create_inventory(items)
    for item in unique(items)
        if haskey(inventory, item)
            inventory[item] = (inventory[item] >= removed[item] ? inventory[item] - removed[item] : 0 )
        end
    end
    inventory
end

function remove_item(inventory, item)
    if haskey(inventory, item)
        delete!(inventory, item)
    end
    return inventory
end

function list_inventory(inventory)
    list = []
    for item in sort(collect(keys(inventory)))
        if inventory[item] != 0 
            push!(list, item => inventory[item])
        end
    end
    list
end
