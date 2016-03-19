@responsiveClasses = ->
	jRes = jRespond([
		{
			label: "smallest"
			enter: 0
			exit: 479
		}
		{
			label: "handheld"
			enter: 480
			exit: 767
		}
		{
			label: "tablet"
			enter: 768
			exit: 991
		}
		{
			label: "laptop"
			enter: 992
			exit: 1199
		}
		{
			label: "desktop"
			enter: 1200
			exit: 10000
		}
	])
	jRes.addFunc [
		{
			breakpoint: "desktop"
			enter: ->
				$('body').addClass "device-lg"
				return

			exit: ->
				$('body').removeClass "device-lg"
				return
		}
		{
			breakpoint: "laptop"
			enter: ->
				$('body').addClass "device-md"
				return

			exit: ->
				$('body').removeClass "device-md"
				return
		}
		{
			breakpoint: "tablet"
			enter: ->
				$('body').addClass "device-sm"
				return

			exit: ->
				$('body').removeClass "device-sm"
				return
		}
		{
			breakpoint: "handheld"
			enter: ->
				$('body').addClass "device-xs"
				return

			exit: ->
				$('body').removeClass "device-xs"
				return
		}
		{
			breakpoint: "smallest"
			enter: ->
				$('body').addClass "device-xxs"
				return

			exit: ->
				$('body').removeClass "device-xxs"
				return
		}
	]
	return