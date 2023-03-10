//
//  CommentViewController.swift
//  SwiftStudy
//
//  Created by Josicleison Elves on 23/12/22.
//

import UIKit

final class CommentViewController: UIViewController {
    private let commentView: CommentView
    init(_ post: Post?) {
        commentView = CommentView(post)
        super.init(nibName: nil, bundle: nil)
        setup()
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension CommentViewController: Setup {
    func configure() {
        title = "\(type(of: self))".removeLast(13)
        view = commentView
    }
}
