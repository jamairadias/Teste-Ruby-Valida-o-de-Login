#language:pt

Funcionalidade: Cadastro 
    Para que eu possa realizar um novo cadastro
    Sendo um usuário da url
    Posso cadastrar os dados de um usuário

Contexto: Cadastro de novo usuário
    Dado que eu acesso a url de cadastro


Cenario: Cadastro de usuário com email válido
   
    Quando faço cadastro com "inescastro@gmail.com", "Ines", "Castro", "12345", "Miami Avenue", "Miami", "33101", "17864538738", "home address"
    Então exibe a mensagem de sucesso "My account"
    
