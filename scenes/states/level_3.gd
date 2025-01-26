extends Node
@onready var load_player = preload("res://scenes/objects/player.tscn")
@onready var spawnlv2 =$Markers/spawn_lv3
@onready var mundo = $"."
@onready var e_spawn_1 =$Markers/enemy_spawn_1
@onready var e_spawn_2 =$Markers/enemy_spawn_2
@onready var e_spawn_3 =$Markers/enemy_spawn_3
var enemy_temp = preload("res://scenes/objects/enemy_1.tscn")
var puerta = preload ("res://scenes/objects/puerta.tscn")
@onready var p_spawn = $Markers/p_spawn_3

# Called when the node enters the scene tree for the first time.
func _ready():
	var sp_puerta = puerta.instantiate()
	var jugador = load_player.instantiate()
	var enemy_1 = enemy_temp.instantiate()
	var enemy_2 = enemy_temp.instantiate()
	var enemy_3 = enemy_temp.instantiate()
	
	mundo.add_child(enemy_1)
	mundo.add_child(enemy_2)
	mundo.add_child(enemy_3)
	enemy_1.global_position = e_spawn_1.global_position
	enemy_2.global_position = e_spawn_2.global_position
	enemy_3.global_position = e_spawn_3.global_position
	
	mundo.add_child(sp_puerta)
	sp_puerta.global_position = p_spawn.global_position
	
	mundo.add_child(jugador)
	jugador.global_position = spawnlv2.global_position

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
