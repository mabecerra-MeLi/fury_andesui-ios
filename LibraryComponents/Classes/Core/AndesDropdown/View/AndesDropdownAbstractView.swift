//
//  AndesDropdownAbstractView.swift
//  AndesUI
//
//  Created by Jonathan Alonso Pinto on 13/11/20.
//

import Foundation

class AndesDropdownAbstractView: UIView, AndesDropdownView {

    @IBOutlet var view: UIView!

    var config: AndesDropdownViewConfig
    weak var delegate: AndesDropdownViewDelegate?
    var firstItem: String
    var text: String = ""

    init(withConfig config: AndesDropdownViewConfig, firstItem: String) {
        self.config = config
        self.firstItem = firstItem
        super.init(frame: .zero)
        setup()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    internal func loadNib() {
        fatalError("This should be overriden by a subclass")
    }

    func update(withConfig config: AndesDropdownViewConfig) {
        self.config = config
        updateView()
    }

    func pinXibViewToSelf() {
        addSubview(view)
        view.pinToSuperview()
    }

    func setup() {
        loadNib()
        translatesAutoresizingMaskIntoConstraints = false
        pinXibViewToSelf()
        self.backgroundColor = .clear
        self.clipsToBounds = true
    }

    internal func updateView() {
        fatalError("This should be overriden by a subclass")
    }
}
