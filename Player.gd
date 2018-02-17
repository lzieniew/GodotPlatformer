extends KinematicBody2D

var motion = Vector2()

func _physics_process(delta):
	if Input.is_action_pressed('ui_right'):
		motion.x = 200
	if Input.is_action_pressed('ui_left'):
		motion.x = -200
	if Input.is_action_pressed('ui_up'):
		motion.y = 200
	if Input.is_action_pressed('ui_down'):
		motion.y = -200
	
	move_and_slide(motion)
