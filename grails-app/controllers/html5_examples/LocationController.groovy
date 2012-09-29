package html5_examples

class LocationController {

    static navigation = [
        order:35
        ,title:'GeoLocation'
        , subItems: [
            [action:'general', order:0, title:"General"]
            ,[action:'map', order:5, title:'Location / Map']
            ,[action:'map_interactive', order:5, title:'Location / Map (Interactive)']
        ]
    ]

    def index() { }

    def general() { }
    def map() { }
    def map_interactive() { }
}
