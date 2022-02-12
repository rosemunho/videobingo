extends ColorRect

enum Status {NO_HIT, ONE_AWAY, HIT, PRIZE}

# Cell Info Variables
var curr_status = Status.NO_HIT
var num = -1

# Set cell num
func set_num(num):
	self.num = num
	$Num.text = str(num)

# Check if cell has been a hit
func is_hit():
	return curr_status == Status.HIT

# Set cell status as having a prize
func set_prize_status():
	curr_status = Status.PRIZE
	update_color()

# Test if a given ball num matches the cell num
func test_match(ball_num):
	if ball_num == num:
		curr_status = Status.HIT
		update_color()
		return true
	return false

# Update color according to cell status
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

# Reset cell
func reset():
	curr_status = Status.NO_HIT
	update_color()
