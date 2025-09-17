extends Node3D

	
func _input(event: InputEvent) -> void:
	if event.is_action("Jump"):
		$RigidBody3D.apply_central_force(Vector3(0, 10, 0))
