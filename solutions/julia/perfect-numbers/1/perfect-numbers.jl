function aliquot(N)
    sum = 0
    for i = 1:(N-1)
        if N % i == 0
            @show N i sum
            sum += i
        end
    end
    return sum
end

function isperfect(N)
    if N == 1
        return false
    elseif N < 1
        throw(DomainError(N, "invalid number"))
    end
    N == aliquot(N)
end

function isabundant(N)
    if N == 1
        return false
    elseif N < 1
        throw(DomainError(N, "invalid number"))
    end
    aliquot(N) > N
end

function isdeficient(N)
    
    if N == 1
        return true
    elseif N < 1
        throw(DomainError(N, "invalid number"))
    else
        aliquot(N) < N
    end
end

    
