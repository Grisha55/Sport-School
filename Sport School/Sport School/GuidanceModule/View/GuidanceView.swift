//
//  GuidanceView.swift
//  Sport School
//
//  Created by Григорий Виняр on 16/08/2022.
//

import SwiftUI

struct GuidanceView: View {
    @StateObject private var guidanceViewModel = GuidanceViewModel()
    @State private var isExplaned = true
    
    var body: some View {
        List {
            ForEach(0..<guidanceViewModel.guidances.count, id: \.self) { index in
                DisclosureGroup(isExpanded: $isExplaned) {
                    Text(guidanceViewModel.guidances[index].guidance)
                        .font(.title2)
                        .fontWeight(.light)
                        .frame(width: 300, height: 700, alignment: .leading)
                } label: {
                    Image(guidanceViewModel.guidances[index].imageName)
                        .resizable()
                        .cornerRadius(30)
                        .frame(height: 300, alignment: .center)
                }
            }
            .listRowInsets(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))
        }
        .listStyle(.inset)
        .navigationTitle("Руководство")
        .task {
            guidanceViewModel.getGuidances()
        }
    }
}

struct GuidanceView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            GuidanceView()
        }
    }
}
