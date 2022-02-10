extends Container

var pattern = []
var pattern_indexes = []
var id = -1

signal on_pattern_matched

func _ready():
	var cells = $CellContainer
	var cell
	for i in 15:
		if pattern[i] == '+':
			pattern_indexes.push_back(i)
			cell = cells.get_node("Cell" + str(i+1))
			cell.color = Color.orange

func test_match(card_cells, curr_hits):
	if curr_hits < pattern_indexes.size():
		return false
	
	for index in pattern_indexes:
		if !card_cells[index].is_hit():
			return false
	
	for index in pattern_indexes:
		card_cells[index].set_prize_status()
	emit_signal("on_pattern_matched")
	$ReferenceRect.show()
