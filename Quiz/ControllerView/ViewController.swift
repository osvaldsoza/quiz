//
//  ViewController.swift
//  Quiz
//
//  Created by Osvaldo Souza Ferreira on 09/02/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var buttonInciarQuiz: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        montarLayout()
    }
    
    func montarLayout(){
        navigationItem.hidesBackButton = true
        buttonInciarQuiz.layer.cornerRadius = 15.0
    }


}

