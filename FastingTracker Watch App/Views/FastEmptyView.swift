//
//  FastEmptyView.swift
//  FastingTracker Watch App
//
//  Created by Ashli Rankin on 6/17/22.
//

import SwiftUI

struct FastEmptyView: View {
    var body: some View {
        VStack {
            Image(systemName: "timer")
                .imageScale(.large)
                .font(.title2)
                .foregroundColor(.accentColor)
            Text("No active  timers")
                .font(.headline)
            Spacer()
            NavigationLink(destination: {
                AddTimerView()
            }, label: {
                Image(systemName: "plus")
            })
        }
    }
}

struct FastEmptyView_Previews: PreviewProvider {
    static var previews: some View {
        FastEmptyView()
    }
}
