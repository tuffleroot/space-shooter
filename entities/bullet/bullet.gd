extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var bullet_speed:=200

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position.y-=bullet_speed*delta
	
	if position.y<0:
		queue_free()
