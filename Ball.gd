extends Sprite

var colors = []
var spacing = 5
var ball_size = Vector2.ZERO

var num = -1

var pos_start = Vector2.ZERO
var pos_end = Vector2.ZERO
var time_end = -1

signal ball_ended(ball_num)

func _ready():
	colors.push_back(Color.red)
	colors.push_back(Color.orange)
	colors.push_back(Color.yellow)
	colors.push_back(Color.green)
	colors.push_back(Color.aqua)
	colors.push_back(Color.purple)
	colors.push_back(Color.magenta)
	colors.push_back(Color.blue)
	colors.push_back(Color.limegreen)
	
	ball_size = get_rect().size
	
	var ball_tray_size = get_parent().get_size()
	pos_start = Vector2(ball_tray_size.x - ball_size.x, ((ball_tray_size.y - ball_size.y) / 2))
	print(pos_start)
	
	var cards = get_node("../../CardTray")
	for card in cards.get_children():
		connect("ball_ended", card, "on_ball_ended")

func _process(delta):
	if not $Timer.is_paused():
		var next_pos = pos_start.linear_interpolate(pos_end, 1-($Timer.get_time_left()/3))
		set_position(next_pos)
	
func extract(i, j):
	var x = i * (ball_size.x + spacing)
	var y = j * (ball_size.y + spacing)
	set_position(pos_start)
	pos_end = Vector2(x, y)
	show()
	$Timer.start(3)

#change hardcoded values
func set_num(num):
	self.num = num
	$Num.text = str(num)
	var color_index = int(round((num-1)/10))
	var color = colors[color_index]
	self_modulate = color

func on_ballpath_end():
	emit_signal("ball_ended", num)
	var ball_tray = get_parent()
	if ("Ball" + str((ball_tray.get_child_count() - 1))) == self.name:
		ball_tray.try_finish_extraction()

