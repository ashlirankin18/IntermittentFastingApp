//
//  AddTimerView.swift
//  FastingTracker Watch App
//
//  Created by Ashli Rankin on 6/16/22.
//

import SwiftUI

struct AddTimerView: View {
    
    @Environment(\.dismiss) private var dismiss
    @AppStorage("ChosenDuration") private var chosenDuration: Int = 2
    
    private let duration = [2,4,6,8,16,24]
    
    var body: some View {
        VStack {
            Form {
                Section("Select Duration") {
                    Picker("Fast Duration", selection: $chosenDuration) {
                        ForEach(duration, id: \.self) { duration in
                            Text("\(duration) Hours")
                        }
                        .pickerStyle(.wheel)
                    }
                }
            }
            Button("Start Fast") {
                dismiss()
            }
            .background {
                Color.green
                    .clipShape(RoundedRectangle(cornerRadius: 6))
            }
            .buttonStyle(.bordered)
        }
    }
    
    private func getDates() {
        
    }
}

struct AddTimerView_Previews: PreviewProvider {
    static var previews: some View {
        AddTimerView()
    }
}
