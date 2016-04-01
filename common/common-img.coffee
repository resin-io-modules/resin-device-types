commonInstructions = require './instructions'

exports.instructions = [
	commonInstructions.ETCHER_SD
	commonInstructions.EJECT_SD
	commonInstructions.CONNECT_AND_BOOT
]

exports.initialization =
	options: [
		message: 'Select a drive'
		type: 'drive'
		name: 'drive'
	]

	operations: [
		command: 'burn'
	]
