package html5_examples

class LocationController {

    static navigation = [
        order:30
        ,title:'GeoLocation'
        , subItems: [
            [group:'Examples', action:'general', order:0, title:"General"]
            ,[group:'Examples', action:'map', order:5, title:'Location / Map']
            ,[group:'Examples', action:'map_interactive', order:5, title:'Location / Map (Interactive)']
        ]
    ]

    def index() { }

    def general() { }
    def map() { }
    def map_interactive() { }
}
