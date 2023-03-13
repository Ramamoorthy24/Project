//
//  ProgressViewModel.swift
//  SurveyHeartDemo
//
//  Created by Ramamoorthy on 11/03/23.
//

import Foundation

class ProgressViewModel: ObservableObject {
    
    static let shared = ProgressViewModel()
    
    @Published var isShowing = false
}
