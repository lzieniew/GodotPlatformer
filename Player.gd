extends KinematicBody2D

const GRAVITY = 20
const SPEED = 400
const JUMP_HEIGHT = -500
const UP = Vector2(0,-1)
var motion = Vector2()

func _physics_process(delta):
	if Input.is_action_pressed('ui_right'):
		motion.x = SPEED
	elif Input.is_action_pressed('ui_left'):
		motion.x = -SPEED
	else:
		motion.x = 0
		
	motion.y += GRAVITY
	
	if is_on_floor():
		if Input.is_action_pressed('ui_up'):
			motion.y = JUMP_HEIGHT
	motion = move_and_slide(motion, UP)
