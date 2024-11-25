//
//  ContentView.swift
//  ModelViewController
//
//  Created by Sabith Salman on 2024-11-24.
//

import SwiftUI

struct ContentView: View {
    @State private var tasks: [Task] = [
        Task(title: "Buy Grocery", isCompleted: true),
        Task(title: "Learn SwiftUI", isCompleted: false)
    ]
    @State var showForm : Bool = false
    
    var body: some View {
        NavigationView {
            List(tasks) { task in
                /*@START_MENU_TOKEN@*/Text(task.title)/*@END_MENU_TOKEN@*/
                    .font(.headline)
                Text("\(task.isCompleted)")
            }
            
                
            .navigationTitle("Task")
            .toolbar{
                ToolbarItem(placement: .navigationBarTrailing){
                    Button("Add",systemImage: "plus"){
                        showForm.toggle()
                        
                    }
                    }
                }
            }
        .sheet(isPresented: $showForm){
            ControllerClass(tasks: $tasks)
            
            
        }
            }
        }
    
#Preview {
    ContentView()
}
