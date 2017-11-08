//
//  VipVipViewController.swift
//  Finance
//
//  Created by Fang Xia on 07/11/2017.
//  Copyright © 2017 Bailun. All rights reserved.
//

import UIKit

class VipViewController: UIViewController{
    var interactor: VipInteractorInput!
    var router: VipRouterInput!
    //-------- your code below ----------
    // MARK: placeholder, should delete
    let label: UILabel = {
        let l = UILabel()
        return l
    }()
    //---------------------------

    override func awakeFromNib() {
        super.awakeFromNib()
        // setup relationship while awaken
        configurate()
    }
    // MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        // MARK: placeholder, should delete
        label.frame = self.view.bounds
        self.view.addSubview(label)
        //---------------------------
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        // DEFAULT: subscribe while shown
        interactor.subscribe()
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        // DEFAULT: unsubscribe while disappear
        interactor.unsubscribe()
    }
}

extension VipViewController{
    /*
     circle relation:

     R <--- V ---> I 
            ^     /
             \  |/
               P
    */
    final func configurate(){
        let router = VipRouter()
        router.transitionHandler = self
        self.router = router

        let interactor = VipInteractor()
        let presenter = VipPresenter()
        interactor.presenter = presenter
        presenter.view = self
        self.interactor = interactor
    }
}

extension VipViewController: VipViewInput {
    // MARK: placeholder function, should delete
    func display(state: VipEntity) {
        self.label.text = state.label 
    }

    func display(content: String) {
        self.label.text = content
    }
    //---------------------------
}

extension VipViewController: VipModuleInput {
    // MARK: placeholder function, should delete
    func doSomeThingFromExternal(_ output: VipModuleOutput?) {
        // do something,
        // report result to outside
        if let output = output {
            output.didSomeThingExternal()
        }
    }
    //---------------------------
}

