extends Node
class_name mechanism

var id: int = 0

# these arrays contain ids to figure out what its connections are
var input: Array[int] = []
var output: Array[int] = []

var contents: Array[Item] = []

var progress: int = 0

func _ready() -> void:
	return
