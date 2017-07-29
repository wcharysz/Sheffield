//
//  ObjectWithViewModel.swift
//  Sheffield
//
//  Created by User  on 29.07.2017.
//  Copyright © 2017 Wojciech Charysz. All rights reserved.
//

import Foundation

protocol ObjectWithViewModel {
    associatedtype ModelType
    var viewModel: ModelType { get }
}
