//
//  ContentView.swift
//  DemoSwift
//
//  Created by Ilya Syrov on 05.10.2023.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        VStack(alignment: .leading, spacing: 28) {
            HStack(alignment: .center) {
                Text("Host Setting")
                    .padding(.trailing)
            }
            VStack(alignment: .leading) {
                Text("Enter link")
                    .font(.system(size: 14))
            }
            Spacer()
            Button { } label: {
                HStack {
                    Spacer()
                    Text("Connection")
                        .font(.system(size: 14))
                    Spacer()
                }
            }
            .padding(.horizontal)
        }
        .padding([.horizontal, .bottom], 16)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
