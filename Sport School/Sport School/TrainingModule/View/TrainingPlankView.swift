//
//  TrainingPlankView.swift
//  Sport School
//
//  Created by Григорий Виняр on 19/08/2022.
//

import SwiftUI

let timer = Timer
    .publish(every: 1, on: .main, in: .common)
    .autoconnect()

struct TrainingPlankView: View {
    var trainingViewTitle: String
    @State var counter: Int = 0
    var countTo: Int = 120 //4 minutes 120 - 2minutes
    
    var body: some View {
        
        if trainingViewTitle == "Дневная планка" {
            VStack {
                ZStack{
                    Circle()
                        .fill(Color.clear)
                        .frame(width: 250, height: 250)
                        .overlay(
                            Circle().stroke(Color.green, lineWidth: 25)
                        )
                    
                    Circle()
                        .fill(Color.clear)
                        .frame(width: 250, height: 250)
                        .overlay(
                            Circle().trim(from:0, to: progress())
                                .stroke(
                                    style: StrokeStyle(
                                        lineWidth: 25,
                                        lineCap: .round,
                                        lineJoin:.round
                                    )
                                )
                                .foregroundColor(
                                    (completed() ? Color.orange : Color.red)
                                ).animation(.easeInOut, value: 0.2)
                        )
                    
                    Clock(counter: counter, countTo: countTo)
                }
            }.onReceive(timer) { time in
                if (self.counter < self.countTo) {
                    self.counter += 1
                }
        }
        } else if trainingViewTitle == "Дневные отжимания" {
            FirstTrainingPushupsView()
        
        
        }
    }
    
    func completed() -> Bool {
        return progress() == 1
    }
    
    func progress() -> CGFloat {
        return (CGFloat(counter) / CGFloat(countTo))
    }
}

struct Clock: View {
    var counter: Int
    var countTo: Int
    
    var body: some View {
        VStack {
            Text(counterToMinutes())
                .font(.system(size: 60))
                .fontWeight(.black)
        }
    }
    
    func counterToMinutes() -> String {
        let currentTime = countTo - counter
        let seconds = currentTime % 60
        let minutes = Int(currentTime / 60)
        
        return "\(minutes):\(seconds < 10 ? "0" : "")\(seconds)"
    }
}

struct TrainingView_Previews: PreviewProvider {
    static var previews: some View {
        let trainingView = "Plank"
        TrainingPlankView(trainingViewTitle: trainingView)
    }
}
