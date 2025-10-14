function all_15(ratings)
    filter(x -> x == 1 || x == 5, ratings) == ratings
end

function emphatics(customers)
    filter(x -> all_15(x.second),customers)
end

function tobinary(ratings)
    map(x -> x == 1 ? 0 : 1, ratings)
end

function tobinarymatrix(ratings)
    @show ratings
    @show map(tobinary, ratings) .|> transpose |> (x -> reduce(vcat, x))
end
