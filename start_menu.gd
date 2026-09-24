extends Control

@onready var start_button: Button = $Panel/StartButton
@onready var exit_button: Button = $Panel/ExitButton

func _ready() -> void:
	start_button.pressed.connect(_on_start_pressed)
	exit_button.pressed.connect(_on_exit_pressed)

func _on_start_pressed() -> void:
	Global.reset_state()
	get_tree().change_scene_to_file("res://level_scene.tscn")

func _on_exit_pressed() -> void:
	get_tree().quit()
