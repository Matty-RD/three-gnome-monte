extends Control

func _process(_delta):
	CardGlobals.field_di["slot_01"]["location"] = $GridContainer/slot_01.global_position
	CardGlobals.field_di["slot_02"]["location"] = $GridContainer/slot_02.global_position
	CardGlobals.field_di["slot_03"]["location"] = $GridContainer/slot_03.global_position
	CardGlobals.field_di["slot_04"]["location"] = $GridContainer/slot_04.global_position
	CardGlobals.field_di["slot_05"]["location"] = $GridContainer/slot_05.global_position
	

func _on_slot_01_pressed():
	if !CardGlobals.field_di["slot_01"]["current_card"]:
		for n in CardGlobals.hand_di:
			if CardGlobals.hand_di[n]["selected"]:
				CardGlobals.field_di["slot_01"]["current_card"] = CardGlobals.hand_di[n]["current_card"]
				CardGlobals.hand_di[n]["current_card"].global_position = CardGlobals.field_di["slot_01"]["location"]
				CardGlobals.hand_di[n]["current_card"] = null
				CardGlobals.hand_di[n]["selected"] = false
func _on_slot_02_pressed():
	if !CardGlobals.field_di["slot_02"]["current_card"]:
		for n in CardGlobals.hand_di:
			if CardGlobals.hand_di[n]["selected"]:
				CardGlobals.field_di["slot_02"]["current_card"] = CardGlobals.hand_di[n]["current_card"]
				CardGlobals.hand_di[n]["current_card"].global_position = CardGlobals.field_di["slot_02"]["location"]
				CardGlobals.hand_di[n]["current_card"] = null
				CardGlobals.hand_di[n]["selected"] = false
func _on_slot_03_pressed():
	if !CardGlobals.field_di["slot_03"]["current_card"]:
		for n in CardGlobals.hand_di:
			if CardGlobals.hand_di[n]["selected"]:
				CardGlobals.field_di["slot_03"]["current_card"] = CardGlobals.hand_di[n]["current_card"]
				CardGlobals.hand_di[n]["current_card"].global_position = CardGlobals.field_di["slot_03"]["location"]
				CardGlobals.hand_di[n]["current_card"] = null
				CardGlobals.hand_di[n]["selected"] = false
func _on_slot_04_pressed():
	if !CardGlobals.field_di["slot_04"]["current_card"]:
		for n in CardGlobals.hand_di:
			if CardGlobals.hand_di[n]["selected"]:
				CardGlobals.field_di["slot_04"]["current_card"] = CardGlobals.hand_di[n]["current_card"]
				CardGlobals.hand_di[n]["current_card"].global_position = CardGlobals.field_di["slot_04"]["location"]
				CardGlobals.hand_di[n]["current_card"] = null
				CardGlobals.hand_di[n]["selected"] = false
func _on_slot_05_pressed():
	if !CardGlobals.field_di["slot_05"]["current_card"]:
		for n in CardGlobals.hand_di:
			if CardGlobals.hand_di[n]["selected"]:
				CardGlobals.field_di["slot_05"]["current_card"] = CardGlobals.hand_di[n]["current_card"]
				CardGlobals.hand_di[n]["current_card"].global_position = CardGlobals.field_di["slot_05"]["location"]
				CardGlobals.hand_di[n]["current_card"] = null
				CardGlobals.hand_di[n]["selected"] = false
