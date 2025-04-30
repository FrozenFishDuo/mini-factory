extends Node


## a variable containing all of the inventory registry data
static var inventory_registry: Dictionary = {}

## registers an inventory entry in the inventory registry
static func register_inventory(id: int) -> void:
	inventory_registry[id] = Inventory.new()
	return

static func get_inventory(id: int) -> Inventory:
	return inventory_registry[id]
