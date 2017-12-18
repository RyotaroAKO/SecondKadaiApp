//
//  ViewController.swift
//  SecondKadaiApp
//
//  Created by 赤穂亮太郎 on 2017/12/15.
//  Copyright © 2017年 ryoutarou.akou. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var box: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // segueから遷移先のResultViewControllerを取得する
        let resultViewController:ResultViewController = segue.destination as! ResultViewController
        // 遷移先のResultViewControllerで宣言しているnameに文字を代入して渡す
        resultViewController.name = box.text!
    }

    @IBAction func unwind(_ segue: UIStoryboardSegue) {
        // 他の画面から segue を使って戻ってきた時に呼ばれる
    }

}

