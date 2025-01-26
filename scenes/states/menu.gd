extends Control
var level_1 = preload("res://scenes/states/level_1.tscn").instantiate()
@onready var cred = preload("res://scenes/states/Creditos.tscn").instantiate()
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_inicio_pressed():
	get_tree().root.call_deferred("add_child",level_1)
	get_tree().root.call_deferred("remove_child", self)
	pass # Replace with function body.


func _on_creditos_pressed():
	get_tree().root.call_deferred("add_child",cred)
	get_tree().root.call_deferred("remove_child", self)
	pass # Replace with function body.


func _on_salir_pressed():
	get_tree().quit()
	pass # Replace with function body.
