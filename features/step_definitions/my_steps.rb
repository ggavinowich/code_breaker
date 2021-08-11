When("inicio la aplicación") do
    visit '/'
end

Then("muestra titulo {string}") do |string|
    expect(page).to have_css "h2", text: string
end

Then("muestra boton {string}") do |string|
    expect(page).to have_selector 'input[type=submit][value="Iniciar juego"]' #Como hacer que sea generico
end

Then("muestra cuadro de entrada de datos {string}") do |string|
    expect(page).to have_selector 'input[type=submit][value="Iniciar juego"]' #Como hacer que sea generico
end

Given("inicio la aplicación con numero secreto {int}") do |int|
    visit '/backdoor'
    click_button "Iniciar"
end

When("arriesga {int}") do |int|
    fill_in("user_guess_name", :with => int)
    click_button "¡Arriegar!"    
end

Then("muestra mensaje {string}") do |string|
    expect(page).to have_css "div", text: string
end