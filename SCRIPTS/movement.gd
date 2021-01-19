extends KinematicBody
var velocity = Vector3(0, 0, 0)
func _physics_process(delta):
	if Input.is_action_pressed("w"):
		velocity.z = 30
	elif Input.is_action_pressed("s"):
		velocity.z = -30
	velocity.z = lerp(velocity.z, 0, .2)
	move_and_slide(velocity)
	$Label.set_text(str(get_position_in_parent()))
