extends KinematicBody
var velocity = Vector3(0, 0, 0)
func _physics_process(delta):
	if Input.is_action_pressed("w"):
		velocity.z = 30

	move_and_slide(velocity)
