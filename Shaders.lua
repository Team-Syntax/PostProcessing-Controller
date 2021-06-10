local Shader = require(script.Parent.Shader)

NinteesShader = {}
NinteesShader.__index = NinteesShader

FabulousShader = {}
FabulousShader.__index = FabulousShader

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

function NinteesShader.new()
	local shader = Shader.Shader:new(
		0.4,
		45,
		2.08,
		0.1,
		0.6,
		-1,
		Color3.fromRGB(255, 255, 255),
		0.6,
		0.03,
		14,
		0,
		0.6,
		0.8
	)
	shader:execute()
	
	return shader
end

return {
	['NinteesShader'] = NinteesShader,
	['FabulousShader'] = FabulousShader
}
