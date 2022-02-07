extends Container

var is_active = true
var cells = []
var curr_prize = -1

func _ready():
	display_card()

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
	var cell
	var cell_num
	print(self.get_name())
	for i in 15:
		generate_value()
		cell = get_node("CellContainer/Cell" + str(i+1))
		cell.num = cells[i]
		cell_num = cell.get_node("Num")
		cell_num.text = str(cells[i])
		print(str(i) + ": " + str(cell.num))

func generate_value():
	var found = false
	var cell_num = -1
	randomize()
	while not found:
		cell_num = (randi() %  (60-1)) + 1
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
	for cell in cells.get_children():
		cell.test_value(ball_num)
