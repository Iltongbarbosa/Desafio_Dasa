require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'

class BuscarExames
    include Capybara::DSL

    def formulario_preparo_exames
      visit 'exames'
    end

    def valida_formulario_preparo_exames
        retorno_busca = find('.breadcrumb')
    end

    def buscar_exames(nome_exame)
        find('#search-exams').set nome_exame
        find('#button-buscar-exames').click
    end
    
    def resultado_busca
        retorno_busca = find('div.tabela-resultado-busca.tabela-lista')  #find('div.row.tabela-resultado-busca.tabela-lista')
    end
end