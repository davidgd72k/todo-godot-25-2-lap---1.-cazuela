shader_type canvas_item;

uniform sampler2D mask_texture;
uniform vec3 cut_color: source_color;

void vertex() {
	// Called for every vertex the material is visible on.
}

void fragment() {
	vec3 mask_colors = texture(mask_texture, UV).rgb;

	// Colors from mask_texture and cut_color matching?
	if (mask_colors == cut_color) {
		// Make main texture pixel transparents.
		COLOR.a = 0.0;
	} 
}

//void light() {
//	// Called for every pixel for every light affecting the CanvasItem.
//	// Uncomment to replace the default light processing function with this one.
//}
