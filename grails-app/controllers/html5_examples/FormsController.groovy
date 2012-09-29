package html5_examples

class FormsController {

    static navigation = [
        order:30
        , title:'Forms'
        , subItems: [
            [action:'color', order:0, title:"Color"]
            ,[action:'date', order:5, title:'Date']
            ,[action:'datetime', order:10, title:'Datetime']
            ,[action:'datetime_local', order:15, title:'Datetime-local']
            ,[action:'email', order:20, title:'Email']
            ,[action:'month', order:25, title:'Month']
            ,[action:'number', order:30, title:'Number']
            ,[action:'range', order:35, title:'Range']
            ,[action:'search', order:40, title:'Search']
            ,[action:'tel', order:45, title:'Tel']
            ,[action:'time', order:50, title:'Time']
            ,[action:'url', order:55, title:'URL']
            ,[action:'week', order:60, title:'Week']
        ]
    ]

    def index() { }

    def color() {}
    def date() {}
    def datetime() {}
    def datetime_local() {}
    def email() {}
    def month() {}
    def number() {
        def formAvailableAttributes = [
            max : "Specifies the maximum value allowed"
            , min : "specifies the minimum value allowed"
            , step : "specifies the legal number intervals"
            , value : "Specifies the default value"
        ]
        def formAttributes = [ min : "0", max : "10", step : "2" ]
        [formAvailableAttributes:formAvailableAttributes, formAttributes:formAttributes]
    }
    def range() {
        def formAvailableAttributes = [
            max : "Specifies the maximum value allowed"
            , min : "specifies the minimum value allowed"
            , step : "specifies the legal number intervals"
            , value : "Specifies the default value"
        ]
        def formAttributes = [ min : "0", max : "10" ]
        [formAvailableAttributes:formAvailableAttributes, formAttributes:formAttributes]
    }
    def search() {}
    def tel() {}
    def time() {}
    def url() {}
    def week() {}
}
