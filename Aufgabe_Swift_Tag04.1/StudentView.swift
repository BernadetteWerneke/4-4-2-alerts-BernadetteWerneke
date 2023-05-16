//
//  StudentView.swift
//  Aufgabe_Swift_Tag04.1
//
//  Created by Bernadette Werneke on 16.05.23.
//

import SwiftUI

struct StudentView: View {
    @StateObject var student = Student (name: "Edwin", age: 24, feedback: "")
    @State var newFeedback: String = ""
    @State var showingAlert = false
    @State var showingSheet = false
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack(alignment: .center){
            Text(student.name)
            Text("Alter: \(student.age)")
            TextField("Feedback", text: $student.feedback)
                .frame(width: 300, height: 50)
                .background(.yellow)
            Text("Feedbacktext:")
            
            Text("\(student.feedback)")
            Button("Feedback mit alert abschicken"){
               showingAlert = true
            }
            .alert("Feedback \(student.feedback) an \(student.name) abgeschickt.", isPresented: $showingAlert){
                Button("close", role: .cancel) {}
            }
            
            Button("Feedback mit sheet abschicken") {
                showingSheet.toggle()
            }
            .sheet(isPresented: $showingSheet) {
            } content: {
                Text("Feedback \(student.feedback) an \(student.name) abgeschickt.")
                Button("close", role: .cancel) {
                   // presentationMode.wrappedValue.dismiss()
                    showingSheet = false
                }
            }
        }
    }
}

struct StudentView_Previews: PreviewProvider {
    static var previews: some View {
        StudentView()
    }
}
