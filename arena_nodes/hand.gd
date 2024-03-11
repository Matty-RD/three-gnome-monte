extends Control


func _on_hand_01_pressed():
	if !CardGlobals.current_select:
		CardGlobals.hand_di["hand_01"]["selected"] = true
		CardGlobals.current_select = true
	else:
		_unselect()
func _on_hand_02_pressed():
	if !CardGlobals.current_select:
		CardGlobals.hand_di["hand_02"]["selected"] = true
		CardGlobals.current_select = true
	else:
		_unselect()	
func _on_hand_03_pressed():
	if !CardGlobals.current_select:
		CardGlobals.hand_di["hand_03"]["selected"] = true
		CardGlobals.current_select = true
	else:
		_unselect()	
func _on_hand_04_pressed():
	if !CardGlobals.current_select:
		CardGlobals.hand_di["hand_04"]["selected"] = true
		CardGlobals.current_select = true
	else:
		_unselect()	
func _on_hand_05_pressed():
	if !CardGlobals.current_select:
		CardGlobals.hand_di["hand_05"]["selected"] = true
		CardGlobals.current_select = true
	else:
		_unselect()	
	

func _unselect():
	for n in CardGlobals.hand_di:
		if CardGlobals.hand_di[n]["selected"]:
			CardGlobals.hand_di[n]["selected"] = false
			CardGlobals.current_select = false
			
