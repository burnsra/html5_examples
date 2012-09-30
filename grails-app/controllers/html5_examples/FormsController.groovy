package html5_examples

class FormsController {

    static navigation = [
        order:20
        , title:'Forms'
        , subItems: [
            [group:'Types', action:'color', order:0, title:"Color"]
            ,[group:'Types', action:'date', order:5, title:'Date']
            ,[group:'Types', action:'datetime', order:10, title:'Datetime']
            ,[group:'Types', action:'datetime_local', order:15, title:'Datetime-local']
            ,[group:'Types', action:'email', order:20, title:'Email']
            ,[group:'Types', action:'month', order:25, title:'Month']
            ,[group:'Types', action:'number', order:30, title:'Number']
            ,[group:'Types', action:'range', order:35, title:'Range']
            ,[group:'Types', action:'search', order:40, title:'Search']
            ,[group:'Types', action:'tel', order:45, title:'Tel']
            ,[group:'Types', action:'time', order:50, title:'Time']
            ,[group:'Types', action:'url', order:55, title:'URL']
            ,[group:'Types', action:'week', order:60, title:'Week']
            ,[group:'Elements', action:'datalist', order:60, title:'Datalist']
            ,[group:'Elements', action:'keygen', order:60, title:'Keygen']
            ,[group:'Elements', action:'output', order:60, title:'Output']
            ,[group:'Attributes', action:'autocomplete', order:60, title:'AutoComplete']
            ,[group:'Attributes', action:'autofocus', order:60, title:'AutoFocus']
            ,[group:'Attributes', action:'form', order:60, title:'Form']
            ,[group:'Attributes', action:'formaction', order:60, title:'FormAction']
            ,[group:'Attributes', action:'formenctype', order:60, title:'FormEnctype']
            ,[group:'Attributes', action:'formmethod', order:60, title:'FormMethod']
            ,[group:'Attributes', action:'formnovalidate', order:60, title:'FormNoValidate']
            ,[group:'Attributes', action:'formtarget', order:60, title:'FormTarget']
            ,[group:'Attributes', action:'height_width', order:60, title:'Height / Width']
            ,[group:'Attributes', action:'list', order:60, title:'List']
            ,[group:'Attributes', action:'min_max', order:60, title:'Min / Max']
            ,[group:'Attributes', action:'multiple', order:60, title:'Multiple']
            ,[group:'Attributes', action:'pattern', order:60, title:'Pattern']
            ,[group:'Attributes', action:'placeholder', order:60, title:'Placeholder']
            ,[group:'Attributes', action:'required', order:60, title:'Required']
            ,[group:'Attributes', action:'step', order:60, title:'Step']
        ]
    ]

    def index() {}

    def color() {}
    def date() {}
    def datetime() {}
    def datetime_local() {}
    def email() {}
    def month() {}
    def number() {
        def fieldAvailableAttributes = [
            max : "Specifies the maximum value allowed"
            , min : "specifies the minimum value allowed"
            , step : "specifies the legal number intervals"
            , value : "Specifies the default value"
        ]
        def fieldAttributes = [ min : "0", max : "10", step : "2" ]
        [fieldAvailableAttributes:fieldAvailableAttributes, fieldAttributes:fieldAttributes]
    }
    def range() {
        def fieldAvailableAttributes = [
            max : "Specifies the maximum value allowed"
            , min : "specifies the minimum value allowed"
            , step : "specifies the legal number intervals"
            , value : "Specifies the default value"
        ]
        def fieldAttributes = [ min : "0", max : "10" ]
        [fieldAvailableAttributes:fieldAvailableAttributes, fieldAttributes:fieldAttributes]
    }
    def search() {}
    def tel() {}
    def time() {}
    def url() {}
    def week() {}

    def datalist() {}
    def keygen() {}
    def output() {}

    def autocomplete() {}
    def autofocus() {}
    def form() {}
    def formaction() {}
    def formenctype() {}
    def formmethod() {}
    def formnovalidate() {
        def formAttributes = [ novalidate : "novalidate" ]
        [formAttributes:formAttributes]}
    def formtarget() {}
    def height_width() {}
    def list() {}
    def min_max() {}
    def multiple() {}
    def pattern() {}
    def placeholder() {}
    def required() {}
    def step() {}
}
