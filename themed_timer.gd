extends Node2D

@onready var timer_label: Label = $TimerLabel

var time: float = 0.0
var is_running: bool = false

func _process(delta: float) -> void:
	if is_running and timer_label:
		timer_label.text = str(snapped(time, 0.1)) + "s"

# Function called by minigames: await themed_timer.Timer(3.5)
func Timer(start_time: float) -> void:
	time = start_time
	is_running = true
	
	while time > 0.0:
		await wait(0.1)
		time -= 0.1
	
	is_running = false
	if timer_label:
		timer_label.text = "0.0s"

func wait(seconds: float) -> void:
	await get_tree().create_timer(seconds).timeout
