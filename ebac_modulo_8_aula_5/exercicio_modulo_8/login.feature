            #language: pt
            
            Funcionalidade: Tela de login

            Como cliente da EBAC-SHOP
            Quero fazer o login e autenticação na plataforma
            Para visualizar meus pedidos


            Contexto: Dado que eu acesse a plataforma EBAC-SHOP

            @autenticacao_valida
            Cenário: Autenticação válida
            #Dado que eu acesse a plataforma EBAC-SHOP
            Quando eu digitar o usuário "tiago@gmail.com.br"
            E a senha "senha@123"
            Então deve direcionar para a tela de checkout

            @autenticação_invalida
            Cenário: Autenticação inválida
            #Dado que eu acesse a plataforma EBAC-SHOP
            Quando eu digitar o usuário "tiago@gmail.com.br"
            E a senha "xyz"
            Então deve exibir uma mensagem de alerta "Usuário ou senha inválidos"
         