function score(x, y)
    r2 = x^2 + y^2
    if r2 > 100
        0
    elseif  25 < r2 <= 100
        1
    elseif 1 < r2 <= 25
        5
    else 
        10
    end
end
