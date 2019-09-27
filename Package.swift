// swift-tools-version:5.0
//
//  MLStackController.swift
//  MLStackController
//
//  Created by Michel Lutz on 01/04/19.
//  Copyright © 2019 micheltlutz. All rights reserved.
//

import PackageDescription

let package = Package(
    name: "MLStackController",
    platforms: [
        .iOS(.v8)        
    ],
    products: [
        .library(
            name: "MLStackController",
            targets: ["MLStackController"]
        ),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "MLStackController",
            dependencies: [],
            path: "Sources"
        ),
        .testTarget(
            name: "MLStackControllerTests",
            dependencies: ["MLStackController"],
            path: "Tests"
        ),
    ],
    swiftLanguageVersions: [.v5]
)
