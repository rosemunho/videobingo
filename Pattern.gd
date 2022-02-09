extends Container

var pattern = []
signal cell_matched_pattern

func _ready():
	var cells = $CellContainer
	var cell
	for i in 15:
		if pattern[i] == '+':
			cell = cells.get_node("Cell" + str(i+1))
			cell.color = Color.orange
