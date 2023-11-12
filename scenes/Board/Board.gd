extends GridContainer

onready var GridCell = preload("res://scenes/GridCell/GridCell.tscn");


# Declare member variables here. Examples:
# var a: int = 2
# var b: String = "text"


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	for x in self.columns:
		for y in self.columns:
			var cell = GridCell.instance();
			self.add_child(cell);


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
#	pass
