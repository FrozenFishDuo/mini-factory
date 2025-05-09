extends Node2D

@onready var pause_menu = $CanvasLayer/Pause
@onready var confirm_exit = $CanvasLayer/ConfirmExit
@onready var button_resume = $CanvasLayer/Pause/Resume
@onready var button_save = $CanvasLayer/Pause/Save
@onready var button_options = $CanvasLayer/Pause/Options
@onready var button_exit = $CanvasLayer/Pause/Exit

@onready var label_exit = $CanvasLayer/ConfirmExit/ExitLabel
@onready var button_return = $CanvasLayer/ConfirmExit/Return
@onready var button_confirm_exit = $CanvasLayer/ConfirmExit/Exit

func _ready():
	# Connect buttons to methods
	button_resume.pressed.connect(play)
	#button_save.pressed.connect(play)
	#button_options.pressed.connect(exit)
	button_exit.pressed.connect(ask_exit)
	
	button_return.pressed.connect(comfirm_exit_return)
	button_confirm_exit.pressed.connect(exit)

func play():
	pause_menu.visible = false
	get_tree().paused = false

func ask_exit():
	pause_menu.visible = false
	confirm_exit.visible = true

func comfirm_exit_return():
	confirm_exit.visible = false
	pause_menu.visible = true

func exit():
	get_tree().paused = false
	get_tree().change_scene_to_file("res://scenes/main/main_menu.tscn")
