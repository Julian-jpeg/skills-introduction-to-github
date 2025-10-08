function raindrops(number)
    if (number%3 != 0)&&(number%5 != 0)&&(number%7 != 0)
        return string(number)
    end
    drop = ""
    if (number%3 == 0) 
        drop = "Pling"
    end
    if (number%5 == 0)
        drop = string(drop,"Plang")
    end
    
    if (number%7 == 0)
        drop = string(drop, "Plong")
    end
    return drop
end
