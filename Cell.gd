extends ColorRect

signal cell_matched


func on_cell_matched():
	pass # Replace with function body.

func connect_cell_signal(cell):
	connect("cell_matched", cell, "on_cell_ended")
