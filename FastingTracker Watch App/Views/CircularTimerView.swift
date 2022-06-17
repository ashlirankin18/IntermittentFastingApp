//
//  CircularTimerView.swift
//  FastingTracker Watch App
//
//  Created by Ashli Rankin on 6/17/22.
//

import SwiftUI

struct CircularTimerView: View {
    
    let progress: Double
    
    var body: some View {
        GeometryReader { proxy in
            ZStack() {
                Circle()
                    .stroke(lineWidth: 5)
                    .padding([.leading,.trailing], 16)
                Circle()
                    .trim(from: 0, to: progress)
                    .stroke(Color.green, style: .init(lineWidth: 5, lineCap: .round))
                    .frame(width: proxy.size.width / 1.5)
                    .rotationEffect(.degrees(-90))
                    .animation(.easeOut, value: progress)
                Text("\(progress)")
                    .font(.headline)
            }
        }
    }
}

struct CircularTimerView_Previews: PreviewProvider {
    static var previews: some View {
        CircularTimerView(progress: 0.5)
    }
}
