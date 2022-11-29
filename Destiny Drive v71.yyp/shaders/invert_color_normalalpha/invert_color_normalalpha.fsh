//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

//Thanks for Xor's shader tutorials http://xorshaders.weebly.com/

void main()
{
    vec4 Color = texture2D( gm_BaseTexture, v_vTexcoord );
	gl_FragColor = vec4(vec3(1.0) - Color.rgb, Color.a);
}
