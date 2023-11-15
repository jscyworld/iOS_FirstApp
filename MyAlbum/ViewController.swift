//
//  ViewController.swift
//  MyAlbum
//
//  Created by JONG SOO KIM on 11/14/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblPrice: UILabel!
    var currentValue = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        lblPrice.text = "₩ \(currentValue)"
    }

    
    @IBAction func btnRefreshAction(_ sender: Any) {
        currentValue = Int(arc4random_uniform(10000)) + 1
        let message = "Current price is ₩ \(currentValue)"
        let alertController = UIAlertController(title: "Hello", message: message, preferredStyle: .alert)
        let alertAction = UIAlertAction(title: "OK", style: .default) { action in
            self.lblPrice.text = "₩ \(self.currentValue)"
        }
        alertController.addAction(alertAction)
        present(alertController, animated: true, completion: nil)
    }
}

