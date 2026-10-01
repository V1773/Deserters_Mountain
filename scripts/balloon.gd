extends Area2D

@onready var game_manager: Node = %GameManager
@onready var animation_player: AnimationPlayer = $AnimationPlayer
@onready var cheers: AudioStreamPlayer2D = %Cheers
@onready var camera: Camera2D = %Camera2D


func _on_body_entered(body: Node2D) -> void:
	cheers.play()
	animation_player.play("pop")
	print("You Won!")
	

	
	
