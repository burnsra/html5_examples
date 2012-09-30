package html5_examples

class StorageController {

    static navigation = [
        order:40
        ,title:'Storage'
        , subItems: [
            [group:'Examples', action:'local', order:0, title:"LocalStorage"]
            ,[group:'Examples', action:'session', order:5, title:'SessionStorage']
        ]
    ]

    def index() { }

    def local() {}
    def session() {}
}
