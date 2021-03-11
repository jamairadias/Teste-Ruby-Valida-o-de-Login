class CadastroPage < SitePrism::Page
    include Capybara::DSL
    def faz_cadastro(email, firstname, lastname, passwd, address, city, zpcode, phonemobile, addressalias)
        click_link 'Sign in'
        sleep(2)
        find('input[id=email_create]').set email
        sleep(2)
        click_button 'Create an account'
        sleep(2)
        choose('id_gender2')
        sleep(2)
        find('input[id=customer_firstname]').set firstname
        sleep(2)
        find('input[id=customer_lastname]').set lastname
        sleep(2)
        find('input[id=passwd]').set passwd
        sleep(2)
        find('input[id=address1]').set address
        sleep(2)
        find('input[id=city]').set city
        sleep(2)
        find('#uniform-id_state').select('Florida')
        sleep(2)
        find('input[id=postcode]').set zpcode
        sleep(2)
        find('#uniform-id_country').select('United States')
        sleep(2)
        find('input[id=phone_mobile]').set phonemobile
        sleep(2)
        find('input[id=alias]').set addressalias
        sleep(2)
        click_button 'Register'
    end

    def faz_login(email, passwd)
        click_link 'Sign in'
        sleep(2)
        find('input[id=email]').set email
        sleep(2)
        find('input[id=passwd]').set passwd
        sleep(2)
        click_button 'Sign in'
    end
end