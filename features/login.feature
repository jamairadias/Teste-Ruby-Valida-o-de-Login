#language:pt

Funcionalidade: Login  
    Para que eu possa realizar o login de um usuário 
    Sendo um usuário da url
    Posso acessar com email e senha

Contexto: Login de usuário
    Dado que eu acesso a url de login


Esquema do Cenario: Tentativa de login
    Quando faço login com "<email>" e "<senha>"
    Então exibe a mensagem "<alerta>"

    Exemplos:
    |email          |senha|alerta                     |
    |teste@gmail.com|12345|Authentication failed.     |
    |               |12345|An email address required. |

Cenario: Usuário com email e senha válidos
   
    Quando faço login com "inescastro@gmail.com" e "12345"
    Então exibe a mensagem "My account"



    


