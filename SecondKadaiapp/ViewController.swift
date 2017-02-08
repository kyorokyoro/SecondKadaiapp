//
//  ViewController.swift
//  SecondKadaiapp
//
//  Created by 久保田恭介 on 07/02/2017.
//  Copyright © 2017 kyorokyoro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //UIviewController（apple作成）を元にしてViewControllerクラスを定義
    
    @IBOutlet weak var textField: UITextField!
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
        // 遷移先のResultViewControllerで宣言しているnameに値を代入して渡す
        resultViewController.name = textField.text!
    }
    
    func unwind(segue: UIStoryboardSegue) {
    }


}

