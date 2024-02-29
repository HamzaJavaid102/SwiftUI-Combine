//
//  CountryViewModel.swift
//  UseOfCombine
//
//  Created by Hamza Javaid on 29/02/2024.
//

import Foundation
import Combine

@Observable
final class CountryViewModel {
    var cancelable = Set<AnyCancellable>()
    
   var countries = [CountryModel]()
    
    func fetchCountryList() {
        let publisher = APIService().featchAPIData()
        
        publisher.sink { complition in
            switch complition {
            case .finished:
                print(complition)
            case .failure(let error):
                print(error)
            }
        } receiveValue: { [unowned self] countrylist in
            self.countries = countrylist
            print(self.countries)
        }
        .store(in: &cancelable)

    }
}
