extends Node
class_name GenerateNoise

static var noise: FastNoiseLite
static var map_size = 64
@export var seed: int
@export var offset: float
@export var layers: int
@export var smoothness: float



static func generate_2d(seed, offset, layers, smoothness) ->  Dictionary:
	noise = FastNoiseLite.new()
	
	#set some settings
	noise.noise_type = FastNoiseLite.TYPE_SIMPLEX
	noise.fractal_gain = offset
	noise.fractal_octaves = layers
	noise.frequency = smoothness
	noise.seed = seed
	
	#add result to a grid
	var grid = {}
	for x in map_size:
		for y in map_size:
			grid[Vector2i(x,y)] = noise.get_noise_2d(x, y)
	
	#enjoy!
	return grid
