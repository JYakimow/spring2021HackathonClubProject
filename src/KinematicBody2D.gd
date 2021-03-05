extends KinematicBody2D

var motion = Vector2()

# Called when the node enters the scene tree for the first time.
#func _ready():
#	pass # Replace with function body.

func _physics_process(delta):
	motion.y += 10
	
	if Input.is_action_pressed("ui_right"):
		motion.x += 100
	elif Input.is_action_pressed("ui_left"):
		motion.x += -100
	
	move_and_slide(motion)
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
