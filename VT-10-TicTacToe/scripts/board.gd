
extends Node2D

func _on_00_input_event( viewport, event, shape_idx ):
	if event.is_action_pressed("left_click"):
		global.figure_pos(0,0)

func _on_01_input_event( viewport, event, shape_idx ):
	if event.is_action_pressed("left_click"):
		global.figure_pos(0,1)

func _on_02_input_event( viewport, event, shape_idx ):
	if event.is_action_pressed("left_click"):
		global.figure_pos(0,2)

func _on_10_input_event( viewport, event, shape_idx ):
	if event.is_action_pressed("left_click"):
		global.figure_pos(1,0)

func _on_11_input_event( viewport, event, shape_idx ):
	if event.is_action_pressed("left_click"):
		global.figure_pos(1,1)

func _on_12_input_event( viewport, event, shape_idx ):
	if event.is_action_pressed("left_click"):
		global.figure_pos(1,2)

func _on_20_input_event( viewport, event, shape_idx ):
	if event.is_action_pressed("left_click"):
		global.figure_pos(2,0)

func _on_21_input_event( viewport, event, shape_idx ):
	if event.is_action_pressed("left_click"):
		global.figure_pos(2,1)

func _on_22_input_event( viewport, event, shape_idx ):
	if event.is_action_pressed("left_click"):
		global.figure_pos(2,2)
