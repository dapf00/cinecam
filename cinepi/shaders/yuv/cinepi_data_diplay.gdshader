shader_type canvas_item;
uniform sampler2D LumaTexture :filter_linear_mipmap_anisotropic;
uniform sampler2D CbTexture;
uniform sampler2D CrTexture;
uniform float Width;
void vertex() {
	// Called for every vertex the material is visible on.
}

void fragment() {
	vec2 uv = mix(vec2(0), vec2(Width/float(textureSize(LumaTexture,0).x),1.),UV);
	// Get the Y, Cb, and Cr components
	float Y = (texture(LumaTexture,uv).x-.0625)*256./219.;
	float Cb = (texture(CbTexture, uv).x-.5)*256./224.;
	float Cr = (texture(CrTexture, uv).x-.5)*256./224.;
	float R = Y + Cr * 1.574800;
	float G = Y - Cb * 0.187324 - Cr * 0.468124;
	float B = Y + Cb * 1.855600;

	COLOR = vec4(R, G, B, 1.0);
}

//void light() {
	// Called for every pixel for every light affecting the CanvasItem.
	// Uncomment to replace the default light processing function with this one.
//}
