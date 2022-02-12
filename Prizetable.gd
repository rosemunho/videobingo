extends VBoxContainer

var pattern_scene = preload("res://Pattern.tscn")

# Prize pattern:
# + for a prize cell
# - for an empty cell
var prize_patterns = [
	[ #BINGO
		"+", "+", "+", "+", "+",
		"+", "+", "+", "+", "+",
		"+", "+", "+", "+", "+"
	],
	[ #SQUARE
		"+", "+", "+", "+", "+",
		"+", "-", "-", "-", "+",
		"+", "+", "+", "+", "+"
	],
	[ #H
		"+", "-", "-", "-", "+",
		"+", "+", "+", "+", "+",
		"+", "-", "-", "-", "+"
	],
	[ #CORNERS
		"+", "-", "-", "-", "+",
		"-", "-", "-", "-", "-",
		"+", "-", "-", "-", "+"
	]
]

func _ready():
	for pattern in prize_patterns:
		var pattern_instance = pattern_scene.instance()
		pattern_instance.pattern = pattern
		pattern_instance.id = get_child_count()
		add_child(pattern_instance, true)

func reset():
	for pattern in get_children():
		pattern.reset()
