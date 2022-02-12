extends Container

var config_file

# Specific Pattern Variables
var pattern = []
var pattern_indexes = []
var id = -1

signal on_pattern_matched

func _ready():
	config_file = ConfigFile.new()
	config_file.load("res://GlobalConfigs.cfg")
	
	build_pattern()

# Color pattern cells
func build_pattern():
	var cells = $CellContainer
	var cell
	var amount_cells = config_file.get_value("CARDS", "AMOUNT_CELLS")
	for i in amount_cells:
		if pattern[i] == '+':
			pattern_indexes.push_back(i)
			cell = cells.get_node("Cell" + str(i+1))
			cell.color = Color.orange

# Check if card matches pattern
func test_match(card_cells, curr_hits):
	if curr_hits < pattern_indexes.size():
		return false
	
	for index in pattern_indexes:
		if !card_cells[index].is_hit():
			return false
	
	for index in pattern_indexes:
		card_cells[index].set_prize_status()
		
	emit_signal("on_pattern_matched")
	$Highlight.show()
	$AudioStreamPlayer2D.play()
	return true

# Reset pattern
func reset():
	$Highlight.hide()
