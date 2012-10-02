package html5_examples

class CanvasController {

    static navigation = [
        order:80
        ,title:'Canvas'
        , subItems: [
            [group:'Examples', action:'basic', order:0, title:"Basic"]
            ,[group:'Examples', action:'rectangle', order:0, title:"Rectangle"]
            ,[group:'Examples', action:'line', order:0, title:"Line"]
            ,[group:'Examples', action:'circle', order:0, title:"Circle"]
            ,[group:'Examples', action:'text', order:0, title:"Text"]
            ,[group:'Examples', action:'image', order:0, title:"Image"]
            ,[group:'Examples', action:'image_text', order:0, title:"Image w/Text"]
        ]
    ]

    def index() { }

    def basic() { }
    def rectangle() { }
    def line() { }
    def circle() { }
    def text() { }
    def image() { }
    def image_text() { }
}
