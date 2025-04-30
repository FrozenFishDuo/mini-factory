extends Node
class_name GameObject

var id: int = 0

# these arrays contain ids to figure out what its connections are
var input: Array = []
var output: Array = []


var power: float = 0
var power_usage: float = 0

# optional inventory for blocks (i dont know if im going to keep this here)
var inventory: Inventory

func _ready() -> void:
	id = GameObjectManager.register_game_object(self)
	
