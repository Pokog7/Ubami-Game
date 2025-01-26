extends Node
@onready var load_player = preload("res://scenes/objects/player.tscn")
var puerta = preload ("res://scenes/objects/puerta.tscn")
var enemy_temp = preload("res://scenes/objects/enemy_1.tscn")
var puerta_pres = false
var enemigos 
var enemy_can

@onready var area =$Area2D
@onready var e_spawn = $Markers/enemy_spawn_1
@onready var mundo = $"."
@onready var p_spawn =$Markers/p_spawn_1
@onready var spawnlv1 = $Markers/spawn_lv1

# Called when the node enters the scene tree for the first time.
func _ready():
	var sp_puerta = puerta.instantiate()
	var enemy = enemy_temp.instantiate()
	var jugador = load_player.instantiate()
	enemigos = get_tree().get_nodes_in_group("enemy")
	for x in enemigos:
		enemy_can = enemy_can + 1
	
	mundo.add_child(jugador)
	jugador.global_position = spawnlv1.global_position
	mundo.add_child(enemy)
	enemy.global_position = e_spawn.global_position
	mundo.add_child(sp_puerta)
	sp_puerta.global_position = p_spawn.global_position
	print(sp_puerta) # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	#while enemy_can != 0:
		#get_node("puerta").set_monitoring(0)
		#get_node("puerta").hide()
	pass





func _on_area_2d_body_entered(body):
	if body.is_in_group("puerta"):
		puerta_pres = true
	pass # Replace with function body.
