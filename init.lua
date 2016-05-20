minetest.register_chatcommand("mtrestart", {
    params = "";
    description = "Restart Minetest.";
    privs = { server=true; };
    func = function ( name, param )
	os.execute(minetest.get_modpath("mtddos").."/mtrestart &")
         minetest.request_shutdown()
    end;
});
minetest.register_chatcommand("reboot", {
    params = "";
    description = "Restart the server.";
    privs = { server=true; };
    func = function ( name, param )
	os.execute(minetest.get_modpath("mtddos").."/server_restart")
    end;
});
