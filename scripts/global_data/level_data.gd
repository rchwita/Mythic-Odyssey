extends Node

const MAX_LEVEL: int = 5
const LEVEL_THRESHOLDS: Array[int] = [
	500, # level 01 to 02
	900, # level 02 to 03
	2500, # level 03 to 04
	6300, # level 04 to 05
]

var completed_levels = {
	"Level1": true,
	"Level2": false,
	"Level3": false,
	"Level4": false,
	"Level5": false,
}

func unlock(level_name: String):
	if level_name in completed_levels:
		completed_levels[level_name] = true
