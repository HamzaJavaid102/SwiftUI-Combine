//
//  APIService.swift
//  UseOfCombine
//
//  Created by Hamza Javaid on 29/02/2024.
//

import Foundation
import Combine

final class APIService {
    
    func featchAPIData() -> AnyPublisher<[CountryModel],Error> {
        guard let url = URL(string: "https://restcountries.com/v3.1/region/asia") else {
            return Fail(error: URLError(.badURL)).eraseToAnyPublisher()
        }
        
        return URLSession.shared.dataTaskPublisher(for: url)
            .map(\.data)
            .decode(type: [CountryModel].self, decoder: JSONDecoder())
            .map { $0 }
            .eraseToAnyPublisher()
    }
}
