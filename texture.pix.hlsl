Texture2D shaderTexture;
SamplerState SampleType;

struct VSO {
	float4 p : SV_POSITION; // Output position
	float2 tex : TEXCOORD0;   // Output color
};

float4 TexturePixelShader(VSO i) : SV_Target {
	return shaderTexture.Sample(SampleType, i.tex);
};