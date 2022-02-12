extends Container

enum PlayStatus {START, PAUSE, RESUME, STOP}
var config = ConfigFile.new()

var ball_scene = preload("res://Ball.tscn")
var balls = []
var next_extraction_state = PlayStatus.START
var next_shooting
var shoot_i = 0
var shoot_j = 0
var timer_between_balls

func _ready():
	config.load("res://GlobalConfigs.cfg")
	timer_between_balls = get_node("../Timer")
	timer_between_balls.connect("timeout", self, "shoot_next")
	create_balls()

func create_balls():
	for i in 30:
		var ball_instance = ball_scene.instance()
		ball_instance.hide()
		ball_instance.id = i
		add_child(ball_instance, true)

func start_extraction():
	shoot_i = 0
	shoot_j = 0
	next_shooting = get_child(0)
	timer_between_balls.start(0.5)
	next_extraction_state = PlayStatus.PAUSE

func shoot_next():
	next_shooting.extract(shoot_i, shoot_j)
	shoot_j += 1
	if shoot_j == 3:
		shoot_j = 0
		shoot_i += 1
	var index = shoot_i*3 + shoot_j
	if index < 30:
		next_shooting = get_child(index)
		timer_between_balls.start(0.5)

func generate_play():
	var i = 0
	balls = []
	for ball in self.get_children():
		generate_value()
		ball.set_num(balls[i])
		i+=1

func generate_value():
	var found = false
	var ball_num = -1
	randomize()
	while not found:
		ball_num = (randi() %  (40-1)) + 1
		if not balls.has(ball_num):
			balls.push_back(ball_num)
			found = true

func on_play_btn_clicked():
	match next_extraction_state:
		PlayStatus.START:
			reset_play()
			generate_play()
			start_extraction()
			toggle_cards_block(true)
		PlayStatus.PAUSE:
			toggle_pause(true)
			next_extraction_state = PlayStatus.RESUME
		PlayStatus.RESUME:
			toggle_pause(false)
			next_extraction_state = PlayStatus.PAUSE
		PlayStatus.STOP:
			reset_play()
			toggle_cards_block(false)
			next_extraction_state = PlayStatus.START
			
func reset_play():
	var cards = get_node("../CardTray").get_children()
	for card in cards:
		card.reset()
	var prizetable = get_node("../Prizetable")
	prizetable.reset()
	for ball in self.get_children():
		ball.hide()

func toggle_pause(pause):
	timer_between_balls.set_paused(pause)
	for ball in self.get_children():
		ball.get_node("Timer").set_paused(pause)

func allow_finish_extraction():
	next_extraction_state = PlayStatus.STOP

func toggle_cards_block(block):
	var card_tray = get_node("../CardTray")
	for card in card_tray.get_children():
		var click_area = card.get_node("Button")
		click_area.visible = !block
