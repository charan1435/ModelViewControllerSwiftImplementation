//
//  Model.swift
//  ModelViewController
//
//  Created by Sabith Salman on 2024-11-24.
//

import Foundation
struct Task : Identifiable {
    let id = UUID()
    let title: String
    let isCompleted : Bool
}
