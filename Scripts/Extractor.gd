extends Container

enum PlayStatus {START, PAUSE, RESUME, STOP}

var config_file
var ball_scene = preload("res://Scenes/Ball.tscn")

# Extractor Variables
var balls = []
var next_extraction_state = PlayStatus.START
var curr_shooting
var shoot_i = 0
var shoot_j = 0
var timer_between_balls

func _ready():
	config_file = ConfigFile.new()
	config_file.load("res://GlobalConfigs.cfg")
	
	timer_between_balls = get_node("../Timer")
	timer_between_balls.connect("timeout", self, "shoot_ball")
	
	create_balls()

# Create all ball instances to be used
func create_balls():
	var amount_balls = config_file.get_value("EXTRACTION", "AMOUNT_BALLS")
	for i in amount_balls:
		var ball_instance = ball_scene.instance()
		ball_instance.hide()
		ball_instance.id = i
		add_child(ball_instance, true)

# Starts in-between balls timer and extraction
func start_extraction():
	shoot_i = 0
	shoot_j = 0
	curr_shooting = get_child(0)
	var timer_duration = config_file.get_value("EXTRACTION", "TIME_BETWEEN_BALLS")
	timer_between_balls.start(timer_duration)
	next_extraction_state = PlayStatus.PAUSE

# Extract current ball and ready next one
func shoot_ball():
	curr_shooting.extract(shoot_i, shoot_j)
	var amount_rows = config_file.get_value("EXTRACTION", "AMOUNT_ROWS")
	shoot_j += 1
	if shoot_j == amount_rows:
		shoot_j = 0
		shoot_i += 1
	var index = shoot_i*amount_rows + shoot_j
	var amount_balls = config_file.get_value("EXTRACTION", "AMOUNT_BALLS")
	if index < amount_balls:
		curr_shooting = get_child(index)
		var timer_duration = config_file.get_value("EXTRACTION", "TIME_BETWEEN_BALLS")
		timer_between_balls.start(timer_duration)

# Generate all ball nums for the play
func generate_play():
	var i = 0
	balls = []
	for ball in self.get_children():
		generate_value()
		ball.set_num(balls[i])
		i+=1

# Generate one random value
func generate_value():
	var found = false
	var ball_num = -1
	var max_num_balls = config_file.get_value("EXTRACTION", "MAX_NUM_BALLS")
	randomize()
	while not found:
		ball_num = (randi() %  (max_num_balls-1)) + 1
		if not balls.has(ball_num):
			balls.push_back(ball_num)
			found = true

# Decides on the next actions associated with the play button
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

# Toggle between paused and unpaused game
func toggle_pause(pause):
	timer_between_balls.set_paused(pause)
	for ball in self.get_children():
		ball.get_node("Timer").set_paused(pause)

# Toggle between block and allow close/open cards
func toggle_cards_block(block):
	var card_tray = get_node("../CardTray")
	for card in card_tray.get_children():
		var click_area = card.get_node("Button")
		click_area.visible = !block

# Allow go to stopped state, used after last ball extracted
func allow_finish_extraction():
	next_extraction_state = PlayStatus.STOP

# Reset play
func reset_play():
	var cards = get_node("../CardTray").get_children()
	for card in cards:
		card.reset()
	var prizetable = get_node("../Prizetable")
	prizetable.reset()
	for ball in self.get_children():
		ball.hide()
