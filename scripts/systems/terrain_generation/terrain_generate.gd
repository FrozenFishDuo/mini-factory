extends Node

@onready var tile_map := self

func _ready():
	var grid = GenerateNoise.generate_2d(1337, 0.5, 5, 0.05)
	for position in grid:
		var value = grid[position]
		tile_map.set_cell(position, 0, Vector2i(randi_range(0, 2), 2+round(value*2)))
