
extends Node

const RES = 360

var figure = load("res://scenes/xo.tscn")

var current_figure = 0 # 0 = x | 1 = o
var win_or_draw = -2 # -1 draw | 0 x win | 1 o win 

var board = [[-1, -1, -1],
			 [-1, -1, -1],
			 [-1, -1, -1]]

func figure_pos(x, y):
	if x == 0 and y == 0:
		generate_figure(RES / 4 - 35, RES / 4 - 35)
	elif x == 0 and y == 1:
		generate_figure(RES / 4 - 35, RES / 2)
	elif x == 0 and y == 2:
		generate_figure(RES / 4 - 35, RES - 50)
	elif x == 1 and y == 0:
		generate_figure(RES / 2, RES / 4 - 35)
	elif x == 1 and y == 1:
		generate_figure(RES / 2, RES / 2)
	elif x == 1 and y == 2:
		generate_figure(RES / 2, RES - 50)
	elif x == 2 and y == 0:
		generate_figure(RES - 50, RES / 4 - 35)
	elif x == 2 and y == 1:
		generate_figure(RES - 50, RES / 2)
	elif x == 2 and y == 2:
		generate_figure(RES - 50, RES - 50)
	
	add_element_to_board(y, x)
	check_win()
	change_figure()
	
func generate_figure(x, y):
	var fig_instance = figure.instance()
	
	add_child(fig_instance)
	
	if current_figure == 1:
		fig_instance.change_o()
	
	fig_instance.add_to_group("figures")
	
	fig_instance.set_pos(Vector2(x, y))
	
func change_figure():
	if current_figure == 0:
		current_figure = 1
	elif current_figure == 1:
		current_figure = 0

func add_element_to_board(x, y):
	board[x][y] = current_figure
	print(board)
	
func check_win():
	
	# check horizontal
	var i = 0
	
	while i <= 2:
		if board[i][0] == board[i][1] and board[i][0] == board[i][2] and board[i][0] != -1:
			win_or_draw = current_figure
			print(current_figure, " win")
			get_tree().change_scene("res://scenes/final.tscn")
		i += 1
	
	# check vertical
	i = 0
	
	while i <= 2:
		if board[0][i] == board[1][i] and board[0][i] == board[2][i] and board[0][i] != -1:
			win_or_draw = current_figure
			print(current_figure, " win")
			get_tree().change_scene("res://scenes/final.tscn")
		i += 1

	# check diagonals
	if board[0][0] == board[1][1] and board[0][0] == board[2][2] and board[0][0] != -1:
		win_or_draw = current_figure
		print(current_figure, " win")
		get_tree().change_scene("res://scenes/final.tscn")
	elif board[2][0] == board[1][1] and board[2][0] == board[0][2] and board[2][0] != -1:
		win_or_draw = current_figure
		print(current_figure, " win")
		get_tree().change_scene("res://scenes/final.tscn")

func remove_figures():
	for i in get_tree().get_nodes_in_group("figures"):
		i.queue_free()