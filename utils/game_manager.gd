extends Node

var current_health = 20
var current_turn = 1

func end_turn():
	print(CardGlobals.field_di)
	for n in CardGlobals.field_di:
		if CardGlobals.field_di[n]["current_card"]:
			match CardGlobals.field_di[n]["current_card"].card_type:
				"attack":
					current_health -= CardGlobals.field_di[n]["current_card"].card_attack
					CardGlobals.field_di[n]["current_card"].queue_free()
					CardGlobals.field_di[n]["current_card"] = null
				"defense":
					current_health += CardGlobals.field_di[n]["current_card"].card_defense
					CardGlobals.field_di[n]["current_card"].queue_free()
					CardGlobals.field_di[n]["current_card"] = null
				"heal":
					current_health += CardGlobals.field_di[n]["current_card"].card_attack
					current_health += CardGlobals.field_di[n]["current_card"].card_defense
					CardGlobals.field_di[n]["current_card"].queue_free()
					CardGlobals.field_di[n]["current_card"] = null
				"cast":
					current_health -= CardGlobals.field_di[n]["current_card"].card_defense
					CardGlobals.field_di[n]["current_card"].queue_free()
					CardGlobals.field_di[n]["current_card"] = null
		

