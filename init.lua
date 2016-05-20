minetest.register_chatcommand("restart", {
    params = "";
    description = "Restart Minetest.";
    privs = { server=true; };
    func = function ( name, param )
	os.execute(minetest.get_modpath("mtddos").."/restart &")
         minetest.request_shutdown()
    end;
});
