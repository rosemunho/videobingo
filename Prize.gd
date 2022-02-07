extends Container

# Prize pattern:
# + for a prize cell
# - for an empty cell
var pattern = []

func connect_prize_signals():
	var cells = $CellContainer
	var cell
	for i in 15:
		if pattern[i] == '+':
			cell = cells.get_node("Cell" + str(i+1))
			cell.connect_cell_signal(cell)
			cell.color = Color(0, 1, 0, 1)
