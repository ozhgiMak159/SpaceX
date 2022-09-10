//
//  LaunchModel.swift
//  SpaceX
//
//  Created by Maksim  on 10.09.2022.
//

import Foundation

struct LaunchModel: Decodable {
    let rocketId, name, dateLocal: String
    let success: Bool?
    
    enum CodingKeys: String, CodingKey {
        case rocketId = "rocket"
        case name
        case dateLocal = "date_local"
        case success
    }
}
