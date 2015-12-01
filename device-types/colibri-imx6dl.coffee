networkOptions = require '../common/network-options'
common = require '../common/common-img'

SERIAL_CABLE = 'Connect the carrier board to a host computer using a serial cable. (This step may differ based on what carrier board you have)'
UBOOT = 'Power the module. Press SPACE when prompted by U-Boot to stop execution and run the following command `run sdboot`'

module.exports =
	name: 'Colibri iMX6dl'
	arch: 'armv7hf'
	state: 'experimental'

	stateInstructions:
		postProvisioning: [
			'BOARD_SHUTDOWN'
			'REMOVE_INSTALL_MEDIA'
			'BOARD_REPOWER'
		]

	instructions:
		windows: [
			'WINDOWS_DISK_IMAGER_SD'
			'EJECT_SD'
			'FLASHER_WARNING'
			SERIAL_CABLE
			UBOOT
			'BOARD_SHUTDOWN'
			'REMOVE_INSTALL_MEDIA'
			'BOARD_REPOWER'
		]
		osx: [
			'OSX_PLUG_SD'
			'OSX_UNMOUNT_SD'
			'DD_BURN_IMAGE_SD'
			'EJECT_SD'
			'FLASHER_WARNING'
			SERIAL_CABLE
			UBOOT
			'BOARD_SHUTDOWN'
			'REMOVE_INSTALL_MEDIA'
			'BOARD_REPOWER'
		]
		linux: [
			'LINUX_DF_SD'
			'DD_BURN_IMAGE_SD'
			'EJECT_SD'
			'FLASHER_WARNING'
			SERIAL_CABLE
			UBOOT
			'BOARD_SHUTDOWN'
			'REMOVE_INSTALL_MEDIA'
			'BOARD_REPOWER'
		]

	gettingStartedLink:
		windows: 'http://docs.resin.io/#/pages/installing/gettingStarted-colibri-imx6.md#windows'
		osx: 'http://docs.resin.io/#/pages/installing/gettingStarted-colibri-imx6.md#on-mac-and-linux'
		linux: 'http://docs.resin.io/#/pages/installing/gettingStarted-colibri-imx6.md#on-mac-and-linux'

	supportsBlink: false

	yocto:
		machine: 'colibri-imx6'
		image: 'resin-image-flasher'
		fstype: 'resin-sdcard'
		version: 'yocto-fido'
		deployArtifact: 'resin-image-flasher-colibri-imx6.resin-sdcard'

	options: [ networkOptions.group ]

	configuration:
		config:
			partition:
				primary: 4
				logical: 1
			path: '/config.json'

	initialization: common.initialization
