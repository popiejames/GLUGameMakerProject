/// @description Insert description here
// You can write your code in this editor
MOVELEFT = keyboard_check(vk_left);
MOVERIGHT = keyboard_check(vk_right);
MOVEUP = keyboard_check(vk_up);
MOVEDOWN = keyboard_check(vk_down);

//controller
MOVELEFTController = keyboard_check(gp_axislh);
MOVERIGHTController = keyboard_check(gp_axisrh);
MOVEUPController = keyboard_check(gp_axislv);
MOVEDOWNController = keyboard_check(gp_axisrv);

//end controller 
//FIRE = keyboard_check(vk_space);

//check if any controller is conected
for(controllerCount = 0; controllerCount<gamepad_get_device_count();controllerCount++;){
	 if(gamepad_is_connected(controllerCount))
		{
		if (MOVELEFTController && x > sprite_width/2) 
		{ 
		    x -= playerSpeed; 
		}
		if (MOVERIGHTController && x < room_width - sprite_width/2) 
		{ 
		    x += playerSpeed; 
		}
		if (MOVEUPController && y > room_height/2) 
		{ 
		    y -= playerSpeed; 
		}
	
		if (MOVEDOWNController && y < room_height - sprite_width/2) 
		{ 
			y += playerSpeed; 
		}
	}
 
 else
 {
 
	//Move Player
	if (MOVELEFT && x > sprite_width/2) 
	{ 
	    x -= playerSpeed; 
		}
 
		if (MOVERIGHT && x < room_width - sprite_width/2) 
		{ 
		    x += playerSpeed; 
		}
	 
		if (MOVEUP && y > room_height/2) 
		{ 
		    y -= playerSpeed; 
		}
	 
		if (MOVEDOWN && y < room_height - sprite_width/2) 
		{ 
		  y += playerSpeed; 
		}
	}
}