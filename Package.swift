// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "OpalImagePicker",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "OpalImagePicker",
            targets: ["OpalImagePicker"]
        )
    ],
    targets: [
        .target(
            name: "OpalImagePicker",
            path: "OpalImagePicker",
            exclude: [
                "SupportingFiles/AppDelegate.swift",
                "SupportingFiles/ViewController.swift",
                "SupportingFiles/Info.plist",
                "SupportingFiles/Base.lproj"
            ],
            sources: ["Source"],
            resources: [
                .process("SupportingFiles/Assets.xcassets")
            ]
        )
    ]
)
