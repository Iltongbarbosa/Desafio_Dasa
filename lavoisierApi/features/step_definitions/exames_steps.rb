Dado("que possuo o endereço da API para consultas de exames") do              
  @enderco_api = 'https://www.lavoisier.com.br/provider/exames/'
end                                                                           
                                                                              
Quando("faço uma requisição para consultar o exame {string}") do |nome_exame|     
  @nome_exame = nome_exame
  @resposta_requisicao = @buscar_exames.busca_exames(@nome_exame, @enderco_api)
end                                                                           
                                                                              
Então("devo receber o código de resposta HTTP {int}") do |codigo_resposta|                
  expect(@resposta_requisicao.code).to eql codigo_resposta
end                                                                           
                                                                              
Então("no corpo da resposta HTTP devo receber os dados do exame") do 
  expect(@buscar_exames.validar_resultado(@resposta_requisicao, @nome_exame)).to eql @nome_exame         
end                                                                           
                                                                              
Então("no corpo da resposta HTTP não deverá existir o exame") do              
  expect(@resposta_requisicao.parsed_response).not_to include @nome_exame
end                                                                           