extends Node

@onready var mesh = %Mesh

func _ready() -> void:
	(mesh.material as StandardMaterial3D).uv1_scale = Vector3(100, 100, 100)
