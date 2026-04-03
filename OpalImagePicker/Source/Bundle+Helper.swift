//
//  Bundle+Helper.swift
//  OpalImagePicker
//
//  Created by Kris Katsanevas on 1/15/17.
//  Copyright © 2017 Opal Orange LLC. All rights reserved.
//

import Foundation

extension Bundle {
    static var resourceBundle: Bundle {
        #if SWIFT_PACKAGE
        return .module
        #else
        let bundleForClass = Bundle(for: OpalImagePickerController.self)
        guard
            let bundleURL = bundleForClass.url(
                forResource: "OpalImagePickerResources",
                withExtension: "bundle"
            ),
            let bundle = Bundle(url: bundleURL)
        else {
            return bundleForClass
        }
        return bundle
        #endif
    }
}
