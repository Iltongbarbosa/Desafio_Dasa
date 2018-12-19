#language: pt

Funcionalidade: Buscar Exames
    Para que eu possa consultar exames no site Lavoisier
    Sendo eu um paciente que deseja realizar um exame
    Posso acessar o Lavoisier e realizar a busca
    
    Contexto: Formulário Preparo de Exames
        Dado que eu acessei o site Lavoisier
    
    @Positivo
    Cenário: Buscar exame existente
        Quando acesso o formulário preparo de exames
        E pesquiso pelo exame "MDR1"
        Então devo ver o exame na lista de resultados
    
    @Negativo
    Cenário: Buscar exame inexistente
        Quando acesso o formulário preparo de exames
        E pesquiso pelo exame "RUBY DIAGNOSIS"
        Então devo não ver o exame na lista de resultados
