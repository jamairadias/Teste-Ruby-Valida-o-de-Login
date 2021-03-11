Dado('que eu acesso a url de cadastro') do
    visit 'http://automationpractice.com/index.php'
  end
  
  Quando('faço cadastro com {string}, {string}, {string}, {string}, {string}, {string}, {string}, {string}, {string}') do |email, firstname, lastname, passwd, address, city, zpcode, phonemobile, addressalias|
    CadastroPage.new.faz_cadastro(email, firstname, lastname, passwd, address, city, zpcode, phonemobile, addressalias)
  end
  
  Então('exibe a mensagem de sucesso {string}') do |mensagem|
    expect(page).to have_content 'Welcome to your account. Here you can manage all of your personal information and orders.'
  end

  