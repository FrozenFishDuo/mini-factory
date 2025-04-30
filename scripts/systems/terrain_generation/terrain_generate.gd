extends Node

@onready var tile_map := $Terrain
@onready var ore_map := $TerrainOre
var dirt_value = 0.35# what number to use to discard if a piece of terrain is dirt, letting the grass remain?(smaller == more dirt)
var ore_value = 0.75# same as above

func _ready():
	# generate grass
	var grid = GenerateNoise.generate_2d(1337, 0.5, 5, 0.05)
	for position in grid:
		var value = grid[position]
		tile_map.set_cell(position, 0, Vector2i(randi_range(0, 2), 2+round(value*2)))
	
	# generate dirt
	grid = GenerateNoise.generate_2d(1338, 0.5, 5, 0.01)
	for position in grid:
		var value = grid[position]
		if value > dirt_value:
			tile_map.set_cell(position, 0, Vector2i(randi_range(0, 2), 7+round(value*3)))
	
	# generate ore
	grid = GenerateNoise.generate_2d(1339, 0.5, 5, 0.2)
	for position in grid:
		var value = grid[position]
		if value > ore_value:
			ore_map.set_cell(position, 0, Vector2i(randi_range(0, 2), 10))
