
function landmarks.log(message)
    if game then
        for _, p in pairs(game.players) do
            if (landmarks.show_log(p)) then
                p.print(message)
            end
        end
    else
        error(serpent.dump(message, {compact = false, nocode = true, indent = ' '}))
    end

end

function landmarks.get_player_list()
    local result = {{"landmarks.none"} }

    for _, player in pairs(game.players) do
        table.insert(result, player.name)
    end

    local lookup = {}
    for i, player in ipairs(result) do
        lookup[player] = i
    end

    landmarks.log("Created Assignee list: " .. serpent.block(result))

    return result, lookup
end

function landmarks.generate_id()
  if not global.landmarks.next_id then
    global.landmarks.next_id = 1
  end

  global.landmarks.next_id = global.landmarks.next_id + 1
  return global.landmarks.next_id - 1
end

function landmarks.show_log(player)
    return settings.get_player_settings(player)["landmarks-show-log"].value
end
