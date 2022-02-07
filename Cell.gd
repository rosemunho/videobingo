extends ColorRect

enum Status {NO_HIT, ONE_AWAY, HIT}

var curr_status = Status.NO_HIT
var num = -1

func test_value(ball_num):
	if ball_num == num:
		print(str(num) + ": It's a match")
		curr_status = Status.HIT
		update_color()

func update_color():
	match curr_status:
		Status.NO_HIT:
			color = Color(1, 1, 1, 1)
		Status.ONE_AWAY:
			color = Color(0, 1, 1, 1)
		Status.HIT:
			color = Color(0, 0, 1, 1)
