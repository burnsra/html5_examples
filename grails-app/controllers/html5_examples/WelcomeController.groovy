package html5_examples

class WelcomeController {

    static navigation = [
        order:1
        ,title:'Home'
        , subItems: [
            [group:'Navigation', action:'index', order:0, title:"Home"]
        ]
    ]

    def index() { }
}
