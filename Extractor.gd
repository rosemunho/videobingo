extends Container

enum PlayStatus {START, PAUSE, RESUME, STOP}
var config = ConfigFile.new()

var ball_scene = preload("res://Ball.tscn")
var balls = []
var next_extraction_state = PlayStatus.START

# Called when the node enters the scene tree for the first time.
func _ready():
	config.load("res://GlobalConfigs.cfg")
	create_balls()

func create_balls():
	for i in 30:
		var ball_instance = ball_scene.instance()
		add_child(ball_instance, true)

func start_extraction():
	for ball in self.get_children():
		ball.extract()

func generate_play():
	var ball_num
	var i = 0
	for ball in self.get_children():
		generate_value()
		ball.num = balls[i]
		ball_num = ball.get_node("Num")
		ball_num.text = str(balls[i])
		i+=1

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

func on_play_btn_clicked():
	match next_extraction_state:
		PlayStatus.START:
			generate_play()
			start_extraction()
		PlayStatus.PAUSE:
			print("paused")
		PlayStatus.RESUME:
			print("resumed")
		PlayStatus.STOP:
			print("stopped and reset")
