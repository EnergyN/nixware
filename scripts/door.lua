local IN_USE = 32

local function hasbit(x, p) return x % (p + p) >= p end
local function clearbit(x, p) return hasbit(x, p) and x - p or x end

local used = false

client.register_callback("create_move", function(cmd)
    if used and hasbit(cmd.buttons, IN_USE) then
        cmd.buttons = clearbit(cmd.buttons, IN_USE)
        used = false
    end

    if hasbit(cmd.buttons, IN_USE) then
        used = true
    end
end)