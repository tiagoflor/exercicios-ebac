            #laguage: pt

            Funcionalidade: Tela de Cadastro
            Como cliente da EBAC-SHOP
            Quero fazer concluir meu cadastro
            Para finalizar minha compra

            Contexto:Dado que eu acesse a plataforma EBAC-SHOP

            @cadastrar_checkout
            Esquema do Cenário: Cadastrar Checkout
            #Dado que eu acesse a plataforma EBAC-SHOP
            Quando eu preencher o Checkout com as informaçoes <nome> e <sobrenome> e <pais> e <endereco> e <cidade> e <cep> e <telefone>
            E inserir um <email> válido
            Então eu irei finalizar a compra

            Exemplos:
            | nome   | sobrenome | pais   | endereco     | cidade         | cep       | telefone       | email                |
            | Joao   | Pessoa    | Brasil | Rua Vermelha | Rio de Janeiro | 21999-000 | 21 99213-0034  | joaopessoa@gmail.com |
            | Rafael | Fernandes | Brasil | Rua Amarela  | São Paulo      | 08090-284 | 11 98789 -0021 | rafaelf@outlook.com  |
            | Carlos | Silva     | Brasil | Rua Azul     | Barueri        | 01419-002 | 11 98787-1212  | carlos@terra.com.br  |


            @email_invalido
            Esquema do Cenário: Email Inválido Checkout
            #Dado que eu acesse a plataforma EBAC-SHOP
            Quando eu preencher o Checkout com as informaçoes <nome> e <sobrenome> e <pais> e <endereco> e <cidade> e <cep> e <telefone>
            E inserir um <email> inválido
            Então o sistema deve inserir uma mensagem de erro

            Exemplos:
            | nome   | sobrenome | pais   | endereco     | cidade         | cep       | telefone       | email              |
            | Joao   | Pessoa    | Brasil | Rua Vermelha | Rio de Janeiro | 21999-000 | 21 99213-0034  | as@gmail.com       |
            | Rafael | Fernandes | Brasil | Rua Amarela  | São Paulo      | 08090-284 | 11 98789 -0021 | rafaelf@outlook.   |
            | Carlos | Silva     | Brasil | Rua Azul     | Barueri        | 01419-002 | 11 98787-1212  | carlos@terra.cm.br |


            @campo_vazio
            Esquema do Cenário: Email Inválido Checkout
            #Dado que eu acesse a plataforma EBAC-SHOP
            Quando eu preencher o Checkout com as informaçoes <nome> e <sobrenome> e <pais> e <endereco> e <cidade> e <cep> e <telefone>
            E inserir um <email> válido
            E existir um campo em branco
            Então o sistema deve inserir uma mensagem de erro

            Exemplos:
            | nome   | sobrenome | pais   | endereco    | cidade         | cep       | telefone       | email                |
            | Joao   | Pessoa    | Brasil |             | Rio de Janeiro | 21999-000 | 21 99213-0034  | joaopessoa@gmail.com |
            | Rafael | Fernandes | Brasil | Rua Amarela | São Paulo      | 08090-284 | 11 98789 -0021 |                      |
            | Carlos | Silva     | Brasil | Rua Azul    | Barueri        |           | 11 98787-1212  | carlos@terra.com.br  |

