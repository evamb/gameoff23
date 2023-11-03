extends Panel


# Declare member variables here. Examples:
# var a: int = 2
# var b: String = "text"

var move_started: bool = false;
var mouse_start_location: Vector2;
var rect_offset: Vector2;

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

func _gui_input(event):
	if event is InputEventMouseButton and event.button_index == BUTTON_LEFT:
		if event.pressed:
			move_started = true;
			rect_offset = self.rect_position;
			mouse_start_location = self.get_global_mouse_position();
		else:
			move_started = false;

func _process(delta: float) -> void:
	if not move_started:
		return;
	var mouse_delta = self.get_global_mouse_position() - mouse_start_location;
	self.rect_position = rect_offset + mouse_delta;

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
#	pass
