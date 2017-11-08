//
//  VipVipRouter.swift
//  Finance
//
//  Created by Fang Xia on 07/11/2017.
//  Copyright © 2017 Bailun. All rights reserved.
//
import UIKit

class VipRouter{
    weak var transitionHandler : UIViewController!
}

extension VipRouter: VipRouterInput {
    // MARK: placeholder function, should delete
    func openOtherModule() {
        print("to other module")
    }
    //---------------------------
}
