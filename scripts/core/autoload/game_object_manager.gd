extends Node

static var _id_count: int = -1
static var object_registry: Array = []

## Registers a new game object and returns its unique id.
static func register_game_object(game_object: GameObject) -> int:
	_id_count += 1
	var registry_item: Array = [_id_count, GameObject]
	object_registry.append(registry_item)
	return _id_count
