Template.schedule.onRendered ->
    parallax()
Template.schedule.events
    'click .ac-item': (e) ->
        e.preventDefault()
        accordionClick e.currentTarget
        return