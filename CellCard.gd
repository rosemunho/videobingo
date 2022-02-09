extends ColorRect

enum Status {NO_HIT, ONE_AWAY, HIT}

var curr_status = Status.NO_HIT
var num = -1

func test_value(ball_num):
	if ball_num == num:
		curr_status = Status.HIT
		update_color()

func update_color():
	match curr_status:
		Status.NO_HIT:
			color = Color.white
		Status.ONE_AWAY:
			color = Color.darkgray
		Status.HIT:
			color = Color.deepskyblue

func reset():
	curr_status = Status.NO_HIT
	update_color()
