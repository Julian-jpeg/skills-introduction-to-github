function message(msg)
    strip(join(split(msg)[2:end].*" "))
end

function log_level(msg)
    lowercase(split(msg)[1][2:end-2])
end

function reformat(msg)
    message(msg)*" "*"("*log_level(msg)*")"
end
