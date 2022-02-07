extends Node2D

var num = -1
var init_pos = [-1, -1]
var end_pos = [-1, -1]
var color = "white"

signal ball_ended

func _ready():
	var cards = get_node("../../CardTray")
	for card in cards.get_children():
		connect("ball_ended", card, "on_ball_ended")

func extract():
	emit_signal("ball_ended")
	pass
