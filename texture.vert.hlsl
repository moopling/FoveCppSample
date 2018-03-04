// Constants buffer - these values are updated per frame
cbuffer Constants : register(b0) {
	float4x4 modelviewProjection; // This is the transform to take a point from world coordinates to normalized device coords
};

// Vertex input - these values are set per vertex from a model
struct VSI {
	float4 p : POSITION0; // x,y,z position. The w value is used to indicate what object this is part of
	float2 tex : TEXCOORD0;     // r,g,b color. No alpha is used currently
};

// Vertex output - these values get interpolated across the polygon and passed to the frag shader
struct VSO {
	float4 p : SV_POSITION; // Output position
	float2 tex : TEXCOORD0;       // Output color
};

// Entry point of the shader
VSO TextureVertexShader(VSI i) {
	VSO o;
	o.p = mul(float4(i.p.xyz, 1.0), modelviewProjection);   // Transform the input world position by the modelview & projection
	o.tex = i.tex;        
	return o;
};