func goodMorning() {
    print("Good Morning")
}

goodMorning()


func printTotalWithTax(subtotal: Double){
    print(subtotal * 1.13)
}


func getTotalWithTax(subtotal: Double) -> Double {
     return subtotal * 1.13
}
var total = getTotalWithTax(subtotal: 123)
print(total)


func calculateTotalWithTax(subtotal: Double, tax: Double) -> Double {
    return subtotal * tax
}
var totalWithTax = calculateTotalWithTax(subtotal: 432, tax: 2.3)
print(totalWithTax)
