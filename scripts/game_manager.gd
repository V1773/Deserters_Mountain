extends Node

var score = 0
@onready var score_label: Label = $ScoreLabel

func add_point():
	score += 1
	score_label.text = str(score) + " COINS!!!"


func _on_cheers_finished() -> void:
	get_tree().reload_current_scene()
