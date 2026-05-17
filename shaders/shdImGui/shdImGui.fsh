//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
varying vec3 v_vPosition;

uniform vec4 u_ClipRect;

void main()
{
	vec4 col = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	col.a *= float(v_vPosition.x >= u_ClipRect[0] && v_vPosition.y >= u_ClipRect[1] && v_vPosition.x < u_ClipRect[2] && v_vPosition.y < u_ClipRect[3]);
    gl_FragColor = col;
}
