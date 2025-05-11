extends Node
class_name FactoryComponent

var id: int = 0
var input: Array[int] = []
var output: Array[int] = []
var contents: Array[Item] = []
var progress: int = 0

func _init() -> void:
	id = IdManager.register_game_object(self)
	CoordinateManager.grid[Vector2(floor(self.global_position.x / 16), floor(self.global_position.y / 16))] = self
	return


func _exit_tree() -> void: # Cleanup Stuff
	IdManager.unregister_object(id)
	CoordinateManager.grid.erase(Vector2(floor(self.global_position.x / 16), floor(self.global_position.y / 16)))
	return
