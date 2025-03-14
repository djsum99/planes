//
//  PlanesDataModel.swift
//  Planes
//
//  Created by Dan Sumetsky on 10/20/24.
//

import Foundation

struct City {
    var name: String
    var latitude: CGFloat
    var longitude: CGFloat
    var population: Int
    var passengers: [Passenger]
}

struct Plane {
    var name: String
    var model: PlaneModel
}

struct Passenger {
    var name: String
    var origin: City
    var destination: City
    var location: City
}

struct Flight {
    var plane: Plane
    var origin: City
    var destination: City
}

struct PlaneModel {
    var name: String
    var capacity: Int
    var range: CGFloat
    var speed: CGFloat
    var cost: CGFloat
}
