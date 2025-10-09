function eggcount(number)
    eggs = 0
    if number == 0
        return eggs
    end

    for i = 0:log2( iseven(number) ? number : (number - 1))
        eggs += ((Int(2^i) & number) != 0)
    end
    return eggs
end
