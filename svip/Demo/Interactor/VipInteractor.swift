//
//  VipVipInteractor.swift
//  Finance
//
//  Created by Fang Xia on 07/11/2017.
//  Copyright © 2017 Bailun. All rights reserved.
//

class VipInteractor{
    var presenter: VipPresenterInput!
    // NOTE: a simple way to use state
    var state: VipEntity!

    init() {
        state = VipEntity(label: "init content")
    }
}

extension VipInteractor: VipInteractorInput {
    // MARK: placeholder function, should delete
    func requestChange(content: String) {
        let old = state
        state = VipEntity(label: content)
        presenter.didUpdated(state: state, oldState: old)
    }
    //---------------------------

    func subscribe() {
    }

    func unsubscribe() {

    }

}
