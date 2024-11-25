//
//  ControllerClass.swift
//  ModelViewController
//
//  Created by Sabith Salman on 2024-11-25.
//

import SwiftUI

struct ControllerClass: View {
    @Binding var tasks: [Task]
    @State var taskTitle: String = ""
    @State var taskComplet : Bool = false
    @Environment(\.dismiss) var dismiss
    var body: some View {
        NavigationStack{
            Form{
                TextField("Enter task title", text:$taskTitle )
                Toggle("Task Completed", isOn: $taskComplet)
            }
                .navigationBarTitle("Add Task")
                .toolbar{
                    ToolbarItem(placement: .navigationBarTrailing){
                        Button("Save"){
                            addTask()
                            dismiss()
                        }
                    }
                }
        }
        
    }
    
    func addTask(){
        let newTask = Task(title: taskTitle, isCompleted: taskComplet)
        tasks.append(newTask)
        
        
    }
}

#Preview {
    ControllerClass(tasks: .constant([]))
}
