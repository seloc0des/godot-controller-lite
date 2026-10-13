extends Node2D

# Lite demo: walk the square with arrows, press E at the sign. All wiring
# is nodes + Inspector — this script only narrates.

@onready var _status: Label = %Status


func _ready() -> void:
	_controllers_lite().interacted.connect(func(ia: Node, _by: Node) -> void:
		_status.text = "Bus event: %s" % ia.event)
	_controllers_lite().movement_locked_changed.connect(func(locked: bool) -> void:
		_status.text = "Movement %s." % ("locked (dialogue would do this)" if locked else "unlocked"))


func _on_lock_pressed() -> void:
	if _controllers_lite().is_locked():
		_controllers_lite().unlock_movement(&"demo")
	else:
		_controllers_lite().lock_movement(&"demo")


# ControllersLite is looked up when used instead of named. A script that names an
# autoload won't compile until the plugin that adds it is switched on, so a fresh
# install printed parse errors.
const CONTROLLERS_LITE := preload("res://addons/controller_lite/controllers_bus_lite.gd")


static func _controllers_lite() -> CONTROLLERS_LITE:
	return (Engine.get_main_loop() as SceneTree).root.get_node(^"ControllersLite") as CONTROLLERS_LITE
