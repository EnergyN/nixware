se.register_event("item_purchase")

local function on_events(e)
if e:get_name() ~= "item_purchase" then return end
local item_name = e:get_string("weapon", "")
local player_name = engine.get_player_info(engine.get_player_for_user_id(e:get_int("userid", 0))).name

client.notify(player_name .. " bought a " .. item_name)
end

client.register_callback("fire_game_event", on_events)