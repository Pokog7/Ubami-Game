extends Area2D
var level2 = preload("res://scenes/states/level_2.tscn").instantiate()
@onready var level1= $".."
# Se llama cuando el nodo entra en el árbol de la escena por primera vez.

func _ready() -> void:
	connect("body_entered", Callable(self, "_on_body_entered"))

# Función llamada cuando un cuerpo entra en el área.
func _on_body_entered(body: Node) -> void: 
	if body.is_in_group("Player"):
		print(body)
		get_tree().root.add_child(level2)
		get_tree().root.remove_child(level1)
