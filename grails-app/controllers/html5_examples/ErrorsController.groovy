package html5_examples

class ErrorsController {

    def index() { }

    def serverError = {
        def env = GrailsUtil.environment;

        if(env == "production")
            render(view:'/serverError')
        else
            render(view:'/error')
    }

    def notFound() {
        def targetPage = request.forwardURI
        render(model:[targetPage: targetPage], view:'/notFound')
    }
}
