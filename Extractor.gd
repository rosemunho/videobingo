extends Container

enum PlayStatus {START, PAUSE, RESUME, STOP}
var config = ConfigFile.new()

var ball_scene = preload("res://Ball.tscn")
var balls = []
var next_extraction_state = PlayStatus.START

# Called when the node enters the scene tree for the first time.
func _ready():
	config.load("res://GlobalConfigs.cfg")

# Changed this to generate only 1 number and change hardcoded values to var 
#func generate_values():
#	var ball_num = -1
#	var i = 0
#	randomize()
#	while i < 30:
#		ball_num = (randi() %  60-1) + 1
#		if not balls.has(ball_num):
#			balls.push_back(ball_num)
#			print(ball_num)
#			i += 1

func generate_value():
	var found = false
	var ball_num = -1
	randomize()
	while not found:
		ball_num = (randi() %  60-1) + 1
		if not balls.has(ball_num):
			balls.push_back(ball_num)
			print(ball_num)
			found = true
		

func create_balls():
	var ball_num
	for i in 30:
		var ball_instance = ball_scene.instance()
		add_child(ball_instance, true)
		generate_value()
		if i+1 == 1:
			ball_num = get_node("Ball/Num")
		else:
			ball_num = get_node("Ball" + str(i+1) + "/Num")
		ball_num.text = str(balls[i])

func on_play_btn_clicked():
	match next_extraction_state:
		PlayStatus.START:
			#generate_values()
			create_balls()
		PlayStatus.PAUSE:
			print("paused")
		PlayStatus.RESUME:
			print("resumed")
		PlayStatus.STOP:
			print("stopped and reset")
	
