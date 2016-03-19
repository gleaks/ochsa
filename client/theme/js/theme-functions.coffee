@stickyHeaderStatus = ->
    $header = $('#header')
    headerOffset = $header.offset().top
    
    if $(window).scrollTop() > headerOffset
    	if $('body').hasClass("device-lg") or $('body').hasClass("device-md")
    		$header.addClass "header-sticky"  unless $header.hasClass("header-no-sticky")
    		logo.find("img").attr "src", logoImg  if $header.hasClass("header-navigation-light")
    	else
    		$header.removeClass "header-sticky"
    else
    	$header.removeClass "header-sticky"
    return

@parallax = ->
	if $('body').hasClass("device-lg") or $('body').hasClass("device-md")
		$.stellar
			horizontalScrolling: false
			verticalScrolling: true
			horizontalOffset: 0
			verticalOffset: 0
	return

@screenSizeControl = ->
	$('.halfscreen').each ->
		elemHeight = $(window).height()
		$(this).css "height", elemHeight / 1.25
		return
	return

@menuFix = ->
	$body = $('body')
	
	if $body.hasClass("device-lg") or $body.hasClass("device-md")
		$("ul.main-menu .dropdown:not(.mega-menu-item) ul").each (index, element) ->
			$(element).addClass "menu-invert"  if $window.width() - ($(element).width() + $(element).offset().left) < 0
			return
	return
	
@textRotator = ->
	$('.text-rotator').each ->
		$elem = $(this)
		dataTextSeperator = ","
		dataTextEffect = $elem.attr("data-rotate-effect") or "flipInX"
		dataTextSpeed = $elem.attr("data-rotate-speed") or 2000
		$elem.Morphext
			animation: dataTextEffect
			separator: dataTextSeperator
			speed: Number(dataTextSpeed)
		return
	return

@itemWidth = (columns, $elemContainer) ->
	$findElement = $elemContainer.find(".isotope-item")

	if columns is 1
		$findElement.width "100%"
	if columns is 2
		$findElement.width("50%").css
	if columns is 3
		$findElement.width("33.33%")
	if columns is 4
		$findElement.width("25%")

@masonryIsotope = ->
	$windowWidth = $(window).width()
	
	$isotops = $(".isotope")
	$isotops.each ->
		isotopeTime = undefined
		$elem = $(this)
		
		$elem.isotope
			filter: 0
			itemSelector: ".isotope-item"
			layoutMode: "masonry"
			transitionDuration: "0.6s"
			resizesContainer: true
			percentPosition: true
			resizable: true
			animationOptions:
				duration: 400
				queue: not 1
		
		$(window).resize ->
        	if $windowWidth > 479 and $windowWidth < 992
        		itemWidth 2, $elem
        	
        	else if $windowWidth < 480
        		itemWidth 1, $elem
        	
        	else
        		itemWidth 4, $elem
        		
        	clearTimeout(isotopeTime)
        	
        	isotopeTime = setTimeout((->
        		$elem.isotope "layout"
        		return
        	), 300)

@accordion = ->
	$accs = $(".accordion")
	
	$accs.each ->
		$this = $(this)
		$items = $this.find(".ac-item")
		console.log $this
		
		if $items.hasClass("ac-active")
			$items.addClass("ac-active")
		else
			$content = $items.find("ac-content")
			$content.hide()

@accordionClick = (element) ->
	$this = $(element)
	$content = $this.find(".ac-content")
	
	if $this.hasClass("ac-active")
		$this.removeClass("ac-active")
		$content.slideUp("fast")
	else
		$this.addClass("ac-active")
		$content.slideDown("fast")
	return
	
@headerWidth = ->
	$header = $('#header')
	$windowWidth = $(window).width()
	
	if $windowWidth > 991 and $windowWidth < 1199
		$header.addClass('header-fullwidth')
		$header.removeClass('header-modern')
	else
		$header.addClass('header-modern')
		$header.removeClass('header-fullwidth')

@counters = ->
	$counter = $('.counter')
	$counter.each ->
  		$elem = $(this)
  		$elem.find('span').countTo()
  	return
  return