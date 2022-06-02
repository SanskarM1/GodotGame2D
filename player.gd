extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var speed: int = 100 

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _physics_process(delta):
	var movedir: Vector2 = Vector2.ZERO
	if Input.is_action_pressed("moveUp"):
		movedir+= Vector2.UP
	if Input.is_action_pressed("moveRight"):
		movedir+= Vector2.RIGHT
	if Input.is_action_pressed("moveLeft"):
		movedir+= Vector2.LEFT
	if Input.is_action_pressed("moveDown"):
		movedir+= Vector2.DOWN
	self.move_and_slide(movedir.normalized()* self.speed)
	
	
		

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
