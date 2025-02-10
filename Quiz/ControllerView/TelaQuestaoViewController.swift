//
//  TelaQuestaoViewController.swift
//  Quiz
//
//  Created by Osvaldo Souza Ferreira on 09/02/25.
//

import UIKit

class TelaQuestaoViewController: UIViewController {
    
    var pontuacao = 0
    var numeroQuestao = 0

    @IBOutlet weak var labelTituloQuestao: UILabel!
    
    @IBOutlet var buttonsRespostas: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        configurarLayout()
        configurarTempoResposta()
    }
    
    @IBAction func verificaButtonPressionado(_ sender: UIButton) {
        
        let respostaCorreta  = questoes[numeroQuestao].respostacorreta == sender.tag
        
        if respostaCorreta {
            pontuacao += 1
            sender.backgroundColor = UIColor(_colorLiteralRed: 11/255, green: 61/255, blue: 53/255, alpha: 1)
        }else{
            sender.backgroundColor = UIColor(_colorLiteralRed: 211/255, green: 17/255, blue: 17/255, alpha: 1)
        }
        
        if numeroQuestao < questoes.count - 1{
            numeroQuestao += 1
            Timer.scheduledTimer(timeInterval: 0.75, target: self, selector: #selector(configurarTempoResposta), userInfo: nil, repeats: false)
        }else{
            navegarParaTelaDesempenho()
        }
    }
    
   
    @objc func configurarTempoResposta(){
        labelTituloQuestao.text = questoes[numeroQuestao].titulo
        
        for button in buttonsRespostas{
            let tituloBotao = questoes[numeroQuestao].respostas[button.tag]
            button.setTitle(tituloBotao, for: .normal)
            button.backgroundColor = UIColor(_colorLiteralRed: 116/255, green: 50/255, blue: 255/255, alpha: 1)
        }
    }
    
    func configurarLayout(){
        navigationItem.hidesBackButton = true
        
        labelTituloQuestao.numberOfLines = 0
        
        for button in buttonsRespostas{
            button.layer.cornerRadius = 15.0
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let teleDesempenho = segue.destination as? TelaDesempenhoViewController else { return }
        
        teleDesempenho.pontuacao = pontuacao
    }
    
    func navegarParaTelaDesempenho(){
        performSegue(withIdentifier: "irParaTelaDesempenho", sender: nil)
    }
}
