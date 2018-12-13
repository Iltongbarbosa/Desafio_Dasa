Before do
    @home_lavoisier = HomeLavoisier.new
    @lavoisier_exames = BuscarExames.new
end

After do |scenario|
    nome_cenario = scenario.name
    nome_cenario = nome_cenario.tr(' ', '_')
    screenshot = "log/screenshots/#{nome_cenario}.png"
  
    if scenario.failed?
       screenshot = "log/screenshots/failed/#{nome_cenario}.png"
    else
       screenshot = "log/screenshots/passed/#{nome_cenario}.png"
    end
    
    page.save_screenshot(screenshot, full: true) # => capybara tira o screenshot  
    embed(screenshot, 'image/png', 'Evidência') # => cucumber atacha a evidencia no relatório
end
  