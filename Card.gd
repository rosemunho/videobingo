extends Container


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var is_active = true
var cells = []
var curr_prize = -1

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

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
	for i in 15:
		randomize()
		cells.push_back((randi() %  60-1) + 1)


func on_card_clicked():
	is_active = not is_active
	display_card()
