extends Node

class_name EFTTheme

var theme_path
var dict = {
		"name": "Unknown Theme Name",
		"properties": {}
	}

func _init(path: String):
	theme_path = path
	var file: FileAccess = FileAccess.open(path, FileAccess.READ)
	var file_contents: String = file.get_as_text()
	var lines = file_contents.split("\n", true)
	
	for line in lines:
		var split = line.split(":")
		if split.size() >= 3:
			dict.properties[split[0]] = {
				"raw_value": _format(split[1]),
				"type": _format(split[2]),
				"value": _get_object_from_type_value(_format(split[1]), _format(split[2]))
			}
		if line.begins_with("-"):
			dict.name = _format(line.erase(0))

func get_dict() -> Dictionary:
	return dict

func get_theme_name() -> String:
	return dict.name

func _format(str: String) -> String:
	if str.begins_with(" "):
		str = str.erase(0)
	if str.ends_with(" "):
		str = str.erase(str.length() - 1)
	
	str = str.replace("\r", "")
	
	return str

func get_property(property_name: String):
	return dict.properties[property_name].value

func _get_object_from_type_value(raw_value: String, type: String):
	if type == "Color":
		return Color.from_string(raw_value, Color.ORANGE_RED)
	elif type == "Int":
		return int(raw_value)
	elif type == "String":
		return raw_value.replace('"', "")
	push_warning("Unknown value type: %s" % type)
	return null
