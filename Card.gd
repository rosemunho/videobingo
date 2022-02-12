extends Container

var config_file

# Card Info Variables
var is_active = true
var cells = []
var curr_prize = -1

func _ready():
	config_file = ConfigFile.new()
	config_file.load("res://GlobalConfigs.cfg")
	
	display_card()

# Update card visibility and generate numbers if visible
func display_card():
	if not is_active:
		cells = []
		$Sprite.show()
		$CellContainer.hide()
	else:
		generate_card()
		$CellContainer.show()
		$Sprite.hide()
		
# Change hardcoded values
func generate_card():
	var amount_cells = config_file.get_value("CARDS", "AMOUNT_CELLS")
	for i in 15:
		generate_value()
	cells.sort()
	var cell_index
	var cell
	var cell_num
	var k = 0
	for i in 5:
		for j in 3:
			cell_index = i + j*5
			cell = get_node("CellContainer/Cell" + str(cell_index+1))
			cell.num = cells[k]
			cell_num = cell.get_node("Num")
			cell_num.text = str(cells[k])
			k+=1

func generate_value():
	var found = false
	var cell_num = -1
	randomize()
	var max_num_balls = config_file.get_value("EXTRACTION", "MAX_NUM_BALLS")
	while not found:
		cell_num = (randi() %  (max_num_balls-1)) + 1
		if not cells.has(cell_num):
			cells.push_back(cell_num)
			found = true

func on_card_clicked():
	is_active = not is_active
	display_card()

func on_ball_ended(ball_num):
	if not is_active:
		return
	var cells = $CellContainer
	var found = false
	for cell in cells.get_children():
		found = cell.test_value(ball_num)
		if found:
			curr_hits += 1
			break
	if found:
		for pattern_index in possible_patterns:
			var curr_pattern = get_node("../../Prizetable/").get_child(pattern_index)
			curr_pattern.test_match($CellContainer.get_children(), curr_hits)
	if curr_pattern != null:
		print(str(curr_pattern.id))
#			print("test hits")
#			min_pattern.test_match($CellContainer.get_children(), curr_hits)

func reset():
	var prizetable = get_node("../../Prizetable/")
	min_pattern = prizetable.get_child(prizetable.get_child_count()-1)
	min_pattern.connect("pattern_matched", self, "on_pattern_matched")
	
	for pattern in prizetable.get_children():
		possible_patterns.push_back(pattern.id)
	
	cells = ($CellContainer).get_children()
	for cell in cells:
		cell.reset()

var curr_pattern
var min_pattern
var curr_hits = 0

var possible_patterns = []

func on_pattern_matched():
	print ("on_pattern_matched")
	# animate prize
	update_current_pattern()
	
func update_current_pattern():
	curr_pattern = min_pattern
	min_pattern.disconnect("pattern_matched", self, "on_pattern_matched")
	if curr_pattern.id > 0:
		min_pattern = get_node("../../Prizetable").get_child(curr_pattern-1)
		min_pattern.connect("pattern_matched", self, "on_pattern_matched")
