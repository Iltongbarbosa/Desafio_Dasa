Dado("que eu acessei o site Lavoisier") do
    @home_lavoisier.acessar_lavoisier
end

Quando("acesso o formulário preparo de exames") do
    @lavoisier_exames.formulario_preparo_exames
    expect(@lavoisier_exames.valida_formulario_preparo_exames).to have_content 'Exames'
end

Quando("pesquiso pelo exame {string}") do |nome_exame|
    @nome_exame = nome_exame
    @lavoisier_exames.buscar_exames(@nome_exame)
end

Então("devo ver o exame na lista de resultados") do
    expect(@lavoisier_exames.resultado_busca).to have_content @nome_exame
end

Então("devo não ver o exame na lista de resultados") do
    expect(@lavoisier_exames.resultado_busca).to have_no_content(@nome_exame)
end