//
//  Questao.swift
//  Quiz
//
//  Created by Osvaldo Souza Ferreira on 10/02/25.
//

import Foundation

struct Questao{
    var titulo: String
    var respostas: [ String]
    var respostacorreta: Int
}

let questoes: [Questao] = [
    Questao(titulo: "Qual feitiço para desarmar o seu oponente, em Harry Potter?", respostas: ["Expecto Patronum","Avada Kedavra","Expelliarmus"], respostacorreta: 2),
    Questao(titulo: "Em que ano Vingadores Ultimato foi lançado?", respostas: ["2019","2018","2017"], respostacorreta: 0),
    Questao(titulo: "Qual feitiço para desarmar o seu oponente, em Harry Potter?", respostas: ["Expecto Patronum","Avada Kedavra","Expelliarmus"], respostacorreta: 2)
]

