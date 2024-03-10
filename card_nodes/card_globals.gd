extends Node

#Investigate Resources 

var current_select = null
var current_new_card = null


var hand_di = {
	"hand_01" : {
		"location" : null,
		"current_card" : null,
		"selected" : false,
	},
	"hand_02" : {
		"location" : null,
		"current_card" : null,
		"selected" : false,
	},
	"hand_03" : {
		"location" : null,
		"current_card" : null,
		"selected" : false,
	},
	"hand_04" : {
		"location" : null,
		"current_card" : null,
		"selected" : false,
	},
	"hand_05" : {
		"location" : null,
		"current_card" : null,
		"selected" : false,
	}
}

var field_di = {
	"slot_01" : {
		"location" : null,
		"current_card" : null,
	},
	"slot_02" : {
		"location" : null,
		"current_card" : null,
	},
	"slot_03" : {
		"location" : null,
		"current_card" : null,
	},
	"slot_04" : {
		"location" : null,
		"current_card" : null,
	},
	"slot_05" : {
		"location" : null,
		"current_card" : null,
	}
}

var card_info = {
	"1" : {
		"name" : "gnome attack",
		"used" : false,
		"attack" : 4,
		"defense" : 1,
	},
	"2" : {
		"name" : "gnome defense",
		"used" : false,
		"attack" : 1,
		"defense" : 4,
	},
	"3" : {
		"name" : "gnome healing",
		"used" : false,
		"attack" : 1,
		"defense" : 1,
	},
	"4" : {
		"name" : "gnome casting",
		"used" : false,
		"attack" : 2,
		"defense" : 2,
	},
	"5" : {
		"name" : "ferret attack",
		"used" : false,
		"attack" : 4,
		"defense" : 1,
	},
	"6" : {
		"name" : "ferret defense",
		"used" : false,
		"attack" : 1,
		"defense" : 4,
	},
	"7" : {
		"name" : "ferret healing",
		"used" : false,
		"attack" : 1,
		"defense" : 1,
	},
	"8" : {
		"name" : "ferret casting",
		"used" : false,
		"attack" : 2,
		"defense" : 2,
	},
}
