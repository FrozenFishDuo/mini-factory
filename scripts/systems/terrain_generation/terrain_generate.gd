extends Node

@onready var tile_map := $"../Terrain"

func _ready():
	var grid = GenerateNoise.generate_2d(1337, 0.5, 4, 0.9)
	for x in grid:
		for y in grid:
			var value = grid.get(Vector2i(x, y))
			tile_map.set_cell(Vector2i(x, y), 0, Vector2i(randi_range(0, 2), roundi(value*3)))
