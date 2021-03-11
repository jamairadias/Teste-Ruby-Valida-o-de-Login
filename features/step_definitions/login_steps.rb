Dado('que eu acesso a url de login') do
    visit 'http://automationpractice.com/index.php'
  end
  
  Quando('faço login com {string} e {string}') do |email, senha|
    
    CadastroPage.new.faz_login(email, senha)
  end

  Então('exibe a mensagem {string}') do |mensagem|
    expect(page).to have_content mensagem
  end

  