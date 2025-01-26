extends Area2D
var next_lv = preload("res://scenes/states/level_3.tscn").instantiate()
@onready var current= $".."
# Se llama cuando el nodo entra en el árbol de la escena por primera vez.

func _ready() -> void:
	connect("body_entered", Callable(self, "_on_body_entered"))

# Función llamada cuando un cuerpo entra en el área.
func _on_body_entered(body: Node) -> void: 
	if body.is_in_group("Player"):
		print(body)
		get_tree().root.add_child(next_lv)
		get_tree().root.remove_child(current)
