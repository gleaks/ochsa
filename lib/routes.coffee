FlowRouter.route "/",
    name: "home"
    action: (params) ->
        BlazeLayout.render "_layout",
            main: "home"
        return

FlowRouter.route "/schedule",
    name: "schedule"
    action: (params) ->
        BlazeLayout.render "_layout",
            main: "schedule"
            
FlowRouter.route "/news",
    name: "news"
    action: (params) ->
        BlazeLayout.render "_layout",
            main: "news"

FlowRouter.route "/forms",
    name: "forms"
    action: (params) ->
        BlazeLayout.render "_layout",
            main: "forms"
            
FlowRouter.route "/contact",
    name: "contact"
    action: (params) ->
        BlazeLayout.render "_layout",
            main: "contact"