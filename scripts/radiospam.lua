local commands = { "coverme", "takepoint", "holdpos", "regroup", "followme", "takingfire", "go", "sticktog", "report", "roger", "cheer", "thanks", "enemyspot", "needbackup", "sectorclear", "negative"  }

local time = 0.0

client.register_callback("create_move", function ()

	--RadioSpam

	local realtime = globalvars.get_real_time()

	if realtime >= time then

		local random_command = commands[math.random(17)]

		engine.execute_client_cmd(random_command)

		time = realtime + 0.1
	end

end)