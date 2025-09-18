extends Node

@onready var level = %Level

func _ready() -> void:
	level.scale.x *= 100.
	level.scale.z *= 100.
