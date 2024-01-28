extends Node2D

func _ready():
	spawn_enemy();
var enemies = ["One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine"]
var rng = RandomNumberGenerator.new()
var randomNum = rng.randi_range(0, 9)
func spawn_enemy():
	var new_enemy = load("res://"+enemies[randomNum]+".tscn").instantiate();
	new_enemy.global_position = $SpawnPoint.global_position
	add_child(new_enemy)
	
func on_enemy_defeated():
	spawn_enemy();


	
