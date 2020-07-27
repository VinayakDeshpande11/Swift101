import Foundation

//----------------------------------------------------------

///AditiveArithmetic :- A type with values that support addition and subtraction.

//Example:

extension Sequence where Element: AdditiveArithmetic {
    func sum() -> Element {
        return reduce(.zero, +)
    }
}

let arraySum = [1.1, 2.2, 3.3, 4.4, 5.5].sum()

let arrInt = [1,2,3,4,5,6].sum()

//----------------------------------------------------------

///CaseIterable :-A type that provides a collection of all of its values. Types that conform to the CaseIterable protocol are typically enumerations without associated values.


enum CompassDirection: CaseIterable {
    case north, east, west, south
}

"There are \(CompassDirection.allCases.count) directions."

print(CompassDirection.allCases.map({"\($0)"}).joined(separator: ","))
