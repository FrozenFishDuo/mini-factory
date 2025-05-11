extends Node2D

@onready var pause_menu = $PauseMenu/CanvasLayer/Pause

func _process(delta):
	if Input.is_action_just_pressed("cancel"):
		if !get_tree().paused:
			get_tree().paused = true
			pause_menu.visible = true
		else:
			get_tree().paused = false
			pause_menu.visible = false
