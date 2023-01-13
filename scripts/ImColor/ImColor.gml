function ImColor(red, green, blue, alpha=1) constructor {
	a = alpha;
	if (blue != undefined) {
		r = red;
		g = green;
		b = blue;
	} else {
		r = color_get_red(red);
		g = color_get_green(red);
		b = color_get_blue(red);
		
		/*
		TODO: this dont work
		var msb = (red >> 24);
		if (msb != 0) {
			a = msb / 0xFF;
		} else */{
			if (green != undefined) {
				a = green;	
			}
		}
	}
	
	static Color = function() {
		return r | (g << 8) | (b << 16);
	}
	
	static Alpha = function() {
		return a;	
	}
}