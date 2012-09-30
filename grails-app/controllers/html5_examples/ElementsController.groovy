package html5_examples

class ElementsController {

    static subnav = true;

    static navigation = [
        order:10
        , title:'Elements'
        , subItems: [
            [group:'New', action:'semantic', order:0, title:"Semantic / Structural"]
            ,[group:'New', action:'forms', order:5, title:'Forms']
            ,[group:'New', action:'graphics', order:5, title:'Graphics']
            ,[group:'New', action:'media', order:10, title:'Media']
            ,[group:'Obsolete', action:'removed', order:10, title:'Removed']
        ]
    ]

    def index() {}

    def semantic() {}
    def forms() {}
    def graphics() {}
    def media() {}
    def removed() {}

}
