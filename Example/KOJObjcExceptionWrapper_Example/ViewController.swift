//
//  ViewController.swift
//  KOJObjcExceptionWrapper_Example
//
//  Created by Koji Murata on 2017/07/27.
//  Copyright © 2017年 Koji Murata. All rights reserved.
//

import UIKit
import KOJObjcExceptionWrapper

class ViewController: UIViewController {
  override func viewDidLoad() {
    super.viewDidLoad()

    do {
      try KOJObjcExceptionWrapper.throwsBlock {
        KOJExceptionThrower.run()
      }
    } catch {
      print(error)
    }
  }
}

