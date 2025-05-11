extends Node

static var _id: int = 0
static var _object_registry: Array[Dictionary] = []

## Registers a new game object and returns its unique ID.
static func register_game_object(factory_component: FactoryComponent) -> int:
	_object_registry.append([_id, factory_component])
	_id += 1
	return _id - 1 # the last elements id

## Returns the object in the registry that matches the input ID.
static func get_object_by_id(id: int) -> FactoryComponent:
	for entry in _object_registry:
		if entry[0] == id:
			return entry[1]
	return null


## Returns the ID of the object in the registry if it matches the given game_object.
static func get_id_by_object(game_object: FactoryComponent) -> int:
	for entry in _object_registry:
		if game_object == entry[1]:
			return entry[0]
	return -1

## Unregisters the object with the given ID from the registry.
static func unregister_object(id: int) -> void:
	for entry in _object_registry:
		if entry[0] == id:
			_object_registry.erase(entry)
	return

## Clears the entire object registry.
static func clear_registry() -> void:
	_object_registry.clear()
	return

## Returns all registered game objects.y
static func get_all_objects() -> Array:
	var objects: Array = []
	for entry in _object_registry:
		objects.append(entry[1])
	return objects

## Checks if an object with the given ID exists in the registry.
static func contains(id: int) -> bool:
	for entry in _object_registry:
		if entry[0] == id:
			return true
	return false
