import Foundation


//KeyPaths: lets us reference any "instance property" as a separate value. Tehy can be passed around, used in expressions and enable a piece of code to get or set a property without actually knwing which exact property it's working with.

//Key paths come in 3 "main" variants:

//KeyPath: read-only access to a property

//WritableKeypath: readwrite access to a mutable property with "value semantics" (so the instance in question also needs to be writable to be mutable for writes to be allowed)

//ReferenceWritableKeyPath: Can only be used with reference types, and provides readwrite access to any mutable property.


//Function Shorthands (Higher order functions)

struct Employee {
    let employeeID: UUID = UUID()
    let name: String = ""
    let experience: Float = 0.0
    let designation: String = "SSE"
}

let employees: [Employee?] = [Employee(), Employee(), Employee(), Employee(), Employee(), Employee(), Employee(), nil]

let empIDs = employees.map { $0!.employeeID }
print(empIDs)


//Using keypaths

extension Sequence {
    func map<T>(_ keypath: KeyPath<Element, T>) -> [T] {
        return map {$0[keyPath:keypath]}
    }
    
    func compactMap<T>(_ keypath:  KeyPath<Element, T>) -> [T] {
        return compactMap{$0[keyPath: keypath]}
    }
}

print(employees.map(\.employeeID))
print(employees.compactMap(\.employeeID))

