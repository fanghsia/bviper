//
//  VipVipModule.swift
//  Finance
//
//  Created by Fang Xia on 07/11/2017.
//  Copyright © 2017 Bailun. All rights reserved.
//

/**
*  methods for communication OuterSide -> Vip
*  define the capabilities of Vip
*/
public protocol VipModuleInput: class {
    // MARK: placeholder function, should delete
    func doSomeThingFromExternal(_ output: VipModuleOutput?)
    //---------------------------
}

/**
*  methods for communication Vip -> OuterSide
*  tell the caller what is changed
*/
public protocol VipModuleOutput: class {
    // MARK: placeholder function, should delete
    func didSomeThingExternal()
    //---------------------------
}

/**
*  default implement of VipModuleOutput
*  empty implement for optional ops and
*  fatalError make sure required ops
*/
extension VipModuleOutput {
    // MARK: placeholder function, should delete
    func didSomeThingExternal(){
    }
    //---------------------------
}
