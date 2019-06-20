//
//  Extensions.swift
//  GoogleNewsApp
//
//  Created by Faizal on 6/20/19.
//  Copyright © 2019 FaizalMalik. All rights reserved.
//

import Foundation
import UIKit

extension Bundle {
    
    static func loadView<T>(fromNib name: String, withType type: T.Type) -> T {
        if let view = Bundle.main.loadNibNamed(name, owner: nil, options: nil)?.first as? T {
            return view
        }
        
        fatalError("Could not load view with type " + String(describing: type))
    }
}
