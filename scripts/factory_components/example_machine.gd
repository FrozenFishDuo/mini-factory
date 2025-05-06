extends FactoryComponent

func _ready() -> void:
	id = IdManager.register_game_object(self)
	return
