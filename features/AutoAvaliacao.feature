Feature autoavaliação
    Cenário nova auto-avaliação
        Dado que está preenchida “MA” na “primeira unidade” da autoavaliação do aluno “Gustavo César”
        E está preenchida “MPA” na “segunda unidade” da autoavaliação do aluno “Gustavo César”
    E está preenchida “MA” na “terceira unidade” da autoavaliação do aluno “Gustavo César”
        Quando o aluno “Gustavo César” solicita o cadastro de uma nova autoavaliação
        Então “Gustavo César” recebe uma mensagem de confirmação “notas cadastradas com sucesso”
    E a autoavaliação de “Gustavo César” deve ser cadastrada com sucesso

    Cenário Preenchimento bem sucedido da auto-avaliação
    Dado que estou na página “meu perfil” da cadeira “Algoritmos”
        E preenchi “MA” na “primeira unidade” da autoavaliação
        E preenchi “MPA” na “segunda unidade” da autoavaliação
    E preenchi “MA” na “terceira unidade” da autoavaliação
        Quando solicito cadastro das notas da autoavaliação
        Então posso ver uma mensagem de confirmação “notas cadastradas com sucesso”
        E vejo minhas notas da autoavaliação no sistema como “aprovado”

Cenário Preenchimento mal sucedido da auto-avaliação devido a nem todas as notas foram preenchidas
	Dado que estou logado como aluno “Lucas Aurelio” matriculado na cadeira “Algoritmos”
E estou na página “meu perfil” da cadeira “Algoritmos”
	E preenchi “MA” na “primeira unidade” da autoavaliação
 	E preenchi “MPA” na “segunda unidade” da autoavaliação
	Quando solicito cadastro das notas da autoavaliação
	Então posso ver uma mensagem de erro “notas não cadastradas, pois uma das notas não foi preenchida”
