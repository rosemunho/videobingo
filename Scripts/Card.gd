extends Container

var config_file

# Card Info Variables
var is_active = true
var cells = []

# Prize Pattern Matching Variable
var curr_hits = 0
var possible_patterns = []
var matched_pattern = null

func _ready():
	config_file = ConfigFile.new()
	config_file.load("res://GlobalConfigs.cfg")
	
	display_card()

# Update card visibility and generate card info if visible
func display_card():
	if not is_active:
		cells = []
		$Sprite.show()
		$CellContainer.hide()
	else:
		generate_card()
		$CellContainer.show()
		$Sprite.hide()
		
# Generate card info
func generate_card():
	var amount_cells = config_file.get_value("CARDS", "AMOUNT_CELLS")
	var amount_rows = config_file.get_value("CARDS", "AMOUNT_ROWS")
	var amount_cols = config_file.get_value("CARDS", "AMOUNT_COLS")
	for i in amount_cells:
		generate_value()
	cells.sort()
	var cell_index
	var k = 0
	var cell
	var cell_num
	for i in amount_cols:
		for j in amount_rows:
			cell_index = i + j*amount_cols
			cell = $CellContainer.get_child(cell_index).set_num(cells[k])
			k+=1

# Generate one random value
func generate_value():
	var found = false
	var cell_num = -1
	var max_num_balls = config_file.get_value("EXTRACTION", "MAX_NUM_BALLS")
	randomize()
	while not found:
		cell_num = (randi() %  (max_num_balls-1)) + 1
		if not cells.has(cell_num):
			cells.push_back(cell_num)
			found = true

# Check if card has num
func has_num(num):
	if not is_active:
		return false
	return cells.has(num)
	
# Called when card is clicked, used to toggle between active and not active
func on_card_clicked():
	is_active = not is_active
	display_card()

func on_ball_ended(ball_num):
	if not is_active:
		return
	var cells_container = $CellContainer
	var found = false
	for cell in cells_container.get_children():
		found = cell.test_match(ball_num)
		if found:
			curr_hits += 1
			break
	
	if found:
		var matched = false
		var curr_pattern
		var new_possible_patterns = []
		for pattern_index in possible_patterns:
			# comparing with all the possible pattern starting with the highest
			curr_pattern = get_node("../../Prizetable/").get_child(pattern_index)
			matched = curr_pattern.test_match($CellContainer.get_children(), curr_hits)
			if matched:
				matched_pattern = curr_pattern
				possible_patterns = new_possible_patterns
				break
			else:
				# next iterations can only matched up to the current one
				new_possible_patterns.push_back(pattern_index)

# Reset card
func reset():
	var prizetable = get_node("../../Prizetable/")
	for pattern in prizetable.get_children():
		possible_patterns.push_back(pattern.id)
	
	var node_cells = ($CellContainer).get_children()
	for cell in node_cells:
		cell.reset()
