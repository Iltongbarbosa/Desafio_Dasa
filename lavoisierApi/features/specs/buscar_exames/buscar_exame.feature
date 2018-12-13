#language:pt

Funcionalidade: Buscar Exames
    Sendo uma aplicação que possui API disponivel para consulta de examens
    Posso realizar solicitação de requisição via método GET
    Para realizar buscas de exames

    Cenario: Realizar busca de exame existente
        Dado que possuo o endereço da API para consultas de exames
        Quando faço uma requisição para consultar o exame "CROMOSSOMO PHILADELPHIA"
        Então devo receber o código de resposta HTTP 200
        E no corpo da resposta HTTP devo receber os dados do exame

    Cenario: Realizar busca de exame inexistente
        Dado que possuo o endereço da API para consultas de exames
        Quando faço uma requisição para consultar o exame "RUBY DIAGNOSIS"
        Então devo receber o código de resposta HTTP 200
        E no corpo da resposta HTTP não deverá existir o exame