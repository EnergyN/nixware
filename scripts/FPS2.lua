--[[
 Made by ZHEkaZHE#2756
         Uid - 12189
]]


local function print_fps()

    se.get_convar("r_3dsky"):set_int(0)

    se.get_convar("r_shadows"):set_int(0)

    se.get_convar("cl_csm_static_prop_shadows"):set_int(0)

    se.get_convar("cl_csm_shadows"):set_int(0)

    se.get_convar("cl_csm_world_shadows"):set_int(0)

    se.get_convar("cl_foot_contact_shadows"):set_int(0)

    se.get_convar("cl_csm_viewmodel_shadows"):set_int(0)

    se.get_convar("cl_csm_rope_shadows"):set_int(0)

    se.get_convar("cl_csm_sprite_shadows"):set_int(0)

    se.get_convar("cl_disablefreezecam"):set_int(1)

    se.get_convar("cl_freezecampanel_position_dynamic"):set_int(0)

    se.get_convar("cl_freezecameffects_showholiday"):set_int(0)

    se.get_convar("cl_showhelp"):set_int(0)

    se.get_convar("cl_autohelp"):set_int(0)

    se.get_convar("cl_disablehtmlmotd"):set_int(1)

    se.get_convar("mat_postprocess_enable"):set_int(0)

    se.get_convar("fog_enable_water_fog"):set_int(0)

    se.get_convar("gameinstructor_enable"):set_int(0)

    se.get_convar("cl_csm_world_shadows_in_viewmodelcascade"):set_int(0)

    se.get_convar("cl_disable_ragdolls"):set_int(1)
end
    
client.register_callback("paint", print_fps)



local function on_unload()

    se.get_convar("r_3dsky"):set_int(1)

    se.get_convar("cl_csm_static_prop_shadows"):set_int(1)

    se.get_convar("cl_csm_shadows"):set_int(1)

    se.get_convar("cl_csm_world_shadows"):set_int(1)

    se.get_convar("cl_foot_contact_shadows"):set_int(0)

    se.get_convar("cl_csm_viewmodel_shadows"):set_int(1)

    se.get_convar("cl_csm_rope_shadows"):set_int(1)

    se.get_convar("cl_csm_sprite_shadows"):set_int(1)

    se.get_convar("cl_disablefreezecam"):set_int(1)

    se.get_convar("cl_freezecampanel_position_dynamic"):set_int(0)

    se.get_convar("cl_freezecameffects_showholiday"):set_int(0)

    se.get_convar("mat_postprocess_enable"):set_int(1)

    se.get_convar("fog_enable_water_fog"):set_int(1)

    se.get_convar("cl_csm_world_shadows_in_viewmodelcascade"):set_int(1)

    se.get_convar("cl_disable_ragdolls"):set_int(0)
end

client.register_callback("unload", on_unload)

