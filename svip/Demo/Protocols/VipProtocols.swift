//
//  VipVipProtocols.swift
//  Finance
//
//  Created by Fang Xia on 07/11/2017.
//  Copyright © 2017 Bailun. All rights reserved.
//

enum VipEntityChanges {
    case Add(index: Int)
    case Update(index: Int)
    case Remove(index: Int)
}
/**
*  methods for communication Presenter -> View

*/
protocol VipViewInput: class {
    // MARK: placeholder function, should delete
    func display(state: VipEntity)
    func display(content: String)
    //---------------------------
}

/**
*  methods for communication View -> Interactor
*/
protocol VipInteractorInput {
    // NOTE: basic function to enable/disable communication
    func subscribe()
    func unsubscribe()

    // MARK: placeholder function, should delete
    func requestChange(content: String)
    //---------------------------
}

/**
*  methods for communication interactor -> Presenter
*/
protocol VipPresenterInput{
    // NOTE: basic function to accept state change
    func didUpdated(state: VipEntity, oldState: VipEntity?)  // for single entiry
    func didUpdated(state: [VipEntity], changes: [VipEntityChanges]) // for collection of entity
    // MARK: placeholder function, should delete
    //---------------------------
}

/**
*  methods for communication View -> Router
*/
protocol VipRouterInput {
    // MARK: placeholder function, should delete
    func openOtherModule()
    //---------------------------
}
