extends Node


func _ready():
	self.connect('pressed', self, '_on_close_pressed')

func _on_close_pressed():
	get_tree().quit(0)
