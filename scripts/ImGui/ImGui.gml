function ImGui() constructor {
    /// @section Binds
    /// @function Begin(name, open, flags, ret_mask)
    /// @argument {String} name
    /// @argument {Bool} [open=undefined]
    /// @argument {Int64} [flags=ImGuiWindowFlags.None]
    /// @argument {Int64} [ret_mask=ImGuiReturnFlags.Open]
    static Begin = function(name, open=undefined, flags=ImGuiWindowFlags.None, ret_mask=ImGuiReturnFlags.Open) {
        return __imgui_begin(name, open, flags, ret_mask);
    }

    /// @function End()
    static End = function() {
        return __imgui_end();
    }

    /// @function ShowAboutWindow(show)
    /// @argument {Bool} show
    static ShowAboutWindow = function(show) {
        return __imgui_show_about(show);
    }

    /// @function ShowDemoWindow(show)
    /// @argument {Bool} show
    static ShowDemoWindow = function(show) {
        return __imgui_show_demo(show);
    }

    /// @function ShowStyleEditor()
    static ShowStyleEditor = function() {
        return __imgui_show_style();
    }

    /// @function SetNextWindowPos(_x, _y, cond, pivot_x, pivot_y)
    /// @argument {Real} _x
    /// @argument {Real} _y
    /// @argument {Int64} [cond=ImGuiCond.Always]
    /// @argument {Real} [pivot_x=0]
    /// @argument {Real} [pivot_y=0]
    static SetNextWindowPos = function(_x, _y, cond=ImGuiCond.Always, pivot_x=0, pivot_y=0) {
        return __imgui_set_next_window_pos(_x, _y, cond, pivot_x, pivot_y);
    }

    /// @function SetNextWindowSize(width, height, cond)
    /// @argument {Real} width
    /// @argument {Real} height
    /// @argument {Int64} [cond=ImGuiCond.Always]
    static SetNextWindowSize = function(width, height, cond=ImGuiCond.Always) {
        return __imgui_set_next_window_size(width, height, cond);
    }

    /// @function Text(text)
    /// @argument {String} text
    static Text = function(text) {
        return __imgui_text(text);
    }

    /// @function TextColored(text, color, alpha)
    /// @argument {String} text
    /// @argument {Int64} color
    /// @argument {Real} [alpha=1]
    static TextColored = function(text, color, alpha=1) {
        return __imgui_text_colored(text, color, alpha);
    }

    /// @function TextDisabled(text)
    /// @argument {String} text
    static TextDisabled = function(text) {
        return __imgui_text_disabled(text);
    }

    /// @function TextWrapped(text)
    /// @argument {String} text
    static TextWrapped = function(text) {
        return __imgui_text_wrapped(text);
    }

    /// @function LabelText(label, text)
    /// @argument {String} label
    /// @argument {String} text
    static LabelText = function(label, text) {
        return __imgui_label_text(label, text);
    }

    /// @function BulletText(text)
    /// @argument {String} text
    static BulletText = function(text) {
        return __imgui_bullet_text(text);
    }

    /// @function Button(label, width, height)
    /// @argument {String} label
    /// @argument {Real} [width=0]
    /// @argument {Real} [height=0]
    static Button = function(label, width=0, height=0) {
        return __imgui_button(label, width, height);
    }

    /// @function SmallButton(label)
    /// @argument {String} label
    static SmallButton = function(label) {
        return __imgui_small_button(label);
    }

    /// @function InvisibleButton(_id, width, height, flags)
    /// @argument {String} _id
    /// @argument {Real} [width=0]
    /// @argument {Real} [height=0]
    /// @argument {Int64} [flags=ImGuiButtonFlags.None]
    static InvisibleButton = function(_id, width=0, height=0, flags=ImGuiButtonFlags.None) {
        return __imgui_invisible_button(_id, width, height, flags);
    }

    /// @function ArrowButton(_id, dir)
    /// @argument {String} _id
    /// @argument {Int64} dir
    static ArrowButton = function(_id, dir) {
        return __imgui_arrow_button(_id, dir);
    }

    /// @function Image(spr, frame, width, height, blend, alpha)
    /// @argument {Real} spr
    /// @argument {Real} [frame=0]
    /// @argument {Real} [width=sprite_get_width[spr]]
    /// @argument {Real} [height=sprite_get_height[spr]]
    /// @argument {Real} [blend=c_white]
    /// @argument {Real} [alpha=1]
    static Image = function(spr, frame=0, width=sprite_get_width(spr), height=sprite_get_height(spr), blend=c_white, alpha=1) {
        texture_set_stage(0, sprite_get_texture(spr, frame));
        return __imgui_image(spr, frame, width, height, blend, alpha, sprite_get_uvs(spr, frame));
    }

    /// @function ImageButton(_id, spr, frame, width, height, blend, alpha)
    /// @argument {String} _id
    /// @argument {Real} spr
    /// @argument {Real} [frame=0]
    /// @argument {Real} [width=sprite_get_width[spr]]
    /// @argument {Real} [height=sprite_get_height[spr]]
    /// @argument {Real} [blend=c_white]
    /// @argument {Real} [alpha=1]
    static ImageButton = function(_id, spr, frame=0, width=sprite_get_width(spr), height=sprite_get_height(spr), blend=c_white, alpha=1) {
        texture_set_stage(0, sprite_get_texture(spr, frame));
        return __imgui_image_button(_id, spr, frame, width, height, blend, alpha, sprite_get_uvs(spr, frame));
    }

    /// @function Checkbox(label, val)
    /// @argument {String} label
    /// @argument {Bool} val
    static Checkbox = function(label, val) {
        return __imgui_checkbox(label, val);
    }

    /// @function RadioButton(label, active)
    /// @argument {String} label
    /// @argument {Bool} active
    static RadioButton = function(label, active) {
        return __imgui_radio_button(label, active);
    }

    /// @function ProgressBar(frac, width, height, overlay)
    /// @argument {Real} frac
    /// @argument {Real} [width=0]
    /// @argument {Real} [height=0]
    /// @argument {String} [overlay=""]
    static ProgressBar = function(frac, width=0, height=0, overlay="") {
        return __imgui_progressbar(frac, width, height, overlay);
    }

    /// @function Bullet()
    static Bullet = function() {
        return __imgui_bullet();
    }

    /// @function Spacing()
    static Spacing = function() {
        return __imgui_spacing();
    }

    /// @function Dummy(width, height)
    /// @argument {Real} width
    /// @argument {Real} height
    static Dummy = function(width, height) {
        return __imgui_dummy(width, height);
    }

    /// @function NewLine()
    static NewLine = function() {
        return __imgui_newline();
    }

    /// @function AlignTextToFramePadding()
    static AlignTextToFramePadding = function() {
        return __imgui_align_text_to_frame_padding();
    }

    /// @function Separator()
    static Separator = function() {
        return __imgui_separator();
    }

    /// @function BeginCombo(label, preview_val, flags)
    /// @argument {String} label
    /// @argument {String} preview_val
    /// @argument {Int64} [flags=ImGuiComboFlags.None]
    static BeginCombo = function(label, preview_val, flags=ImGuiComboFlags.None) {
        return __imgui_begin_combo(label, preview_val, flags);
    }

    /// @function EndCombo()
    static EndCombo = function() {
        return __imgui_end_combo();
    }

    /// @function DragFloat(label, val, val_speed, val_min, val_max, fmt, flags)
    /// @argument {String} label
    /// @argument {Float} val
    /// @argument {Real} [val_speed=1]
    /// @argument {Real} [val_min=1]
    /// @argument {Real} [val_max=1]
    /// @argument {String} [fmt="%.3f"]
    /// @argument {Int64} [flags=ImGuiComboFlags.None]
    static DragFloat = function(label, val, val_speed=1, val_min=1, val_max=1, fmt="%.3f", flags=ImGuiComboFlags.None) {
        return __imgui_drag_float(label, val, val_speed, val_min, val_max, fmt, flags);
    }

    /// @function DragFloat2(label, val, val_speed, val_min, val_max, fmt, flags)
    /// @argument {String} label
    /// @argument {Array<float>} val
    /// @argument {Real} [val_speed=1]
    /// @argument {Real} [val_min=1]
    /// @argument {Real} [val_max=1]
    /// @argument {String} [fmt="%.3f"]
    /// @argument {Int64} [flags=ImGuiComboFlags.None]
    static DragFloat2 = function(label, val, val_speed=1, val_min=1, val_max=1, fmt="%.3f", flags=ImGuiComboFlags.None) {
        return __imgui_drag_float2(label, val, val_speed, val_min, val_max, fmt, flags);
    }

    /// @function DragFloat3(label, val, val_speed, val_min, val_max, fmt, flags)
    /// @argument {String} label
    /// @argument {Array<float>} val
    /// @argument {Real} [val_speed=1]
    /// @argument {Real} [val_min=1]
    /// @argument {Real} [val_max=1]
    /// @argument {String} [fmt="%.3f"]
    /// @argument {Int64} [flags=ImGuiComboFlags.None]
    static DragFloat3 = function(label, val, val_speed=1, val_min=1, val_max=1, fmt="%.3f", flags=ImGuiComboFlags.None) {
        return __imgui_drag_float3(label, val, val_speed, val_min, val_max, fmt, flags);
    }

    /// @function DragFloat4(label, val, val_speed, val_min, val_max, fmt, flags)
    /// @argument {String} label
    /// @argument {Array<float>} val
    /// @argument {Real} [val_speed=1]
    /// @argument {Real} [val_min=1]
    /// @argument {Real} [val_max=1]
    /// @argument {String} [fmt="%.3f"]
    /// @argument {Int64} [flags=ImGuiComboFlags.None]
    static DragFloat4 = function(label, val, val_speed=1, val_min=1, val_max=1, fmt="%.3f", flags=ImGuiComboFlags.None) {
        return __imgui_drag_float4(label, val, val_speed, val_min, val_max, fmt, flags);
    }

    /// @function DragFloatRange2(label, val, val_speed, val_min, val_max, fmt, fmt_max, flags)
    /// @argument {String} label
    /// @argument {Array<float>} val
    /// @argument {Real} [val_speed=1]
    /// @argument {Real} [val_min=1]
    /// @argument {Real} [val_max=1]
    /// @argument {String} [fmt="%.3f"]
    /// @argument {String} [fmt_max="%.3f"]
    /// @argument {Int64} [flags=ImGuiComboFlags.None]
    static DragFloatRange2 = function(label, val, val_speed=1, val_min=1, val_max=1, fmt="%.3f", fmt_max="%.3f", flags=ImGuiComboFlags.None) {
        return __imgui_drag_float_range2(label, val, val_speed, val_min, val_max, fmt, fmt_max, flags);
    }

    /// @function DragInt(label, val, val_speed, val_min, val_max, fmt, flags)
    /// @argument {String} label
    /// @argument {Real} val
    /// @argument {Real} [val_speed=1]
    /// @argument {Real} [val_min=1]
    /// @argument {Real} [val_max=1]
    /// @argument {String} [fmt="%d"]
    /// @argument {Int64} [flags=ImGuiComboFlags.None]
    static DragInt = function(label, val, val_speed=1, val_min=1, val_max=1, fmt="%d", flags=ImGuiComboFlags.None) {
        return __imgui_drag_int(label, val, val_speed, val_min, val_max, fmt, flags);
    }

    /// @function DragInt2(label, val, val_speed, val_min, val_max, fmt, flags)
    /// @argument {String} label
    /// @argument {Array<int>} val
    /// @argument {Real} [val_speed=1]
    /// @argument {Real} [val_min=1]
    /// @argument {Real} [val_max=1]
    /// @argument {String} [fmt="%d"]
    /// @argument {Int64} [flags=ImGuiComboFlags.None]
    static DragInt2 = function(label, val, val_speed=1, val_min=1, val_max=1, fmt="%d", flags=ImGuiComboFlags.None) {
        return __imgui_drag_int2(label, val, val_speed, val_min, val_max, fmt, flags);
    }

    /// @function DragInt3(label, val, val_speed, val_min, val_max, fmt, flags)
    /// @argument {String} label
    /// @argument {Array<int>} val
    /// @argument {Real} [val_speed=1]
    /// @argument {Real} [val_min=1]
    /// @argument {Real} [val_max=1]
    /// @argument {String} [fmt="%d"]
    /// @argument {Int64} [flags=ImGuiComboFlags.None]
    static DragInt3 = function(label, val, val_speed=1, val_min=1, val_max=1, fmt="%d", flags=ImGuiComboFlags.None) {
        return __imgui_drag_int3(label, val, val_speed, val_min, val_max, fmt, flags);
    }

    /// @function DragInt4(label, val, val_speed, val_min, val_max, fmt, flags)
    /// @argument {String} label
    /// @argument {Array<int>} val
    /// @argument {Real} [val_speed=1]
    /// @argument {Real} [val_min=1]
    /// @argument {Real} [val_max=1]
    /// @argument {String} [fmt="%d"]
    /// @argument {Int64} [flags=ImGuiComboFlags.None]
    static DragInt4 = function(label, val, val_speed=1, val_min=1, val_max=1, fmt="%d", flags=ImGuiComboFlags.None) {
        return __imgui_drag_int4(label, val, val_speed, val_min, val_max, fmt, flags);
    }

    /// @function DragIntRange2(label, val, val_speed, val_min, val_max, fmt, fmt_max, flags)
    /// @argument {String} label
    /// @argument {Array<int>} val
    /// @argument {Real} [val_speed=1]
    /// @argument {Real} [val_min=1]
    /// @argument {Real} [val_max=1]
    /// @argument {String} [fmt="%.3f"]
    /// @argument {String} [fmt_max="%.3f"]
    /// @argument {Int64} [flags=ImGuiComboFlags.None]
    static DragIntRange2 = function(label, val, val_speed=1, val_min=1, val_max=1, fmt="%.3f", fmt_max="%.3f", flags=ImGuiComboFlags.None) {
        return __imgui_drag_int_range2(label, val, val_speed, val_min, val_max, fmt, fmt_max, flags);
    }

    /// @function SliderFloat(label, val, val_min, val_max, fmt, flags)
    /// @argument {String} label
    /// @argument {Float} val
    /// @argument {Real} [val_min=1]
    /// @argument {Real} [val_max=1]
    /// @argument {String} [fmt="%.3f"]
    /// @argument {Int64} [flags=ImGuiSliderFlags.None]
    static SliderFloat = function(label, val, val_min=1, val_max=1, fmt="%.3f", flags=ImGuiSliderFlags.None) {
        return __imgui_slider_float(label, val, val_min, val_max, fmt, flags);
    }

    /// @function SliderFloat2(label, val, val_min, val_max, fmt, flags)
    /// @argument {String} label
    /// @argument {Array<float>} [val=1]
    /// @argument {Real} [val_min=1]
    /// @argument {Real} [val_max=1]
    /// @argument {String} [fmt="%.3f"]
    /// @argument {Int64} [flags=ImGuiSliderFlags.None]
    static SliderFloat2 = function(label, val=1, val_min=1, val_max=1, fmt="%.3f", flags=ImGuiSliderFlags.None) {
        return __imgui_slider_float2(label, val, val_min, val_max, fmt, flags);
    }

    /// @function SliderFloat3(label, val, val_min, val_max, fmt, flags)
    /// @argument {String} label
    /// @argument {Array<float>} [val=1]
    /// @argument {Real} [val_min=1]
    /// @argument {Real} [val_max=1]
    /// @argument {String} [fmt="%.3f"]
    /// @argument {Int64} [flags=ImGuiSliderFlags.None]
    static SliderFloat3 = function(label, val=1, val_min=1, val_max=1, fmt="%.3f", flags=ImGuiSliderFlags.None) {
        return __imgui_slider_float3(label, val, val_min, val_max, fmt, flags);
    }

    /// @function SliderFloat4(label, val, val_min, val_max, fmt, flags)
    /// @argument {String} label
    /// @argument {Array<float>} [val=1]
    /// @argument {Real} [val_min=1]
    /// @argument {Real} [val_max=1]
    /// @argument {String} [fmt="%.3f"]
    /// @argument {Int64} [flags=ImGuiSliderFlags.None]
    static SliderFloat4 = function(label, val=1, val_min=1, val_max=1, fmt="%.3f", flags=ImGuiSliderFlags.None) {
        return __imgui_slider_float4(label, val, val_min, val_max, fmt, flags);
    }

    /// @function SliderAngle(label, v_rad, v_deg_min, v_deg_max, fmt, flags)
    /// @argument {String} label
    /// @argument {Float} v_rad
    /// @argument {Real} [v_deg_min=1]
    /// @argument {Real} [v_deg_max=1]
    /// @argument {String} [fmt="%.0f deg"]
    /// @argument {Int64} [flags=ImGuiSliderFlags.None]
    static SliderAngle = function(label, v_rad, v_deg_min=1, v_deg_max=1, fmt="%.0f deg", flags=ImGuiSliderFlags.None) {
        return __imgui_slider_angle(label, v_rad, v_deg_min, v_deg_max, fmt, flags);
    }

    /// @function SliderInt(label, val, val_min, val_max, fmt, flags)
    /// @argument {String} label
    /// @argument {Real} val
    /// @argument {Real} [val_min=1]
    /// @argument {Real} [val_max=1]
    /// @argument {String} [fmt="%d"]
    /// @argument {Int64} [flags=ImGuiSliderFlags.None]
    static SliderInt = function(label, val, val_min=1, val_max=1, fmt="%d", flags=ImGuiSliderFlags.None) {
        return __imgui_slider_int(label, val, val_min, val_max, fmt, flags);
    }

    /// @function SliderInt2(label, val, val_min, val_max, fmt, flags)
    /// @argument {String} label
    /// @argument {Array<int>} [val=1]
    /// @argument {Real} [val_min=1]
    /// @argument {Real} [val_max=1]
    /// @argument {String} [fmt="%d"]
    /// @argument {Int64} [flags=ImGuiSliderFlags.None]
    static SliderInt2 = function(label, val=1, val_min=1, val_max=1, fmt="%d", flags=ImGuiSliderFlags.None) {
        return __imgui_slider_int2(label, val, val_min, val_max, fmt, flags);
    }

    /// @function SliderInt3(label, val, val_min, val_max, fmt, flags)
    /// @argument {String} label
    /// @argument {Array<int>} [val=1]
    /// @argument {Real} [val_min=1]
    /// @argument {Real} [val_max=1]
    /// @argument {String} [fmt="%d"]
    /// @argument {Int64} [flags=ImGuiSliderFlags.None]
    static SliderInt3 = function(label, val=1, val_min=1, val_max=1, fmt="%d", flags=ImGuiSliderFlags.None) {
        return __imgui_slider_int3(label, val, val_min, val_max, fmt, flags);
    }

    /// @function SliderInt4(label, val, val_min, val_max, fmt, flags)
    /// @argument {String} label
    /// @argument {Array<int>} [val=1]
    /// @argument {Real} [val_min=1]
    /// @argument {Real} [val_max=1]
    /// @argument {String} [fmt="%d"]
    /// @argument {Int64} [flags=ImGuiSliderFlags.None]
    static SliderInt4 = function(label, val=1, val_min=1, val_max=1, fmt="%d", flags=ImGuiSliderFlags.None) {
        return __imgui_slider_int4(label, val, val_min, val_max, fmt, flags);
    }

    /// @function InputFloat(label, val, step, step_fast, fmt, flags)
    /// @argument {String} label
    /// @argument {Real} val
    /// @argument {Real} [step=1]
    /// @argument {Real} [step_fast=1]
    /// @argument {String} [fmt="%.3f"]
    /// @argument {Int64} [flags=ImGuiInputTextFlags.None]
    static InputFloat = function(label, val, step=1, step_fast=1, fmt="%.3f", flags=ImGuiInputTextFlags.None) {
        return __imgui_input_float(label, val, step, step_fast, fmt, flags);
    }

    /// @function InputFloat2(label, val, fmt, flags)
    /// @argument {String} label
    /// @argument {Array<float>} [val=1]
    /// @argument {String} [fmt="%.3f"]
    /// @argument {Int64} [flags=ImGuiSliderFlags.None]
    static InputFloat2 = function(label, val=1, fmt="%.3f", flags=ImGuiSliderFlags.None) {
        return __imgui_input_float2(label, val, fmt, flags);
    }

    /// @function InputFloat3(label, val, fmt, flags)
    /// @argument {String} label
    /// @argument {Array<float>} [val=1]
    /// @argument {String} [fmt="%.3f"]
    /// @argument {Int64} [flags=ImGuiSliderFlags.None]
    static InputFloat3 = function(label, val=1, fmt="%.3f", flags=ImGuiSliderFlags.None) {
        return __imgui_input_float3(label, val, fmt, flags);
    }

    /// @function InputFloat3(label, val, fmt, flags)
    /// @argument {String} label
    /// @argument {Array<float>} [val=1]
    /// @argument {String} [fmt="%.3f"]
    /// @argument {Int64} [flags=ImGuiSliderFlags.None]
    static InputFloat3 = function(label, val=1, fmt="%.3f", flags=ImGuiSliderFlags.None) {
        return __imgui_input_float4(label, val, fmt, flags);
    }

    /// @function InputInt(label, val, step, step_fast, flags)
    /// @argument {String} label
    /// @argument {Real} val
    /// @argument {Real} [step=1]
    /// @argument {Real} [step_fast=100]
    /// @argument {Int64} [flags=ImGuiInputTextFlags.None]
    static InputInt = function(label, val, step=1, step_fast=100, flags=ImGuiInputTextFlags.None) {
        return __imgui_input_int(label, val, step, step_fast, flags);
    }

    /// @function InputInt2(label, val, flags)
    /// @argument {String} label
    /// @argument {Array<int>} [val=1]
    /// @argument {Int64} [flags=ImGuiInputTextFlags.None]
    static InputInt2 = function(label, val=1, flags=ImGuiInputTextFlags.None) {
        return __imgui_input_int2(label, val, flags);
    }

    /// @function InputInt3(label, val, flags)
    /// @argument {String} label
    /// @argument {Array<int>} [val=1]
    /// @argument {Int64} [flags=ImGuiInputTextFlags.None]
    static InputInt3 = function(label, val=1, flags=ImGuiInputTextFlags.None) {
        return __imgui_input_int3(label, val, flags);
    }

    /// @function InputInt4(label, val, flags)
    /// @argument {String} label
    /// @argument {Array<int>} [val=1]
    /// @argument {Int64} [flags=ImGuiInputTextFlags.None]
    static InputInt4 = function(label, val=1, flags=ImGuiInputTextFlags.None) {
        return __imgui_input_int4(label, val, flags);
    }

    /// @function InputDouble(label, val, step, step_fast, fmt, flags)
    /// @argument {String} label
    /// @argument {Real} val
    /// @argument {Real} [step=0]
    /// @argument {Real} [step_fast=0]
    /// @argument {String} [fmt="%.6f"]
    /// @argument {Int64} [flags=ImGuiInputTextFlags.None]
    static InputDouble = function(label, val, step=0, step_fast=0, fmt="%.6f", flags=ImGuiInputTextFlags.None) {
        return __imgui_input_double(label, val, step, step_fast, fmt, flags);
    }

    /// @function InputText(label, val, flags)
    /// @argument {String} label
    /// @argument {String} val
    /// @argument {Int64} [flags=ImGuiInputTextFlags.None]
    static InputText = function(label, val, flags=ImGuiInputTextFlags.None) {
        return __imgui_input_text(label, val, flags);
    }

    /// @function InputTextWithHint(label, hint, val, flags)
    /// @argument {String} label
    /// @argument {String} hint
    /// @argument {String} val
    /// @argument {Int64} [flags=ImGuiInputTextFlags.None]
    static InputTextWithHint = function(label, hint, val, flags=ImGuiInputTextFlags.None) {
        return __imgui_input_text_with_hint(label, hint, val, flags);
    }

    /// @function InputTextMultiline(label, val, flags, width, height)
    /// @argument {String} label
    /// @argument {String} val
    /// @argument {Int64} [flags=ImGuiInputTextFlags.None]
    /// @argument {Real} [width=0]
    /// @argument {Real} [height=0]
    static InputTextMultiline = function(label, val, flags=ImGuiInputTextFlags.None, width=0, height=0) {
        return __imgui_input_text_multiline(label, val, flags, width, height);
    }

    /// @function ColorEdit3(label, color, flags)
    /// @argument {String} label
    /// @argument {Real} color
    /// @argument {Int64} [flags=ImGuiColorEditFlags.None]
    static ColorEdit3 = function(label, color, flags=ImGuiColorEditFlags.None) {
        return __imgui_color_edit3(label, color, flags);
    }

    /// @function ColorEdit4(label, color, flags)
    /// @argument {String} label
    /// @argument {Real} color
    /// @argument {Int64} [flags=ImGuiColorEditFlags.None]
    static ColorEdit4 = function(label, color, flags=ImGuiColorEditFlags.None) {
        return __imgui_color_edit4(label, color, flags);
    }

    /// @function ColorPicker3(label, color, flags)
    /// @argument {String} label
    /// @argument {Real} color
    /// @argument {Int64} [flags=ImGuiColorEditFlags.None]
    static ColorPicker3 = function(label, color, flags=ImGuiColorEditFlags.None) {
        return __imgui_color_picker3(label, color, flags);
    }

    /// @function ColorPicker4(label, color, flags)
    /// @argument {String} label
    /// @argument {Real} color
    /// @argument {Int64} [flags=ImGuiColorEditFlags.None]
    static ColorPicker4 = function(label, color, flags=ImGuiColorEditFlags.None) {
        return __imgui_color_picker4(label, color, flags);
    }

    /// @function ColorButton(_id, color, alpha, flags, width, height)
    /// @argument {String} _id
    /// @argument {Real} color
    /// @argument {Real} [alpha=1]
    /// @argument {Int64} [flags=ImGuiColorEditFlags.None]
    /// @argument {Real} [width=0]
    /// @argument {Real} [height=0]
    static ColorButton = function(_id, color, alpha=1, flags=ImGuiColorEditFlags.None, width=0, height=0) {
        return __imgui_color_button(_id, color, alpha, flags, width, height);
    }

    /// @function SetColorEditOptions(flags)
    /// @argument {Int64} flags
    static SetColorEditOptions = function(flags) {
        return __imgui_set_color_edit_options(flags);
    }

    /// @function TreeNode(label)
    /// @argument {String} label
    static TreeNode = function(label) {
        return __imgui_treenode(label);
    }

    /// @function TreeNodeEx(label, flags)
    /// @argument {String} label
    /// @argument {Int64} [flags=ImGuiTreeNodeFlags.None]
    static TreeNodeEx = function(label, flags=ImGuiTreeNodeFlags.None) {
        return __imgui_treenode_ex(label, flags);
    }

    /// @function TreePush(_id)
    /// @argument {String} _id
    static TreePush = function(_id) {
        return __imgui_tree_push(_id);
    }

    /// @function TreePop()
    static TreePop = function() {
        return __imgui_tree_pop();
    }

    /// @function GetTreeNodeToLabelSpacing()
    static GetTreeNodeToLabelSpacing = function() {
        return __imgui_get_tree_node_to_label_spacing();
    }

    /// @function SetNextItemOpen(open, cond)
    /// @argument {Bool} open
    /// @argument {Int64} [cond=ImGuiCond.None]
    static SetNextItemOpen = function(open, cond=ImGuiCond.None) {
        return __imgui_set_next_item_open(open, cond);
    }

    /// @function CollapsingHeader(label, open, flags, ret_mask)
    /// @argument {String} label
    /// @argument {Bool} open
    /// @argument {Int64} [flags=ImGuiTreeNodeFlags.None]
    /// @argument {Int64} [ret_mask=ImGuiReturnFlags.Open]
    static CollapsingHeader = function(label, open, flags=ImGuiTreeNodeFlags.None, ret_mask=ImGuiReturnFlags.Open) {
        return __imgui_collapsing_header(label, open, flags, ret_mask);
    }

    /// @function Selectable(label, selected, flags, width, height)
    /// @argument {String} label
    /// @argument {Bool} [selected=false]
    /// @argument {Int64} [flags=ImGuiSelectableFlags.None]
    /// @argument {Real} [width=0]
    /// @argument {Real} [height=0]
    static Selectable = function(label, selected=false, flags=ImGuiSelectableFlags.None, width=0, height=0) {
        return __imgui_selectable(label, selected, flags, width, height);
    }

    /// @function BeginListBox(label, width, height)
    /// @argument {String} label
    /// @argument {Real} [width=0]
    /// @argument {Real} [height=0]
    static BeginListBox = function(label, width=0, height=0) {
        return __imgui_begin_listbox(label, width, height);
    }

    /// @function EndListBox()
    static EndListBox = function() {
        return __imgui_end_listbox();
    }

    /// @function ListBox(label, ind, items, height_in_items)
    /// @argument {String} label
    /// @argument {Real} ind
    /// @argument {Array<String>} items
    /// @argument {Real} [height_in_items=-1]
    static ListBox = function(label, ind, items, height_in_items=-1) {
        return __imgui_listbox(label, ind, items, height_in_items);
    }

    /// @function PlotLines(label, values, overlay, width, height, stride)
    /// @argument {String} label
    /// @argument {Array<Float>} values
    /// @argument {String} [overlay=""]
    /// @argument {Real} [width=0]
    /// @argument {Real} [height=0]
    /// @argument {Real} [stride=4]
    static PlotLines = function(label, values, overlay="", width=0, height=0, stride=4) {
        return __imgui_plot_lines(label, values, overlay, width, height, stride);
    }

    /// @function PlotHistogram(label, values, overlay, width, height, stride)
    /// @argument {String} label
    /// @argument {Array<Float>} values
    /// @argument {String} [overlay=""]
    /// @argument {Real} [width=0]
    /// @argument {Real} [height=0]
    /// @argument {Real} [stride=4]
    static PlotHistogram = function(label, values, overlay="", width=0, height=0, stride=4) {
        return __imgui_plot_histogram(label, values, overlay, width, height, stride);
    }

    /// @function BeginMenuBar()
    static BeginMenuBar = function() {
        return __imgui_begin_menu_bar();
    }

    /// @function EndMenuBar()
    static EndMenuBar = function() {
        return __imgui_end_menu_bar();
    }

    /// @function BeginMainMenuBar()
    static BeginMainMenuBar = function() {
        return __imgui_begin_main_menu_bar();
    }

    /// @function EndMainMenuBar()
    static EndMainMenuBar = function() {
        return __imgui_end_main_menu_bar();
    }

    /// @function BeginMenu(label, enabled)
    /// @argument {String} label
    /// @argument {Bool} [enabled=true]
    static BeginMenu = function(label, enabled=true) {
        return __imgui_begin_menu(label, enabled);
    }

    /// @function EndMenu()
    static EndMenu = function() {
        return __imgui_end_menu();
    }

    /// @function MenuItem(label, shortcut, enabled, selected)
    /// @argument {String} label
    /// @argument {String} [shortcut=undefined]
    /// @argument {Bool} [enabled=true]
    /// @argument {Bool} [selected=false]
    static MenuItem = function(label, shortcut=undefined, enabled=true, selected=false) {
        return __imgui_menu_item(label, shortcut, enabled, selected);
    }

    /// @function BeginTabBar(_id, flags)
    /// @argument {String} _id
    /// @argument {Int64} [flags=ImGuiTabBarFlags.None]
    static BeginTabBar = function(_id, flags=ImGuiTabBarFlags.None) {
        return __imgui_begin_tab_bar(_id, flags);
    }

    /// @function EndTabBar()
    static EndTabBar = function() {
        return __imgui_end_tab_bar();
    }

    /// @function BeginTabItem(label, open, flags, ret_mask)
    /// @argument {String} label
    /// @argument {Bool} [open=undefined]
    /// @argument {Int64} [flags=ImGuiTabItemFlags.None]
    /// @argument {Int64} [ret_mask=ImGuiReturnFlags.Visible]
    static BeginTabItem = function(label, open=undefined, flags=ImGuiTabItemFlags.None, ret_mask=ImGuiReturnFlags.Visible) {
        return __imgui_begin_tab_item(label, open, flags, ret_mask);
    }

    /// @function EndTabItem()
    static EndTabItem = function() {
        return __imgui_end_tab_item();
    }

    /// @function TabItemButton(label, flags)
    /// @argument {String} label
    /// @argument {Int64} [flags=ImGuiTabItemFlags.None]
    static TabItemButton = function(label, flags=ImGuiTabItemFlags.None) {
        return __imgui_tab_item_button(label, flags);
    }

    /// @function SetTabItemClosed(label)
    /// @argument {String} label
    static SetTabItemClosed = function(label) {
        return __imgui_set_tab_item_closed(label);
    }

    /// @function GetStyleColorVec4(idx)
    /// @argument {Real} idx
    static GetStyleColorVec4 = function(idx) {
        return __imgui_get_style_color(idx);
    }

    /// @function GetStyleColorName(idx)
    /// @argument {Real} idx
    static GetStyleColorName = function(idx) {
        return __imgui_get_style_color_name(idx);
    }

    /// @function PushStyleColor(idx, color, alpha)
    /// @argument {Real} idx
    /// @argument {Real} color
    /// @argument {Real} [alpha=1]
    static PushStyleColor = function(idx, color, alpha=1) {
        return __imgui_push_style_color(idx, color, alpha);
    }

    /// @function PopStyleColor(count)
    /// @argument {Real} [count=1]
    static PopStyleColor = function(count=1) {
        return __imgui_pop_style_color(count);
    }

    /// @function PushStyleVar(idx, v1, v2)
    /// @argument {Real} idx
    /// @argument {Real} v1
    /// @argument {Real} [v2=undefined]
    static PushStyleVar = function(idx, v1, v2=undefined) {
        return __imgui_push_style_var(idx, v1, v2);
    }

    /// @function PopStyleVar(count)
    /// @argument {Real} [count=1]
    static PopStyleVar = function(count=1) {
        return __imgui_pop_style_var(count);
    }

    /// @function Surface(surf, width, height, blend, alpha)
    /// @argument {Real} surf
    /// @argument {Real} [width=surface_get_width[surf]]
    /// @argument {Real} [height=surface_get_height[surf]]
    /// @argument {Real} [blend=c_white]
    /// @argument {Real} [alpha=1]
    static Surface = function(surf, width=surface_get_width(surf), height=surface_get_height(surf), blend=c_white, alpha=1) {
        var tex = surface_get_texture(surf); texture_set_stage(0, tex)
        return __imgui_surface(surf, width, height, blend, alpha, texture_get_uvs(tex));
    }

    /// @function BeginTooltip()
    static BeginTooltip = function() {
        return __imgui_begin_tooltip();
    }

    /// @function EndTooltip()
    static EndTooltip = function() {
        return __imgui_end_tooltip();
    }

    /// @function SetTooltip(val)
    /// @argument {String} val
    static SetTooltip = function(val) {
        return __imgui_set_tooltip(val);
    }

	/// @section Internal
	/// @desc Where the (GML) magic happens, safe from the gen-bindings script
	static __State = {
		Display: {
			Width: 0,
			Height: 0
		},
		Input: {
			Mouse: {
				X: 0,
				Y: 0
			}
		},
		Engine: {
			Time: 0,
			Framerate: game_get_speed(gamespeed_fps)
		}
	};
	
	/// @desc EXPERIMENTAL: If set, intercepts ImDrawData from implementation; native used otherwise
	static Translator = undefined; // new ImGui_Translator();
	
	static __Initialize = function() {
		var info = os_get_info(), pointers =  {
			Device: info[? "video_d3d11_device"],
			Context: info[? "video_d3d11_context"]
		};
		ds_map_destroy(info);
		return __imgui_initialize(pointers);
	}
	
	static __Update = function() {
		__State.Display.Width = display_get_width();
		__State.Display.Height = display_get_height();
		__State.Engine.Time = delta_time;
		__State.Engine.Framerate = game_get_speed(gamespeed_fps);
		__State.Input.Mouse.X = window_mouse_get_x();
		__State.Input.Mouse.Y = window_mouse_get_y();
		for(var i = 0; i < 3; i++) __imgui_mouse(i, mouse_check_button(i + 1));
		if (mouse_wheel_up()) __imgui_mouse_wheel(0, 1);
		else if (mouse_wheel_down()) __imgui_mouse_wheel(0, -1);
		for(var i = ImGuiKey.NamedKey_BEGIN; i < ImGuiKey.NamedKey_END; i++) {
			var key = __Mapping[i];
			if (key > -1) __imgui_key(i, keyboard_check_direct(key));
		}
		__imgui_key(ImGuiKey.ImGuiMod_Ctrl, keyboard_check_direct(vk_lcontrol));
		__imgui_key(ImGuiKey.ImGuiMod_Shift, keyboard_check_direct(vk_lshift));
		__imgui_key(ImGuiKey.ImGuiMod_Alt, keyboard_check_direct(vk_lalt));
		if (__imgui_input(keyboard_string)) keyboard_string = "";
		window_set_cursor(__Cursor[__imgui_mouse_cursor() + 1]);
		return __imgui_update(__State);
	}
	
	static __Render = function() {
		if (Translator != undefined) {
			__imgui_render(Translator.Buffer);
			return Translator.Render();
		} else {
			return __imgui_render();
		}
	}
};