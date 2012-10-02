package html5_examples

class LocationController {

    static navigation = [
        order:30
        ,title:'GeoLocation'
        , subItems: [
            [group:'Examples', action:'general', order:0, title:"General"]
            ,[group:'Examples', action:'map', order:5, title:'Map']
            ,[group:'Examples', action:'map_interactive', order:15, title:'Map (Interactive)']
            ,[group:'Examples', action:'details', order:20, title:'Full Detail']
        ]
    ]

    def index() { }

    def general() { }
    def map() { }
    def map_interactive() { }
    def details() { }
}
