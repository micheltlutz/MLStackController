//
//  MLStackControllerSpec.swift
//  MLStackController
//
//  Created by Michel Lutz on 01/04/19.
//  Copyright © 2019 micheltlutz. All rights reserved.
//

import Quick
import Nimble
@testable import MLStackController

class MLStackControllerSpec: QuickSpec {
    override func spec() {
        describe("MLStackControllerSpec") {
            it("works") {
                expect(MLStackController.name) == "MLStackController"
            }
        }
    }
}
