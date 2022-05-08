
struct TaxCalculator {
    private var tax: Double = 1.3
    
    func totalWithTax(input: Double) -> Double {
        return input * tax
    }
}

struct BillSplitter {
    func splitBill(subTotal: Double, numPeople: Int) -> Double {
        let totalWithTax = TaxCalculator().totalWithTax(input: subTotal)
        
        return totalWithTax/Double(numPeople)
    }
}

var x = BillSplitter().splitBill(subTotal: 120, numPeople: 5)
print(x)
