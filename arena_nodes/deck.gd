extends Control

@onready var card = load("res://card_nodes/card_shell.tscn")
@onready var random_card = CardGlobals.card_info[str(randi_range(1, CardGlobals.card_info.size()))]

func _process(_delta):
	CardGlobals.hand_di["hand_01"]["location"] = $"../hand/GridContainer/hand_01".global_position
	CardGlobals.hand_di["hand_02"]["location"] = $"../hand/GridContainer/hand_02".global_position
	CardGlobals.hand_di["hand_03"]["location"] = $"../hand/GridContainer/hand_03".global_position
	CardGlobals.hand_di["hand_04"]["location"] = $"../hand/GridContainer/hand_04".global_position
	CardGlobals.hand_di["hand_05"]["location"] = $"../hand/GridContainer/hand_05".global_position

func _on_deck_pressed():
	if random_card["used"]:
		random_card_info()
		
	for n in CardGlobals.hand_di:
		if CardGlobals.hand_di[n]["current_card"] == null && !random_card["used"]:
			var drawn_card = card.instantiate()
			drawn_card.card_name = random_card["name"]
			drawn_card.card_attack = random_card["attack"]
			drawn_card.card_defense = random_card["defense"]
			drawn_card.card_type = random_card["card_type"]
			random_card["used"] = true
			drawn_card.global_position = CardGlobals.hand_di[n]["location"]
			CardGlobals.hand_di[n]["current_card"] = drawn_card
			add_child(drawn_card)
			return

func random_card_info():
	var counter = 0
	while random_card["used"] && counter <= CardGlobals.card_info.size():
		random_card = CardGlobals.card_info[str(randi_range(1, CardGlobals.card_info.size()))]
		counter += 1
		if counter == CardGlobals.card_info.size():
			print("out of cards")
