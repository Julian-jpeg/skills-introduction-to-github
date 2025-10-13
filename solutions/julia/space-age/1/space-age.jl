rate = Dict(
    "Mercury" => 0.2408467,
    "Venus" => 0.61519726,
    "Earth" => 1.0,
    "Mars" => 1.8808158,
    "Jupiter" => 11.862615,
    "Saturn" => 29.447498,
    "Uranus" => 84.016846,
    "Neptune" => 164.79132
)


function onEarth(seconds)
    seconds/31_557_600
end

function onMercury(seconds)
    onEarth(seconds)/rate["Mercury"]
end

function onVenus(seconds)
    onEarth(seconds)/rate["Venus"]
end

function onMars(seconds)
    onEarth(seconds)/rate["Mars"]
end

function onJupiter(seconds)
    onEarth(seconds)/rate["Jupiter"]
end

function onSaturn(seconds)
    onEarth(seconds)/rate["Saturn"]
end

function onUranus(seconds)
    onEarth(seconds)/rate["Uranus"]
end

function onNeptune(seconds)
    onEarth(seconds)/rate["Neptune"]
end