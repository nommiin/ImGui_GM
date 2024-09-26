#include "../imgui_gm.h"

GMFUNC(__imgui_is_key_down) {
	RValue* key = &arg[0];
	GMHINT(ImGuiKey);
	ImGuiKey final_key = (ImGuiKey)key->asReal();
	RValue* owner_id = &arg[1];
	GMDEFAULT(undefined);
	GMHINT(ImGuiID);

	Result.kind = VALUE_BOOL;

	if (owner_id->kind == VALUE_UNDEFINED) {
		Result.val = ImGui::IsKeyDown(final_key);
	} else {
		Result.val = ImGui::IsKeyDown(final_key, (ImGuiID)owner_id->asReal());
	}
}

GMFUNC(__imgui_is_key_pressed) {
	RValue* key = &arg[0];
	GMHINT(ImGuiKey);
	ImGuiKey final_key = (ImGuiKey)key->asReal();
	RValue* repeat = &arg[1];
	GMDEFAULT(undefined);
	GMHINT(Bool);

	Result.kind = VALUE_BOOL;

	if (repeat->kind == VALUE_UNDEFINED) {
		Result.val = ImGui::IsKeyPressed(final_key);
	}
	else {
		Result.val = ImGui::IsKeyPressed(final_key, repeat->asBool());
	}

}

GMFUNC(__imgui_is_key_released) {
	RValue* key = &arg[0];
	GMHINT(ImGuiKey);
	ImGuiKey final_key = (ImGuiKey)key->asReal();
	RValue* owner_id = &arg[1];
	GMDEFAULT(undefined);
	GMHINT(ImGuiID);

	Result.kind = VALUE_BOOL;

	if (owner_id->kind == VALUE_UNDEFINED) {
		Result.val = ImGui::IsKeyReleased(final_key);
	}
	else {
		Result.val = ImGui::IsKeyReleased(final_key, (ImGuiID)owner_id->asReal());
	}

}

GMFUNC(__imgui_is_key_chord_pressed) {
	RValue* key_chord = &arg[0];
	GMHINT(ImGuiKeyChord);
	ImGuiKeyChord final_key_chord = (ImGuiKeyChord)key_chord->asReal();
	RValue* flags = &arg[1];
	GMDEFAULT(undefined);
	GMHINT(ImGuiInputFlags);
	RValue* owner_id = &arg[2];
	GMDEFAULT(undefined);
	GMHINT(ImGuiID);

	Result.kind = VALUE_BOOL;

	if (flags->kind == VALUE_UNDEFINED) {
		Result.val = ImGui::IsKeyChordPressed(final_key_chord);
	}
	else {
		if (owner_id->kind != VALUE_UNDEFINED) {
			Result.val = ImGui::IsKeyChordPressed(final_key_chord, (ImGuiInputFlags)flags->asReal(), (ImGuiID)owner_id->asReal());
		}
		else {
			Result.val = ImGui::IsKeyChordPressed(final_key_chord, (ImGuiInputFlags)flags->asReal(), NULL);
		}
	}
}

GMFUNC(__imgui_get_key_pressed_amount) {
	RValue* key = &arg[0];
	GMHINT(ImGuiKey);
	ImGuiKey final_key = (ImGuiKey)key->asReal();

	float repeat_delay = YYGetFloat(arg, 1);
	GMHINT(Float)
	float rate = YYGetFloat(arg, 2);
	GMHINT(Float)

	Result.kind = VALUE_REAL;
	Result.val = ImGui::GetKeyPressedAmount(final_key, repeat_delay, rate);
}

GMFUNC(__imgui_get_key_name) {
	RValue* key = &arg[0];
	GMHINT(ImGuiKey);
	ImGuiKey final_key = (ImGuiKey)key->asReal();

	Result.kind = VALUE_STRING;
	YYCreateString(&Result, ImGui::GetKeyName(final_key));
}

GMFUNC(__imgui_get_key_chord_name) {
	RValue* key_chord = &arg[0];
	GMHINT(ImGuiKeyChord);
	ImGuiKeyChord final_key_chord = (ImGuiKeyChord)key_chord->asReal();

	Result.kind = VALUE_STRING;
	YYCreateString(&Result, ImGui::GetKeyChordName(final_key_chord));
}

GMFUNC(__imgui_is_mouse_down) {
	RValue* button = &arg[0];
	GMHINT(ImGuiMouseButton);
	ImGuiMouseButton final_button = (ImGuiMouseButton)button->asReal();
	RValue* owner_id = &arg[1];
	GMDEFAULT(undefined);
	GMHINT(ImGuiID);

	Result.kind = VALUE_BOOL;

	if (owner_id->kind == VALUE_UNDEFINED) {
		Result.val = ImGui::IsMouseDown(final_button);
	}
	else {
		Result.val = ImGui::IsMouseDown(final_button, (ImGuiID)owner_id->asReal());
	}
}

GMFUNC(__imgui_is_mouse_clicked) {
	RValue* button = &arg[0];
	GMHINT(ImGuiMouseButton);
	ImGuiMouseButton final_button = (ImGuiMouseButton)button->asReal();
	RValue* repeat_or_flags = &arg[1];
	GMDEFAULT(undefined);
	GMHINT(Bool|ImGuiInputFlags);
	RValue* owner_id = &arg[2];
	GMDEFAULT(undefined);
	GMHINT(ImGuiID);

	Result.kind = VALUE_BOOL;

	if (owner_id->kind == VALUE_UNDEFINED) {
		Result.val = ImGui::IsMouseClicked(final_button, repeat_or_flags->asBool());
	}
	else {
		Result.val = ImGui::IsMouseClicked(final_button, (ImGuiInputFlags)(repeat_or_flags->asReal()), (ImGuiID)owner_id->asReal());
	}
}

GMFUNC(__imgui_is_mouse_released) {
	RValue* button = &arg[0];
	GMHINT(ImGuiMouseButton);
	ImGuiMouseButton final_button = (ImGuiMouseButton)button->asReal();
	RValue* owner_id = &arg[1];
	GMDEFAULT(undefined);
	GMHINT(ImGuiID);

	Result.kind = VALUE_BOOL;

	if (owner_id->kind == VALUE_UNDEFINED) {
		Result.val = ImGui::IsMouseReleased(final_button);
	}
	else {
		Result.val = ImGui::IsMouseReleased(final_button, (ImGuiID)owner_id->asReal());
	}
}

GMFUNC(__imgui_is_mouse_double_clicked) {
	RValue* button = &arg[0];
	GMHINT(ImGuiMouseButton);
	ImGuiMouseButton final_button = (ImGuiMouseButton)button->asReal();
	RValue* owner_id = &arg[1];
	GMDEFAULT(undefined);
	GMHINT(ImGuiID);

	Result.kind = VALUE_BOOL;

	if (owner_id->kind == VALUE_UNDEFINED) {
		Result.val = ImGui::IsMouseDoubleClicked(final_button);
	}
	else {
		Result.val = ImGui::IsMouseDoubleClicked(final_button, (ImGuiID)owner_id->asReal());
	}
}

GMFUNC(__imgui_get_mouse_clicked_count) {
	RValue* button = &arg[0];
	GMHINT(ImGuiMouseButton);
	ImGuiMouseButton final_button = (ImGuiMouseButton)button->asReal();

	Result.kind = VALUE_REAL;
	Result.val = ImGui::GetMouseClickedCount(final_button);

	GMRETURNS(Real);
}

GMFUNC(__imgui_is_mouse_hovering_rect) {
	float min_x = YYGetFloat(arg, 0);
	float min_y = YYGetFloat(arg, 1);
	float max_x = YYGetFloat(arg, 2);
	float max_y = YYGetFloat(arg, 3);
	bool clip = YYGetBool(arg, 4);
	GMDEFAULT(true);
	GMHINT(Bool);

	Result.kind = VALUE_BOOL;
	Result.val = ImGui::IsMouseHoveringRect(ImVec2(min_x, min_y), ImVec2(max_x, max_y), clip);
}

GMFUNC(__imgui_is_mouse_pos_valid) {
	float mouse_x = YYGetFloat(arg, 0);
	float mouse_y = YYGetFloat(arg, 1);
	Result.kind = VALUE_BOOL;
	Result.val = ImGui::IsMousePosValid(new ImVec2(mouse_x, mouse_y));
}

GMFUNC(__imgui_is_any_mouse_down) {
	Result.kind = VALUE_BOOL;
	Result.val = ImGui::IsAnyMouseDown();
}

GMFUNC(__imgui_is_mouse_dragging) {
	RValue* button = &arg[0];
	GMHINT(ImGuiMouseButton);
	ImGuiMouseButton final_button = (ImGuiMouseButton)button->asReal();

	float lock_threshold = YYGetFloat(arg, 1);
	GMDEFAULT(-1.0);
	GMHINT(Float);

	Result.kind = VALUE_BOOL;
	Result.val = ImGui::IsMouseDragging(final_button, lock_threshold);
}

GMFUNC(__imgui_get_mouse_pos_x) {
	GMOVERRIDE(GetMousePosX);

	Result.kind = VALUE_REAL;
	Result.val = ImGui::GetMousePos().x;
}

GMFUNC(__imgui_get_mouse_pos_y) {
	GMOVERRIDE(GetMousePosY);

	Result.kind = VALUE_REAL;
	Result.val = ImGui::GetMousePos().y;
}

GMFUNC(__imgui_get_mouse_pos_on_opening_current_popup_x) {
	GMOVERRIDE(GetMousePosOnOpeningCurrentPopupX);

	Result.kind = VALUE_REAL;
	Result.val = ImGui::GetMousePosOnOpeningCurrentPopup().x;
}

GMFUNC(__imgui_get_mouse_pos_on_opening_current_popup_y) {
	GMOVERRIDE(GetMousePosOnOpeningCurrentPopupY);

	Result.kind = VALUE_REAL;
	Result.val = ImGui::GetMousePosOnOpeningCurrentPopup().y;
}

GMFUNC(__imgui_get_mouse_drag_delta_x) {
	GMOVERRIDE(GetMouseDragDeltaX);
	RValue* button = &arg[0];
	GMHINT(ImGuiMouseButton);
	ImGuiMouseButton final_button = (ImGuiMouseButton)button->asReal();

	float lock_threshold = YYGetFloat(arg, 1);
	GMDEFAULT(-1.0);
	GMHINT(Float);

	Result.kind = VALUE_REAL;
	Result.val = ImGui::GetMouseDragDelta(final_button, lock_threshold).x;
}
GMFUNC(__imgui_get_mouse_drag_delta_y) {
	GMOVERRIDE(GetMouseDragDeltaY);
	RValue* button = &arg[0];
	GMHINT(ImGuiMouseButton);
	ImGuiMouseButton final_button = (ImGuiMouseButton)button->asReal();

	float lock_threshold = YYGetFloat(arg, 1);
	GMDEFAULT(-1.0);
	GMHINT(Float);

	Result.kind = VALUE_REAL;
	Result.val = ImGui::GetMouseDragDelta(final_button, lock_threshold).y;
}

GMFUNC(__imgui_reset_mouse_drag_delta) {
	RValue* button = &arg[0];
	GMHINT(ImGuiMouseButton);
	ImGuiMouseButton final_button = (ImGuiMouseButton)button->asReal();

	ImGui::ResetMouseDragDelta(final_button);

	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_shortcut) {
	RValue* key_chord = &arg[0];
	GMHINT(ImGuiKeyChord);
	ImGuiKeyChord final_key_chord = (ImGuiKeyChord)key_chord->asReal();
	RValue* flags = &arg[1];
	GMHINT(ImGuiInputFlags);
	RValue* owner_id = &arg[2];
	GMDEFAULT(undefined);
	GMHINT(ImGuiID);

	Result.kind = VALUE_BOOL;

	if (owner_id->kind == VALUE_UNDEFINED) {
		Result.val = ImGui::Shortcut(final_key_chord, (ImGuiInputFlags)flags->asReal());
	}
	else {
		Result.val = ImGui::Shortcut(final_key_chord, (ImGuiInputFlags)flags->asReal(), (ImGuiID)owner_id->asReal());
	}
}

GMFUNC(__imgui_set_next_item_shortcut) {
	RValue* key_chord = &arg[0];
	GMHINT(ImGuiKeyChord);
	ImGuiKeyChord final_key_chord = (ImGuiKeyChord)key_chord->asReal();
	RValue* flags = &arg[1];
	GMHINT(ImGuiInputFlags);

	ImGui::SetNextItemShortcut(final_key_chord, (ImGuiInputFlags)flags->asReal());

	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_set_item_key_owner) {
	RValue* key = &arg[0];
	GMHINT(ImGuiKey);
	ImGuiKey final_key = (ImGuiKey)key->asReal();

	RValue* flags = &arg[1];
	GMDEFAULT(undefined);
	GMHINT(ImGuiInputFlags);

	Result.kind = VALUE_UNDEFINED;
	if (flags->kind == VALUE_UNDEFINED) {
		ImGui::SetItemKeyOwner(final_key);
	}
	else {
		ImGui::SetItemKeyOwner(final_key, (ImGuiInputFlags)(flags->asReal()));
	}
}