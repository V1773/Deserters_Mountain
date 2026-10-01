extends Area2D

@onready var timer: Timer = $Timer
@onready var game_manager: Node = %GameManager
# @onready var animation_player: AnimationPlayer = $AnimationPlayer

func _on_body_entered(body: Node2D) -> void:
	print("You Won!")
	Engine.time_scale = 0.5
	timer.start()
	
func _on_timer_timeout() -> void:
	Engine.time_scale = 1.0
	get_tree().reload_current_scene()
	
