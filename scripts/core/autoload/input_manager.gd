extends Node

static func cursor_set(cursor):
	match cursor:
		"default":
			Input.set_custom_mouse_cursor(load("res://assets/textures/mouse_cursors/mouse_default.png"))
		"grid_select":
			Input.set_custom_mouse_cursor(load("res://assets/textures/mouse_cursors/mouse_grid_select.png"))
