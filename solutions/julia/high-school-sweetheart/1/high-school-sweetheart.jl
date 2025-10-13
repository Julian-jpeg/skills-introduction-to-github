function cleanupname(name)
    name |> (x-> split(x, "-")) |> (x->join(x, " ")) |> strip
end

function firstletter(name)
   name |> cleanupname |> (s->s[1]) |> string
end

function initial(name)
    name |> firstletter |> uppercase |> (x -> join([x,"."]))
end

function couple(name1, name2)
 [name1,name2] |> ( x -> "❤ "*initial(x[1])*"  +  "*initial(x[2])*" ❤") 
end
