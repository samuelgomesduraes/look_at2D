extends KinematicBody2D

var speed=100
var motion=Vector2(0,0)
func _ready():
	pass # Replace with function body.
func _process(delta):
	if Input.is_action_pressed("ui_left"):
		motion.x=-speed
	elif Input.is_action_pressed("ui_right"):
		motion.x=speed
	else:
		motion.x=0
	if Input.is_action_pressed("ui_up"):
		motion.y=-speed
	elif Input.is_action_pressed("ui_down"):
		motion.y=speed
	else:
		motion.y=0
	motion=move_and_slide(motion)
