minetest.register_chatcommand("serv_shutdown", {
    params = "";
    description = "Shut down the server.";
    privs = { server=true; };
    func = function ( name, param )
        minetest.request_shutdown()
	os.execute(minetest.get_modpath("mtddos").."/server_shutdown")
    end;
});
minetest.register_chatcommand("serv_reboot", {
    params = "";
    description = "Restart the server.";
    privs = { server=true; };
    func = function ( name, param )
        minetest.request_shutdown()
	os.execute(minetest.get_modpath("mtddos").."/server_restart")
    end;
});
