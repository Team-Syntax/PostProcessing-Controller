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
	self.BloomIntensity = BloomIntensity
	self.BloomSize = BloomSize
	self.BloomThreshold = BloomThreshold
	
	self.Brightness = Brightness
	self.Contrast = Contrast
	self.Saturation = Saturation
	self.TintColor = TintColor
	
	self.FarIntensity = FarIntensity
	self.FocusDistance = FocusDistance
	self.InFocusRadius = InFocusRadius
	self.NearIntensity = NearIntensity
	
	self.Intensity = Intensity
	self.Spread = Spread
	
	return Shader
end

function Shader:execute()
	debug.profilebegin('Shader Code')
	local start = tick()
	local Bloom = Instance.new('BloomEffect', game.Lighting)
	local ColorCorrection = Instance.new('ColorCorrectionEffect', game.Lighting)
	local SunRays = Instance.new('SunRaysEffect', game.Lighting)
	local DepthOfField = Instance.new('DepthOfFieldEffect')
	
	Bloom.Intensity = self.Intensity
	Bloom.Size = self.BloomSize
	Bloom.Threshold = self.BloomThreshold
	
	ColorCorrection.Brightness = self.Brightness
	ColorCorrection.Contrast = self.Contrast
	ColorCorrection.Saturation = self.Saturation
	ColorCorrection.TintColor = self.TintColor
	
	DepthOfField.FarIntensity = self.FarIntensity
	DepthOfField.FocusDistance = self.FocusDistance
	DepthOfField.InFocusRadius = self.InFocusRadius
	DepthOfField.NearIntensity = self.NearIntensity
	
	SunRays.Intensity = self.Intensity
	SunRays.Spread = self.Spread
	print("Shader took "..tick()-start.."ms to complete execution!")
	debug.profileend()
end

return {
	['Shader'] = Shader
}
