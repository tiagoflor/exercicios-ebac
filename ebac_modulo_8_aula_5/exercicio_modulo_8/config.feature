            #language: pt

            Funcionalidade: Configurar produto
            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto
            E escolher a quantidade
            Para depois inserir no carrinho

            @configurar_produto
            Esquema do Cenário: Configurar produto de compra

            Dado que eu acesse a plataforma EBAC-SHOP
            Quando eu escolher o produto com a caracteristicas <cor> e <tamanho> e <quantidade>
            E quantidade máxima "10 produtos"
            Então eu insiro no carrinho

            Exemplos:
            | cor    | tamanho | quantidade |
            | Blue   | G       | 9          |
            | Orange | M       | 2          |
            | Red    | S       | 5          |


            @limpar_carrinho
            Esquema do Cenário: Limpar produto de compra

            Dado que eu acesse a plataforma EBAC-SHOP
            Quando eu escolher o produto com a caracteristicas <cor> e <tamanho> e <quantidade>
            E quantidade máxima "10 produtos"
            Então eu limpo o carrinho voltando ao estado original

            Exemplos:
            | cor    | tamanho | quantidade |
            | Blue   | G       | 9          |
            | Orange | M       | 2          |
            | Red    | S       | 5          |