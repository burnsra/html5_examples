class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?"{ constraints {
                // apply constraints here
            } }

        "/"{
            view:"/index"
            controller = "welcome"
        }

        //"500"(view:'/error')
        "500"(controller: "errors", action: "serverError")
        "404"(controller: "errors", action: "notFound")
    }
}
