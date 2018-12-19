class BuscarExames
    def busca_exames(nome_exame, enderco_api)
        enderco_api += "null?&idMarca=24&query=#{nome_exame}"
        @resposta_requisicao = HTTParty.get(enderco_api, headers: { 'Content-Type' => 'application/json' }, format: :json)
    end

    def validar_resultado(resposta_requisicao, nome_exame)
        @retorno = ""
        resposta_requisicao.each do |nome|
            @exame = "#{nome["nome"]}"
            if @exame == nome_exame
                @retorno = @exame
            end
        end
        @retorno
    end
end