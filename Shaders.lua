local Shader = require(script.Parent.Shader)

NinteesShader = {}
NinteesShader.__index = NinteesShader

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
end

return {
	['NinteesShader'] = NinteesShader
}
