package html5_examples

class ErrorsController {

    def index() { }

    def serverError = {
        render(view:'/serverError')
    }

    def notFound() {
        def targetPage = request.forwardURI
        render(model:[targetPage: targetPage], view:'/notFound')
    }
}
