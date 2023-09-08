//
//  SearchViewModel.swift
//  AirportsFinder
//
//  Created by zakaria.ismaili on 8/9/2023.
//

import Foundation
import RxCocoa

// MARK: Search Protocol

protocol SearchViewPresentable {
    typealias Input = (
        searchText: Driver<String>, ()
    )
    typealias Output = (
    
    )
    
    var input: SearchViewPresentable.Input { get }
    var output: SearchViewPresentable.Output { get }
}

class SearchViewModel: SearchViewPresentable {
    
    // MARK: - Input / Output
    
    var input: SearchViewPresentable.Input
    var output: SearchViewPresentable.Output
    
    // MARK: - Initializer
    
    init(input: SearchViewPresentable.Input) {
        self.input = input
        self.output = SearchViewModel.output(input: self.input)
    }
}

private extension SearchViewModel {
    static func output(input: SearchViewPresentable.Input) -> SearchViewPresentable.Output {
        
        return ()
    }
}
