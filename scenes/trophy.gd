extends Area2D

@export var target_level : PackedScene





#func _on_body_entered(body):
#	if(body.name == "CharacterBody2D"):
#		print("nesto")
#		get_tree().change_scene_to_file("target_level")


func _on_body_entered(body):
	# Scene replacement must happen after the physics callback finishes.
	get_tree().change_scene_to_file.call_deferred("res://scenes/Level2.tscn")
