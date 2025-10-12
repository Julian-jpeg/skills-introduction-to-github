function clean_ingredients(dish_name, dish_ingredients)
    dish_name, Set(dish_ingredients)
end

function check_drinks(drink_name, drink_ingredients)
    drink_name*" "*"$(isdisjoint(ALCOHOLS,Set(drink_ingredients)) ? "Mocktail" : "Cocktail")"
end

function categorize_dish(dish_name, dish_ingredients)
    categories = [VEGAN => "VEGAN", VEGETARIAN => "VEGETARIAN", PALEO => "PALEO", KETO => "KETO", OMNIVORE => "OMNIVORE"]
    for category in categories
        if issubset(dish_ingredients, category.first)
            return dish_name*": "*string(category.second)
        end
    end
end

function tag_special_ingredients(dish)
    name, ingredients = dish
    if typeof(ingredients) != Set{String}
        ingredients = Set(ingredients)
    end
    return name, intersect(ingredients,SPECIAL_INGREDIENTS)
end

function compile_ingredients(dishes)
    ingredients = Set()
    for dish in dishes
        ingredients = union(ingredients,dish)
    end
    return ingredients
end

function separate_appetizers(dishes, appetizers)
    dishes = Set(dishes)
    appetizers = Set(appetizers)
    return collect(setdiff(dishes,appetizers))
end

function singleton_ingredients(dishes, intersection)
    singleton = Set()
    for dish in dishes
        singleton = union(singleton, setdiff(dish,intersection))
    end
    return singleton
end
