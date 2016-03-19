Template._layout.onRendered ->
    menuFix()
    responsiveClasses()
    screenSizeControl()
    
    $(window).resize()
    return

Meteor.startup ->    
    $(window).scroll ->
        stickyHeaderStatus()
    $(window).resize ->
        menuFix()
        headerWidth()
        screenSizeControl()