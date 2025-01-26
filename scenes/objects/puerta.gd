extends Area2D
## ESTE ES EL QUE FUNCIONA
## ESTE ES EL QUE FUNCIONA
var current_lvl
var next_lvl: Node
@onready var puerta = $"."
@onready var spr = $Sprite2D
@onready var lvl1 = preload("res://scenes/states/level_1.tscn").instantiate()
@onready var lvl2 = preload("res://scenes/states/level_2.tscn").instantiate()
@onready var lvl3 = preload("res://scenes/states/level_3.tscn").instantiate()
@onready var cred = preload("res://scenes/states/Creditos.tscn").instantiate()
var enemigos 
var can_enemigos:int
# Called when the node enters the scene tree for the first time.
func _ready():
	#Activar despues
	#puerta.set_monitoring(0)
	enemigos = get_tree().get_nodes_in_group("enemy")
	for x in enemigos:
		can_enemigos = can_enemigos +1
	print(can_enemigos)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if current_lvl ==lvl3:
		get_tree().root.call_deferred("remove_child", lvl2)
	if can_enemigos <= 0:
		puerta.set_monitoring(1)
		pass


func _on_body_entered(body):
	current_lvl = get_parent()
	var current_puerta = self.get_node("puerta")
	if current_lvl.name == "Level_1":
		next_lvl = lvl2
	elif current_lvl.name == "Level_2":
		next_lvl = lvl3
	elif current_lvl.name == "Level_3":
		next_lvl = cred
	print("Actual ", current_lvl)
	print("Siguiente ", next_lvl)
	if body.is_in_group("Player") and next_lvl != null:
		print(body)
		get_tree().root.call_deferred("add_child",next_lvl)
		get_tree().root.call_deferred("remove_child", current_puerta)
		get_tree().root.call_deferred("remove_child", current_lvl)
	pass # Replace with function body.
