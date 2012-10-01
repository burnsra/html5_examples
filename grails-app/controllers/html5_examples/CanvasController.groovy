package html5_examples

class CanvasController {

    static navigation = [
        order:80
        ,title:'Canvas'
        , subItems: [
            [group:'Examples', action:'image', order:0, title:"Image"]
            ,[group:'Examples', action:'image_text', order:0, title:"Image w/Text"]
        ]
    ]

    def index() { }
    def image() { }
    def image_text() { }
}
