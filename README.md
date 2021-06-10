***Syntax Post-Processing Controller***  
A simple to use and non-costly LuaU post processing manager, for Roblox Corporation's Reality Engine (https://corp.roblox.com/technology/)
____
**DISCLAIMER**  
Examples shader class is in Shaders.lua and execution example is in Script.lua
Please note that you're 100% allowed to modify, distribute it for both personal and commercial uses!
*PLEASE NOTE THAT THIS LIBRARY IS STILL IN DEVELOPMENT, JUST LIKE TUO. IT CAN CHANGE ANY TIME. IT MAY BE BUGGY, PLEASE PULL AN ISSUE IF YOU FIND ANY BUGS!*
____
**GENERAL API USAGE**  
```lua
function FabulousShader.new()
	local shader = Shader.Shader:new(
		1,
		24,
		2,
		0,
		0,
		0,
		0,
	    Color3.fromRGB(224, 255, 251),
		0.25,
		1
	)
	shader:execute()
	
	return shader
end
```
____
**FEEDBACK**  
It would be amazing if you'd share your creations that you made using this library! We'd love to see what you came up with!
____
**AN EXTRA NOTE**  
It would be great if you'd credit us in your game if you use this library/it's code. No pressure though! It's okay if you don't want to, but it would be a Chad move if you did.
Support Syntax Games, an indie game studio here! https://discord.gg/zZ56xbHVPV
