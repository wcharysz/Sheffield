//
//  ViewModelProtocol.swift
//  Sheffield
//
//  Created by User  on 29.07.2017.
//  Copyright © 2017 Wojciech Charysz. All rights reserved.
//

import Foundation
import UIKit

protocol ViewModelProtocol {
    associatedtype ControllerType: UIResponder
    weak var delegate: ControllerType? { get }
}
