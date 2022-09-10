//
//  MainButtonSectionViewModel.swift
//  SpaceX
//
//  Created by Maksim  on 10.09.2022.
//

final class MainButtonSectionViewModel: MainSectionViewModelProtocol {
    
    // MARK: - Properties
    var name: MainSectionType {
        .button
    }
    
    // an empty cell
    var cells: [MainTableViewCellViewModelProtocol] {
        [MainTableViewCellViewModel()]
    }
}

