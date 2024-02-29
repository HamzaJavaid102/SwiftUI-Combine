//
//  APIResponseModel.swift
//  UseOfCombine
//
//  Created by Hamza Javaid on 29/02/2024.
//

import Foundation

struct CountryModel: Codable {
    var name: Name
    var independent: Bool
//    var capital: [String]?
    var landlocked: Bool
    var flag: String
    var startOfWeek: String
    var coatOfArms: CoatOfArms
}
