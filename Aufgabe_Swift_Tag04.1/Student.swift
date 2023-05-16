
import Foundation

class Student: ObservableObject {
    let name: String
    let age: Int
    @Published var feedback: String
    
    init(name: String, age: Int, feedback: String) {
        self.name = name
        self.age = age
        self.feedback = feedback
    }
}

