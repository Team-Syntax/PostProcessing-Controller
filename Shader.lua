local Shader = {}
Shader.__index = Shader

function Shader:new(
	-- Bloom
	
	BloomIntensity,
	BloomSize,
	BloomThreshold,
	-- ColorCorrection
	
	Brightness,
	Contrast,
	Saturation,
	TintColor,
	
	-- DepthOfField
	FarIntensity,
	FocusDistance,
	InFocusRadius,
	NearIntensity,
	
	-- SunRays
	Intensity,
	Spread
)
	return setmetatable(
		{
			BloomSize = BloomSize,

			Brightness = Brightness,
			Contrast = Contrast,
			Saturation = Saturation,
			TintColor = TintColor,

			FarIntensity = FarIntensity,
			FocusDistance = FocusDistance,
			InFocusRadius = InFocusRadius,
			NearIntensity = NearIntensity,

			Intensity = Intensity,
			Spread = Spread
		}, Shader
	)
end

function Shader:execute()
	debug.profilebegin('Shader Code')
	local start = tick()
	local Bloom = Instance.new('BloomEffect', game.Lighting)
	local ColorCorrection = Instance.new('ColorCorrectionEffect', game.Lighting)
	local SunRays = Instance.new('SunRaysEffect', game.Lighting)
	local DepthOfField = Instance.new('DepthOfFieldEffect')
	local Blur = Instance.new('BlurEffect')
	Blur.Parent = game.Lighting
	
	Blur.Size = 0.4
	
	Bloom.Intensity = self.BloomIntensity
	Bloom.Size = self.BloomSize
	Bloom.Threshold = self.BloomThreshold
		
	ColorCorrection.Brightness = self.Brightness
	ColorCorrection.Contrast = self.Contrast
	ColorCorrection.Saturation = self.Saturation
	--print('shader '..TintColor)
	ColorCorrection.TintColor = self.TintColor
	
	DepthOfField.FarIntensity = self.FarIntensity
	DepthOfField.FocusDistance = self.FocusDistance
	DepthOfField.InFocusRadius = self.InFocusRadius
	DepthOfField.NearIntensity = self.NearIntensity
	
	SunRays.Intensity = 0.729
	SunRays.Spread = 0.5
	
	Blur.Parent = game.Lighting
	Bloom.Parent = game.Lighting
	ColorCorrection.Parent = game.Lighting
	DepthOfField.Parent = game.Lighting
	SunRays.Parent = game.Lighting
	
	
	
	print("Shader took "..tick()-start.."ms to complete execution!")
	debug.profileend()
end

return {
	['Shader'] = Shader
}
