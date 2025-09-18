extends RigidBody3D


#func _input(event: InputEvent) -> void:
	#if event.is_action("Jump"):
		#apply_central_force(Vector3(0, 100, 0))
		#
	#if event.is_action("Forward"):
		#linear_velocity = Vector3.FORWARD

#func _physics_process(delta: float) -> void:
	#var collision = move_and_collide(linear_velocity * delta)
