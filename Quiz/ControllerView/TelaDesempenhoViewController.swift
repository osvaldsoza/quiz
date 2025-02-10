//
//  TelaDesempenhoViewController.swift
//  Quiz
//
//  Created by Osvaldo Souza Ferreira on 09/02/25.
//

import UIKit

class TelaDesempenhoViewController: UIViewController {
    
    var pontuacao: Int?

    @IBOutlet weak var labelPercentual: UILabel!
    @IBOutlet weak var labelRespostaAcerto: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        montarLayout()
        montarRespostaAcerto()
    }
    
    func montarLayout(){
        navigationItem.hidesBackButton = true
    }
    
    func montarRespostaAcerto(){
        guard let pontuacao = pontuacao else { return }
        labelRespostaAcerto.text = "Você acertou \(pontuacao) de \(questoes.count) questões."
        
        let percentual = Int((Double(pontuacao) / Double(questoes.count)) * 100)
        
        labelPercentual.text = "Percentual final: \(percentual)%"
    }
}
