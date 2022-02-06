extends Container

var config = ConfigFile.new()

var ball_scene = preload("res://Ball.tscn")
var balls = []

# Called when the node enters the scene tree for the first time.
func _ready():
	config.load("res://GlobalConfigs.cfg")
	
	create_balls()

# Changed this to generate only 1 number and change hardcoded values to var 
func generate_values():
	var ball_num = -1
	var i = 0
	randomize()
	while i < 30:
		ball_num = (randi() %  60-1) + 1
		if not balls.has(ball_num):
			balls[i] = ball_num
			i += 1

func create_balls():
	for i in 30:
		var ball_instance = ball_scene.instance()
		add_child(ball_instance, true)
	
