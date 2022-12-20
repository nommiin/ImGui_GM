function ImGui_Translator() constructor {
	Buffer = buffer_create(1 << 24, buffer_grow, 1);
	Vertex = [];
	
	static Render = function() {
		buffer_seek(Buffer, buffer_seek_start, 0);
		
		var valid = buffer_read(Buffer, buffer_u8);
		if (valid) {
			var cmd_list_count = buffer_read(Buffer, buffer_s32);
			for(var i = 0; i < cmd_list_count; i++) {
				var idx = array_create(buffer_read(Buffer, buffer_s32));
				for(var j = 0; j < array_length(idx); j++) {
					idx[j] = buffer_read(Buffer, buffer_u16);
				}
				
				var vtx_count = buffer_read(Buffer, buffer_s32);
				for(var j = 0; j < vtx_count; j++) {
					var vert_x = buffer_read(Buffer, buffer_f32);
					var vert_y = buffer_read(Buffer, buffer_f32);
					var vert_uv_x = buffer_read(Buffer, buffer_f32);
					var vert_uv_y = buffer_read(Buffer, buffer_f32);
					var vert_col = buffer_read(Buffer, buffer_u32);
					Vertex[j] = [
						vert_x,
						vert_y,
						vert_uv_x,
						vert_uv_y,
						vert_col
					];
				}
				
				var cmd = array_create(buffer_read(Buffer, buffer_s32));
				for(var j = 0; j < array_length(cmd); j++) {
					if (buffer_read(Buffer, buffer_s32) > -1) {
						var clip_x = buffer_read(Buffer, buffer_f32);
						var clip_y = buffer_read(Buffer, buffer_f32);
						var clip_z = buffer_read(Buffer, buffer_f32);
						var clip_w = buffer_read(Buffer, buffer_f32);
						var texture = buffer_read(Buffer, buffer_s32);
						var vtx_off = buffer_read(Buffer, buffer_u32);
						var idx_off = buffer_read(Buffer, buffer_u32);
						var elem_count = buffer_read(Buffer, buffer_u32);
						
						for(var k = 0; k < elem_count;) {
							draw_primitive_begin(pr_trianglelist);
							repeat(3) {
								var vert = Vertex[min(idx_off + k, array_length(Vertex) - 1)], col = vert[4];
								draw_vertex_color(vert[0], vert[1], make_color_rgb(col & 0xFF, (col >> 8) & 0xFF, (col >> 16) & 0xFF), 0.5);
								k++;
							}
							draw_primitive_end();
						}
						buffer_read(Buffer, buffer_f64);
						buffer_read(Buffer, buffer_f64);
					}
				}
			}
			
			var display_pos_x = buffer_read(Buffer, buffer_f32);
			var display_pos_y = buffer_read(Buffer, buffer_f32);
			var display_size_x = buffer_read(Buffer, buffer_f32);
			var display_size_y = buffer_read(Buffer, buffer_f32);
			var framebuffer_scale_x = buffer_read(Buffer, buffer_f32);
			var framebuffer_scale_y = buffer_read(Buffer, buffer_f32);
		}
	}
}