//
//  CreateButton.swift
//  SwiftStudy
//
//  Created by Josicleison Elves on 14/12/22.
//

import UIKit

extension Create {
    func button(_ title: String? = nil, image: UIImage? = nil,
                handler: UIActionHandler? = nil) -> UIButton {
        let button = UIButton()
        if let handler = handler {button.addAction(UIAction(handler: handler), for: .touchUpInside)}
        if let title = title {
            button.setTitle(title, for: .normal)
            button.setTitleColor(.label, for: .normal)
        }
        if let image = image {button.setImage(image, for: .normal)}
        return button
    }
}
