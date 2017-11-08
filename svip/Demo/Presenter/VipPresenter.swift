//
//  VipVipPresenter.swift
//  Finance
//
//  Created by Fang Xia on 07/11/2017.
//  Copyright © 2017 Bailun. All rights reserved.
//

class VipPresenter
{
    weak var view: VipViewInput!
}

extension VipPresenter: VipPresenterInput{
    func didUpdated(state: VipEntity, oldState: VipEntity? = nil) {
        // MARK: placeholder function, should delete
        view.display(state: state)
        //----------------------
    }

    func didUpdated(state: [VipEntity], changes: [VipEntityChanges]) {
        // nothing to do
    }
}

