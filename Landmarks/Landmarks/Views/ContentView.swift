//
//  ContentView.swift
//  Landmarks
//
//  Created by Ibukunoluwa Akintobi on 18/08/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(ModelData())
    }
}
