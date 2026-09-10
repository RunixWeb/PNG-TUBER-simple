extends Node2D

func _ready() -> void:
	get_window().mouse_passthrough = true
	DisplayServer.window_set_mouse_passthrough(PackedVector2Array([]))
