            #language: pt

            Funcionalidade: Tela de login
            Como aluno do Portal EBAC
            Quero me autenticar
            Para visualizar minhas notas

            #para que o cenário não se repita poderá usar a pré condição
            Contexto: Dado que eu acesse a página de autenticação do portal EBAC


            Cenário: Autenticação válida
            #Dado que eu acesse a página de autenticação do portal EBAC
            Quando eu digitar o usuário "joao@ebac.com.br"
            E a senha "senha@123"
            Então deve exibir uma mensagem de boas vindas "Olá João"


            Cenário: Usuário inexistente
            #Dado que eu acesse a página de autenticação do portal EBAC
            Quando eu digitar o usuário "xxxx@ebac.com.br"
            E a senha "senha@123"
            Então deve exibir uma mensagem de alerta "Usuário inexistente"


            Cenário: Autenticação com senha inválida
            #Dado que eu acesse a página de autenticação do portal EBAC
            Quando eu digitar o usuário "joao@ebac.com.br"
            E a senha "121@123"
            Então deve exibir uma mensagem de alerta: "Usuário ou senha inválidos"



            #Autenticando múltiplos usuários
            #
            Esquema do Cenário: Autenticar multiplos usuários
            Quando eu digitar o <usuario>
            E a <senha>
            Então deve exibir a <mensagem> de sucesso

            Exemplos:
            | usuario            | senha       | mensagem    |
            | "joao@ebac.com.br" | "teste@123" | "Olá João!" |
            | "joao@ebac.com.br" | "teste@123" | "Olá João!" |
            | "joao@ebac.com.br" | "teste@123" | "Olá João!" |
            