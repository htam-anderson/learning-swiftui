struct Car {
    private var make = "Toyota"
    private var model = "Camry"
    private var year = "2021"
    private var detail: String {
        return year + make + model
    }
    
    func getDetail() -> String {
        return detail
    }
}
