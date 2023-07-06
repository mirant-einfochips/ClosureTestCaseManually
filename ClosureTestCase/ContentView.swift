//
//  ContentView.swift
//  ClosureTestCase
//
//  Created by Mirant Patel on 05/07/23.
//

import SwiftUI

struct ContentView: View {
    
    var testDevice = DeviceManager()
    
    func getLocation() {
        testDevice.getWifiList { test in
            print(test)
        }
    }
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Button("Button title") {
                self.getLocation()
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
