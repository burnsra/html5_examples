package html5_examples

class FormsController {

    static navigation = [
        order:30
        , title:'Forms'
        , subItems: [
            [action:'color', order:0, title:"color"]
            ,[action:'date', order:5, title:'date']
            ,[action:'datetime', order:10, title:'datetime']
            ,[action:'datetime_local', order:15, title:'datetime-local']
            ,[action:'email', order:20, title:'email']
            ,[action:'month', order:25, title:'month']
            ,[action:'number', order:30, title:'number']
            ,[action:'range', order:35, title:'range']
            ,[action:'search', order:40, title:'search']
            ,[action:'tel', order:45, title:'tel']
            ,[action:'time', order:50, title:'time']
            ,[action:'url', order:55, title:'url']
            ,[action:'week', order:60, title:'week']
        ]
    ]

    def index() { }

    def color() {render(view:"form")}
    def date() {render(view:"form")}
    def datetime() {render(view:"form")}
    def datetime_local() {render(view:"form")}
    def email() {render(view:"form")}
    def month() {render(view:"form")}
    def number() {render(view:"form")}
    def range() {render(view:"form")}
    def search() {render(view:"form")}
    def tel() {render(view:"form")}
    def time() {render(view:"form")}
    def url() {render(view:"form")}
    def week() {render(view:"form")}
}
