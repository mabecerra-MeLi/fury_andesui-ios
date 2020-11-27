//
//  StandaloneCell.swift
//  AndesUI
//
//  Created by Jonathan Alonso Pinto on 27/11/20.
//

import Foundation

@objc public class StandaloneDropdownCell: AndesDropdownTrigger {
    public override init(title: String? = String()) {
        super.init(title: title ?? "")
    }
}