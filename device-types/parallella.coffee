module.exports =
	name: 'Parallella'
	arch: '???'
	state: 'preview'

	configPartition: '???'

	instructions: [
		'BURN_IMAGE'
		'EJECT'
		'CONNECT_AND_BOOT'
	]
	gettingStartedLink: 'http://docs.resin.io/#/pages/installing/gettingStarted-Parallella.md'
	supportsBlink: false

	extraOptions: [
		label: 'Processor'
		name: 'processorType'
		type: 'select'
		values: [ 'Z7010', 'Z7020' ]
	,
		label: 'Coprocessor core'
		name: 'coprocessorCore'
		type: 'select'
		values: [ '16', '64' ]
	,
		label: 'HDMI'
		name: 'hdmi'
		type: 'checkbox'
		value: 1
	]
