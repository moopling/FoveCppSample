struct VSO {
	float4 p : SV_POSITION;
	float3 c : COLOR;
};

float4 ModelPixelShader(VSO i) : SV_Target {
	return float4(i.c.r, i.c.g, i.c.b, 1.0f);
};

//uniform sampler2D _MainTex;
//
//uniform sampler2D _DisplacementTex;
//uniform sampler2D _OcculsionTex;
//
//uniform float _EyeX;
//uniform float _EyeY;
//
//float4 frag(v2f_img i) : COLOR{
//	half2 eyes = half2(_EyeX, _EyeY);
//
//	half2 coord = saturate((i.uv - (eyes + 1) / 2 + 1) / 2);
//
//	float4 save = tex2D(_OcculsionTex, coord);
//
//	half2 n = tex2D(_DisplacementTex, coord); //-eyes
//
//	i.uv = (i.uv - 0.5)*(1 - n / 1) + 0.5;
//
//	i.uv = saturate(i.uv);
//
//	float4 c = tex2D(_MainTex, i.uv)*(save);// - save;
//	return c;
//}