class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?"{ constraints {
                // apply constraints here
            } }

        "/"{
            view:"/index"
            controller = "Welcome"
        }

        "500"(view:'/error')
    }
}
