extends Node

@onready var level: RigidBody3D = %Level
@onready var level_csg: CSGPolygon3D = %Level/CSGPolygon3D
@onready var level_collision: CollisionShape3D = %Level/CollisionShape3D

var scale = 10

func _ready() -> void:
	level_csg.scale_object_local(Vector3(scale, scale, 1))
	(level_csg.material_override as StandardMaterial3D).uv1_scale.x *= scale
	(level_csg.material_override as StandardMaterial3D).uv1_scale.y *= scale
	level_collision.scale_object_local(Vector3(scale, scale, 1))

	var level_part = level.duplicate()
	
	level_part.translate(Vector3(0, 0, -scale / 2.))
	level_part.rotate(Vector3(1, 0, 0), deg_to_rad(90))
	
	add_child(level_part)
