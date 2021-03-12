extends KinematicBody2D

#constants defined
const UP = Vector2(0, -1)
const GRAVITY = 20
const SPEED = 30
const JUMP_HEIGHT = -550

#variables defined
var motion = Vector2()

# Called when the node enters the scene tree for the first time.
#func _ready():
#	pass # Replace with function body.

func _physics_process(delta):
	motion.y += GRAVITY
	
	if Input.is_action_pressed("ui_right"):
		motion.x += SPEED
	elif Input.is_action_pressed("ui_left"):
		motion.x += -SPEED
	else:
		motion.x = 0;
	
	if is_on_floor():
		if Input.is_action_just_pressed("ui_up"):
			motion.y = JUMP_HEIGHT
	
	move_and_slide(motion, UP)
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
