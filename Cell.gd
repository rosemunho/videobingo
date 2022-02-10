extends ColorRect

enum Status {NO_HIT, ONE_AWAY, HIT, PRIZE}

var curr_status = Status.NO_HIT
var num = -1

func test_value(ball_num):
	if ball_num == num:
		curr_status = Status.HIT
		update_color()
		return true
	return false

func update_color():
	match curr_status:
		Status.NO_HIT:
			color = Color.white
		Status.ONE_AWAY:
			color = Color.darkgray
		Status.HIT:
			color = Color.deepskyblue
		Status.PRIZE:
			color = Color.orangered

func reset():
	curr_status = Status.NO_HIT
	update_color()

func is_hit():
	return curr_status == Status.HIT
	
func set_prize_status():
	curr_status = Status.PRIZE
	update_color()
