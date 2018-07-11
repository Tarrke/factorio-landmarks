if not landmarks then landmarks = {} end

require "landmarks/helpers"

function landmarks.mod_init()
    landmarks.log("Init landmarks mod")

    -- initialize the main data structure
    if not global.landmarks then
        global.landmarks = {}
    end
end

