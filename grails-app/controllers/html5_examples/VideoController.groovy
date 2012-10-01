package html5_examples

class VideoController {

    static navigation = [
        order:60
        ,title:'Audio / Video'
        , subItems: [
            [group:'Examples', action:'audio', order:5, title:'Audio']
            ,[group:'Examples', action:'video', order:10, title:"Video"]
        ]
    ]

    def index() {}

    def audio() {}
    def video() {}
}
