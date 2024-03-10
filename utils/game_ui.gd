extends Control

@export var end_turn : Button
@export var hp : Label
@export var turn_counter : Label


func _process(_delta):
	hp.text = "health: " + str(GameManager.current_health)
	turn_counter.text = "Turn: " + str(GameManager.current_turn)


func _on_action_button_pressed():
	GameManager.end_turn()

