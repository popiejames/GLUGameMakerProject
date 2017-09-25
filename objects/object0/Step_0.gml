/// @description Insert description here
// You can write your code in this editor
MOVELEFT = keyboard_check(vk_left);
MOVERIGHT = keyboard_check(vk_right);
MOVEUP = keyboard_check(vk_up);
MOVEDOWN = keyboard_check(vk_down);

//controller
MOVELEFTController = gp_axislh;
MOVERIGHTController = gp_axisrh;
MOVEUPController = gp_axislv;
MOVEDOWNController = gp_axisrv;

//end controller 
//FIRE = keyboard_check(vk_space);

//check if any controller is conected

var gp_num = gamepad_get_device_count();
for (var i = 0; i < gp_num; i++;)
 {
   if gamepad_is_connected(i)
	{
      draw_text(32, 32 + (i * 32), gamepad_get_description(i));
	  controllerConnected = true;
	}
   else
    {
		draw_text(32, 32 + (i * 32), "No Gamepad Connected");
		controllerConnected = false;
    }
}

//Move Player

if(controllerConnected){

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

