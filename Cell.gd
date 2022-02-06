extends Node2D

enum Status {NO_PRIZE, ONE_AWAY, PRIZE}

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var curr_status = Status.NO_PRIZE
var num = -1

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
