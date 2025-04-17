extends Node2D

@export var admob : Admob

var is_initialized := false

func _ready() -> void:
	
	admob.initialize()

func _on_admob_initialization_completed(status_data: InitializationStatus) -> void:
	is_initialized = true
	print("is_initialized: ", is_initialized)
	#admob.load_banner_ad()
	#await admob.banner_ad_loaded
	#admob.show_banner_ad()


func _on_banner_pressed() -> void:
	if is_initialized:
		print("_on_banner_pressed: ", _on_banner_pressed)
		admob.load_banner_ad()
		await admob.banner_ad_loaded
		admob.show_banner_ad()
		
		print("admob.is_banner_ad_loaded(): ", admob.is_banner_ad_loaded())


func _on_reward_pressed() -> void:
	if is_initialized:
		print("_on_reward_pressed: ", _on_reward_pressed)
		admob.load_rewarded_ad()
		await admob.rewarded_ad_loaded
		admob.show_rewarded_ad()


func _on_interstitial_pressed() -> void:
	if is_initialized:
		print("_on_interstitial_pressed: ", _on_interstitial_pressed)
		admob.load_interstitial_ad()
		await  admob.interstitial_ad_loaded
		admob.show_interstitial_ad()
