extends Node

@onready var tile_map := $"../Terrain"

func _ready():
	var grid = GenerateNoise.generate_2d(1337, 0.5, 4, 0.9)
	for position in grid:
		var value = grid[position]
		tile_map.set_cell(position, 0, Vector2i(randi_range(0, 2), roundi(value*3)))
