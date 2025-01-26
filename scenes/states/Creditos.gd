extends Node
@onready var menu = preload("res://scenes/states/menu.tscn").instantiate()

# Called when the node enters the scene tree for the first time.
func _ready():
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("ui_cancel"):
		get_tree().root.call_deferred("add_child",menu)
		get_tree().root.call_deferred("remove_child", self)
	pass
