Funcionalidade: Realizar depósito
    Contexto: Um usuário autenticado no sistema seleciona a opção de depósito
        E o saldo é R$0,00
        E agência 01
        E número de conta 01
        E banco 01

    Regra: o usuário deve estar autenticado no sistema

    Cenário: Depositar um valor válido
        Dado que o usuário está na tela de depósito
        Então o sistema deve apresentar o campo para informar o valor a ser depositado
        Quando o usuário informar o valor a ser depositado
        E o usuário clicar no botão de confirmar
        Então o sistema verifica se o valor informado é maior que zero
        E o valor informado é numérico
        Então o sistema atualiza o saldo da conta bancária
        E armazena o log do depósito
        Então o sistema apresenta uma mensagem de "Depósito realizado com sucesso"
        Então o sistema retorna para a tela de menu

    Cenário: Depositar um valor não numérico
        Dado que o usuário está na tela de depósito
        Então o sistema deve apresentar o campo para informar o valor a ser depositado
        Quando o usuário informar o valor a ser depositado
        E clicar no botão de confirmar
        Então o sistema verifica se o valor informado é maior que zero
        E o valor informado é numérico
        Então o sistema apresenta uma mensagem de "Valor inválido"
        Então o sistema retorna para a tela de menu

    Cenário: Depositar um valor numérico menor ou igual a zero
        Dado que o usuário está na tela de depósito
        Então o sistema deve apresentar o campo para informar o valor a ser depositado
        Quando o usuário informar o valor a ser depositado
        E clicar no botão de confirmar
        Então o sistema verifica se o valor informado é maior que zero
        E o valor informado não é numérico
        Então o sistema apresenta uma mensagem de "Valor não pode ser menor ou igual a 0"
        Então o sistema retorna para a tela de menu
