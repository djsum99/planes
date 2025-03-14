//
//  PlanesView.swift
//  Planes
//
//  Created by Dan Sumetsky on 10/20/24.
//

import SwiftUI
import MapKit

struct PlanesView: View {
    
    @State var planesSheet: Bool = false
    
    var body: some View {
        ZStack {
            Map()
                .mapStyle(.hybrid)
            
            VStack {
                HStack {
                    Button {
                        planesSheet = true
                    } label: {
                        Text("Planes")
                    }
                    Spacer()
                }
                .padding(10)
                Spacer()
            }
            
        }
        .sheet(isPresented: $planesSheet) {
            Text("Planes stuff")
            Button {
                planesSheet = false
            } label: {
                Text("Close")
            }
        }
    }
}

#Preview {
    PlanesView()
}
