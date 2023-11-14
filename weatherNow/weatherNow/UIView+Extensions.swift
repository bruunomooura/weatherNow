//
//  UIView+Extensions.swift
//  weatherNow
//
//  Created by Bruno Moura on 13/11/23.
//

import Foundation
import UIKit

extension UIView {
    func setContrantsToParent(_ parent: UIView) {
        NSLayoutConstraint.activate([
            self.topAnchor.constraint(equalTo: parent.topAnchor),
            self.leadingAnchor.constraint(equalTo: parent.leadingAnchor),
            self.trailingAnchor.constraint(equalTo: parent.trailingAnchor),
            self.bottomAnchor.constraint(equalTo: parent.bottomAnchor)
        ])
    }
}
