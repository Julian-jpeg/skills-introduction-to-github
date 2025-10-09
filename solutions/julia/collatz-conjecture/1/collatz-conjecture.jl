function collatz_steps(number)
    if number < 1
        throw(DomainError(number, "not a positive integer"))
    end
    steps = 0
    return collatz_iteration(number,steps)
end

function collatz_iteration(number, steps)
    if number == 1
        return steps
    elseif number % 2 == 0
        number = div(number,2)
    else 
        number = 3number + 1
    end
    return collatz_iteration(number, steps + 1)
end
