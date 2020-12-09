local m_iTeamNum = se.get_netvar("DT_BasePlayer", "m_iTeamNum")
local a1 = 0
local a2 = 0
local a3 =
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

function paint()
	
    if engine.is_in_game() then
        if a1 < globalvars.get_tick_count() then     
            a2 = a2 + 1
            if a2 > 50 then
                a2 = 0
            end
            se.set_clantag(a3[a2])
            a1 = globalvars.get_tick_count() + 20
        end
    end
end

client.register_callback("paint", paint)