extends Node2D

var card_name = ""
var card_attack = 0
var card_defense = 0
@export var title : Label
@export var attack : Label
@export var defense : Label

func _process(_delta):
	title.text = card_name
	attack.text = str(card_attack)
	defense.text = str(card_defense)
	
