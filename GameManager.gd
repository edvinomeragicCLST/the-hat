extends Node

@onready var points_label = %"Points label"

var points = 0

func addPoints():
	points += 1
	print(points)
	points_label.text = "Points: " + str(points)
