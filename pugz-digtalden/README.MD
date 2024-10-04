add this to ur qb-core/shared/jobs.lua

['digtalden'] = {
		label = 'digtalden',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
			['0'] = { name = 'TECH', payment = 50 },
			['1'] = { name = 'NERD', payment = 75 },
			['2'] = { name = 'Manager', payment = 100 },
			['3'] = { name = 'BOSS', isboss = true, payment = 150 },
		},
	},

	adding the boss menu
	
	go to qb-management/client/cl_config.lua and then add this code
    Config.BossMenus
	['digtalden'] = {
        vector3(-1535.83, -402.4, 35.63),
    },

	then add this under BossMenuZones
	['digtalden'] = {
        { coords =  vector3(-1535.83, -402.4, 35.63), length = 1, width = 2, heading = 320, minZ = 32.23, maxZ = 36.23 },
    },


	adding items.lua
	the only item u need to add is the camera and u can find the script here https://github.com/Project-Sloth/ps-camera

	make sure if u wanna use this script it is installed the right way

	the mlo is one of the depencies lucky ive left the mlo instead the script file

	enjoy the script while this is free please dont claim this as ur own 

	thanks Pugz :)
	if ur looking for a stash script to use for this job u can use 
	https://github.com/Mustachedom/md-stashes