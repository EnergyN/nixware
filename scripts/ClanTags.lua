client.notify('Lua Succesfully Loaded')
client.notify('Made By Morris ')

ui.add_combo( "Clantag changer","clantag", {"DISABLED","Rose.cc","Symphony.su","GameSense","GameSense_2","Fatality","Ev0lve","Aimware","NixWare_Ad", }, 0 )
ui.add_slider_int("Clantag speed", "clantagspeed", 900, 1000, 1000)

local a1 = 0
local a2 = 0
local a3
local m_vecVelocity = se.get_netvar("DT_BasePlayer", "m_vecVelocity[0]")
local m_bIsScoped = se.get_netvar("DT_CSPlayer", "m_bIsScoped")
local m_iTeamNum = se.get_netvar("DT_BaseEntity", "m_iTeamNum")
local fov = se.get_convar("fov_cs_debug")
local distance = se.get_convar("cam_idealdist")
local side = false

local delta = 0

local function paint_th()
if ui.get_bool("falsed") then
   ui.set_bool("falsed", false)	
end
    if ui.get_bool("ovfov") then
       if ui.get_int("skins_override_fov") == 0 then
	      fov:set_int(91)
	   else
          fov:set_int(ui.get_int("skins_override_fov") + 1)
	   end
	else
	   fov:set_int(0)
	end
    ------------ Clantag
    if ui.get_int("clantag") == 0 then 
    a3 =
    {
    [1]  =  " "
    }
    elseif ui.get_int("clantag") == 1 then	
    a3 =
    {
  [0]  =  "R",
  [1]  =  "R",
  [2]  =  "R",
  [3]  =  "Ro",
  [4]  =  "Ro",
  [5]  =  "Ros",
  [6]  =  "Ros",
  [7]  =  "Ros",
  [8]  =  "Rose",
  [9]  =  "Rose",
  [10]  =  "Rose",
  [11]  =  "Rose.",
  [12]  =  "Rose.c",
  [13]  =  "Rose.c",
  [14]  =  "Rose.cc",
  [15]  =  "Rose.cc",
  [16]  =  "Rose.cc",
  [17]  =  "Rose.cc",
  [18]  =  "Rose.cc",
  [19]  =  "Rose.cc",
  [20]  =  "Rose.cc",
  [21]  =  "Rose.c",
  [22]  =  "Rose.c",
  [23]  =  "Rose.c",
  [24]  =  "Rose.c",
  [25]  =  "Rose.",
  [26]  =  "Rose",
  [27]  =  "Rose",
  [28]  =  "Ros",
  [29]  =  "Ros",
  [30]  =  "Ros",
  [31]  =  "Ro",
  [32]  =  "Ro",
  [33]  =  "Ro",
  [34]  =  "R",
  [35]  =  "R",
  [36]  =  "R",
  [37]  =  " ",
    }
function paint()
    if engine.is_in_game() then
        if a1 < globalvars.get_tick_count() then     
            
            if a2 > 70 then
                a2 = 0
            end
			
            se.set_clantag(a3[a2])
			a2 = a2 + 1
            a1 = globalvars.get_tick_count() + 24
        end
    end
end
    elseif ui.get_int("clantag") == 2 then
    a3 =
    {
  " ",
  "N ",
  "N3 ",
  "Ne ",
  "Ne\\ ",
  "Ne\\/ ",
  "Nev ",
  "Nev3 ",
  "Neve ",
  "Neve| ",
  "Neve|2 ",
  "Never| ",
  "Never|_ ",
  "Neverl ",
  "Neverl0 ",
  "Neverlo ",
  "Neverlo5 ",
  "Neverlos ",
  "Neverlos3 ",
  "Neverlose ",
  "Neverlose. ",
  "Neverlose.< ",
  "Neverlose.c< ",
  "Neverlose.cc ",
  "Neverlose.c< ",
  "Neverlose.< ",
  "Neverlose. ",
  "Neverlose ",
  "Neverlos3 ",
  "Neverlos ",
  "Neverlo_ ",
  "Neverlo5 ",
  "Neverlo ",
  "Neverl_ ",
  "Never|0 ",
  "Never| ",
  "Neve|2 ",
  "Neve| ",
  "Neve ",
  "Nev3 ",
  "Nev ",
  "Ne\\/ ",
  "Ne\\ ",
  "Ne ",
  "N3 ",
  "N ",
  "|\\| ",
    }	
    elseif ui.get_int("clantag") == 3 then
    a3 =
    {
    [1]  =  "g.wtf              ",
    [2]  =  "ga.wtf             ",
    [3]  =  "gam.wtf            ",
    [4]  =  "game.wtf           ",
    [5]  =  "games.wtf          ",
    [6]  =  "gamese.wtf         ",
    [7]  =  "gamesen.wtf        ",
    [8]  =  "gamesens.wtf       ",
    [9]  =  "gamesense.wtf      ",
    [10]  =  "      amesense.wtf",
    [11]  =  "       mesense.wtf",
    [12]  =  "        esense.wtf",
    [13]  =  "         sense.wtf",
    [14]  =  "          ense.wtf",
    [15]  =  "           nse.wtf",
    [16]  =  "            se.wtf",
    [17]  =  "            .wtf  ",
    }
    elseif ui.get_int("clantag") == 4 then
    a3 =
    {
  [0]  =  " ",
  [1]  =  " ",
  [2]  =  " ",
  [3]  =  " ",
  [4]  =  " ",
  [5]  =  " ",
  [6]  =  " ",
  [7]  =  " ",
  [8]  =  "g",
  [9]  =  "ga",
  [10]  =  "gam",
  [11]  =  "game",
  [12]  =  "games",
  [13]  =  "gamese",
  [14]  =  "gamesen",
  [15]  =  "gamesens",
  [16]  =  "gamesense",
  [17]  =  "gamesense",
  [18]  =  "gamesense",
  [19]  =  "gamesense",
  [20]  =  "gamesense",
  [21]  =  "gamesense",
  [22]  =  "gamesense",
  [23] =  "gamesense",
  [24] =  "gamesens",
  [25] =  "gamesen",
  [26] =  "gamese",
  [27] =  "games",
  [28] =  "game",
  [29] =  "gam",
  [30] =  "ga",
  [31] =  "g",
  [32] =  " ",
    }
    elseif ui.get_int("clantag") == 5 then 
    a3 =
    {
     [1]  =  " ",
    [2]  =  "f",
    [3]  =  "fa",
    [4]  =  "fat",
    [5]  =  "fata",
    [6]  =  "fatal",
    [7]  =  "fatali",
    [8]  =  "fatality",
    [9]  =  "fatality",
    [10]  =  "fatality",
    [11]  =  "fatality",
    [12]  =  "fatality",
    [13]  =  "atality",
    [14]  =  "tality",
    [15]  =  "ality",
    [16]  =  "lity",
    [17]  =  "ity",
    [18]  =  "ty",
    [19]  =  "y",
    [20]  =  " ",
    }
    elseif ui.get_int("clantag") == 6 then 
    a3 =
    {
     [1]  =  " ",
    [2]  =  "e",
    [3]  =  "ev",
    [4]  =  "ev0",
    [5]  =  "ev0l",
    [6]  =  "ev0l",
    [7]  =  "ev0lv",
    [8]  =  "ev0lve",
    [9]  =  "ev0lve.",
    [10]  =  "ev0lve.x",
    [11]  =  "ev0lve.xy",
    [12]  =  "ev0lve.xyz",
    [13]  =  "ev0lve.xyz",
    [14]  =  "ev0lve.xyz",
    [15]  =  "ev0lve.xyz",
    [16]  =  "ev0lve.xyz",
    [17]  =  "ev0lve.xyz",
    [18]  =  "v0lve.xyz",
    [19]  =  "0lve.xyz",
    [20]  =  "lve.xyz",
    [21]  =  "ve.xyz",
    [22]  =  "e.xyz",
    [23]  =  ".xyz",
    [24]  =  "xyz",
    [25]  =  "yz",
    [26]  =  "z",
    [27]  =  " ",
    }
    elseif ui.get_int("clantag") == 7 then
    a3 =
    {

    [1]  =  "A",
    [2]  =  "AI",
    [3]  =  "AIM",
    [4]  =  "AIMW",
    [5]  =  "AIMWA",
    [6]  =  "AIMWAR",
    [7]  =  "AIMWARE",
    [8]  =  "AIMWARE ",
    [9]  =  "AIMWARE.",
    [10]  =  "AIMWARE.N",
    [11]  =  "AIMWARE.NE",
    [12]  =  "AIMWARE.NET",
    [13]  =  "AIMWARE.NET",
    [14]  =  "AIMWARE.NET",
    [15]  =  "AIMWARE.NET",
    [16]  =  "AIMWARE.NET",
    [17]  =  "AIMWARE.NET",
    [18]  =  "AIMWARE.NET",
    [19]  =  "AIMWARE.NET",
    [20]  =  "AIMWARE.NE",
    [21]  =  "AIMWARE.N",
    [22]  =  "AIMWARE.",
    [23]  =  "AIMWARE ",
    [24]  =  "AIMWARE",
    [25]  =  "AIMWAR",
    [26]  =  "AIMWA",
    [27]  =  "AIMW",
    [28]  =  "AIM",
    [29]  =  "AI",
    [30]  =  "A",
    [31]  =  " ",
    }

  elseif ui.get_int("clantag") == 8 then
    a3 =
    {
    [0]  =  "2DollarHvH",
    [1]  =  "2DollarHvH",
    [2]  =  "2DollarHvH",
    [3]  =  "Cheat",
    [4]  =  "Cheat",
    [5]  =  "Cheat",
    [6]  =  "NixW",
    [7]  =  "NixWa",
    [8]  =  "NixWar",
    [9]  =  "NixWare",
    [10]  =  "NixWare.",
    [11]  =  "NixWare.c",
    [12]  =  "NixWare.cc",
    [13]  =  "NixWare.cc",
    [14]  =  "NixWare.cc",
    [15]  =  "NixWare.cc",
    [16]  =  "NixWare.cc",
    [17]  =  "NixWare.cc",
    [18]  =  "NixWare.cc",
    [19]  =  "NixWare.cc",
    [20]  =  "NixWare.c",
    [21]  =  "NixWare.",
    [22]  =  "NixWare",
    [23]  =  "NixWar",
    [24]  =  "NixWa",
    [25]  =  "NixW",
    [26]  =  "Nix",
    [27]  =  "Ni",
    [28]  =  "N",
    [29]  =  " ",
    }

    end

    local clantagspeed = ui.get_int("clantagspeed")
	if ui.get_bool("misc_clantag") == false then
    if engine.is_in_game() then
        if a1 < globalvars.get_tick_count() then     
            a2 = a2 + 1
            if a2 > 70 then
                a2 = 0
            end
            se.set_clantag(a3[a2])
            a1 = globalvars.get_tick_count() + clantagspeed /40
        end
    end
	end
	
end 
client.register_callback("paint", paint_th)
