const E = [
    0 0 1 1 0 0 0 0 0 0 0 0 0 0 1 1 0 0;
    0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0;
    0 1 0 0 0 1 0 0 0 0 0 0 1 0 0 0 1 0;
    0 1 0 0 1 0 1 0 0 0 0 1 0 1 0 0 1 0;
    0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0;
    1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1;
    0 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1 0;
    0 1 0 0 0 0 0 1 0 0 1 0 0 0 0 0 1 0;
    0 1 0 0 0 0 0 0 1 1 0 0 0 0 0 0 1 0;
    0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0;
    0 0 1 1 0 0 0 0 0 0 0 0 0 0 1 1 0 0;
]

function frown!(E)
    E[7,:],E[9,:]=E[9,:],E[7,:]
end

function frown(E)
    A = copy(E)
    frown!(A)
    return A
end

function stickerwall(E)
    vert = ones(12,1)
    one = [zeros(1,19) 1 zeros(1,19)]
    hor =[one; ones(1,39); one]
    smile_frown = [E zeros(11,1) ones(11,1) zeros(11,1) frown(E)]
    frown_smile= reverse(smile_frown, dims=2)
    [smile_frown ; hor; frown_smile]
end

function colpixelcount(E)
    E |> eachcol .|> (x -> x.*sum(x)) |> (x -> hcat(x...))
end

function render(E)
    E .|> (x -> x ==0 ? " " : "X") |> eachrow .|> (x -> join(x)) |> (x -> join(x,"\n") )
end
