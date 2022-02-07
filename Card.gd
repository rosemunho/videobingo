extends Container

var is_active = true
var cells = []
var curr_prize = -1

func display_card():
	if not is_active:
		cells = []
		$Sprite.show()
		$CellContainer.hide()
	else:
		generate_values()
		$CellContainer.show()
		$Sprite.hide()
		
# Change hardcoded values
func generate_values():
	var cell_num
	for i in 15:
		randomize()
		cells.push_back((randi() %  60-1) + 1)
		cell_num = get_node("CellContainer/Cell" + str(i+1) + "/Num")
		cell_num.text = str(cells[i])

func on_card_clicked():
	is_active = not is_active
	display_card()

func on_ball_ended():
	print("on ball ended: " + self.get_name())
