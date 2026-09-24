extends Node

var minigames_done: int = 0
var lives: int = 4
const TARGET_WINS: int = 5

func reset_state() -> void:
	minigames_done = 0
	lives = 4
