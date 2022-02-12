extends Sprite

var config_file

# General Balls Variables
var colors = []
var spacing = 5
var ball_size = Vector2.ZERO

# Balls Info Variables
var id = -1
var num = -1

# Extraction Animation Variables
var pos_start = Vector2.ZERO
var pos_end = Vector2.ZERO

signal ball_ended(ball_num)

func _ready():
	config_file = ConfigFile.new()
	config_file.load("res://GlobalConfigs.cfg")
	
	colors.push_back(Color.red)
	colors.push_back(Color.orange)
	colors.push_back(Color.yellow)
	colors.push_back(Color.green)
	colors.push_back(Color.aqua)
	colors.push_back(Color.purple)
	colors.push_back(Color.magenta)
	colors.push_back(Color.blue)
	colors.push_back(Color.limegreen)
	
	#Get values used to calculate positions for the animation
	ball_size = get_rect().size
	
	var ball_tray_size = get_parent().get_size()
	pos_start = Vector2(ball_tray_size.x - ball_size.x, ((ball_tray_size.y - ball_size.y) / 2))
	
	#Make cards wait for ball extraction animation end
	var cards = get_node("../../CardTray")
	for card in cards.get_children():
		connect("ball_ended", card, "on_ball_ended")

# Set ball num, as well as color
func set_num(num):
	self.num = num
	$Num.text = str(num)
	var color_index = int(round((num-1)/10))
	var color = colors[color_index]
	self_modulate = color
	
func _process(delta):
	# Animate the balls extraction
	if not $Timer.is_paused():
		var timer_duration = config_file.get_value("EXTRACTION", "BALL_PATH_DURATION")
		var next_pos = pos_start.linear_interpolate(pos_end, 1-($Timer.get_time_left()/timer_duration))
		set_position(next_pos)

# Start everything for this ball's extraction
func extract(i, j):
	var x = i * (ball_size.x + spacing)
	var y = j * (ball_size.y + spacing)
	set_position(pos_start)
	pos_end = Vector2(x, y)
	show()
	var timer_duration = config_file.get_value("EXTRACTION", "BALL_PATH_DURATION")
	$Timer.start(timer_duration)

# Function called by a signal after extraction animation ends
func on_ballpath_end():
	emit_signal("ball_ended", num)
	var amount_balls = config_file.get_value("EXTRACTION", "AMOUNT_BALLS")
	if (amount_balls - 1) == id:
		var ball_tray = get_parent()
		ball_tray.allow_finish_extraction()
