class_name Enemy
extends Area2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var speed: int =120

# Called when the node enters the scene tree for the first time.
func _ready():
	randomize()
	position=Vector2(rand_range(0,400),0)
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position.y+=speed*delta


func _on_Area2D_area_entered(area:Area2D):
	if area.name=="BulletArea":
		area.get_parent().queue_free()
		queue_free()
