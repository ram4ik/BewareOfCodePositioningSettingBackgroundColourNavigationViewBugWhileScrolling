//
//  ContentView.swift
//  BewareOfCodePositioningSettingBackgroundColourNavigationViewBugWhileScrolling
//
//  Created by ramil on 22/09/2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                ForEach((1...20).reversed(), id: \.self) {_ in
                    VStack {
                        Text("SwiftUI")
                        Button("Press me") {
                            print("button pressed")
                        }.frame(
                            width: UIScreen.main.bounds.size.width,
                            height: 40,
                            alignment: .center)
                            .background(Color.green)
                            .foregroundColor(Color.white)
                    }.navigationBarTitle("Project")
                    
                }.background(Color.orange)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
