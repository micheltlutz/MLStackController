// swift-tools-version:4.2
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
    products: [
        .library(
            name: "MLStackController",
            targets: ["MLStackController"]
        ),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
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
    swiftLanguageVersions: [.v4, .v4_2]
)
