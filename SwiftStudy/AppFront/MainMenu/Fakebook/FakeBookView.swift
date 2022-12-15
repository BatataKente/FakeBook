//
//  FakeBookView.swift
//  SwiftStudy
//
//  Created by Josicleison Elves on 15/12/22.
//

import UIKit

final class FakeBookView: UIView {
    private lazy var navigationCollectionView = FakeBookNavigationCollectionView(
        imageNames: ["house", "person.and.person", "message", "play.tv", "bell"]
    )
    private lazy var statusStackView = FakeBookStatusStackView(frame: frame)
    private lazy var storiesCollectionView = FakeBookStoriesCollectionView()
    private lazy var scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.toScroll(views: [navigationCollectionView, statusStackView, storiesCollectionView])
        return scrollView
    }()
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension FakeBookView: Setup {
    func configure() {
        addSubview(scrollView)
        backgroundColor = Assets.Colors.reverseDark
    }
    func constrain() {
        scrollView.enableAutoLayout
            .constraint(attributes: [.top, .leading, .trailing, .bottom], to: safeAreaLayoutGuide)
        navigationCollectionView.enableAutoLayout
            .shape(height: frame.height*0.075)
        statusStackView.enableAutoLayout
            .shape(height: frame.height*0.1)
        storiesCollectionView.enableAutoLayout
            .shape(height: frame.height*0.2)
    }
}
