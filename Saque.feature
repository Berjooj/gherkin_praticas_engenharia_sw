Funcionalidade: Realizar saque
    Contexto: Um usuário autenticado no sistema seleciona a opção de saque
        E o saldo é R$10,00
        E agência 01
        E número de conta 01
        E banco 01

    Regra: o usuário deve estar autenticado no sistema
    Regra: o usuário deve ter saldo na conta

    Cenário: Sacar um valor válido
        Dado que o usuário está na tela de saque
        Então o sistema deve apresentar o campo para informar o valor a ser sacado
        Quando o usuário informar o valor
        E clicar no botão de confirmar
        Então o sistema verifica se o valor informado é maior que zero
        E o valor informado é numérico
        E o valor informado é menor que o saldo atual
        Então o sistema atualiza o saldo da conta bancária
        E armazena o log do saque
        E apresenta uma mensagem de "Saque realizado com sucesso"
        Então ejeta o dinheiro na bandeja da máquina
        Então o sistema retorna para a tela de menu

    Cenário: Sacar um valor não numérico
        Dado que o usuário está na tela de sacar
        Então o sistema deve apresentar o campo para informar o valor a ser sacado
        Quando o usuário informar o valor a ser sacado
        E clicar no botão de confirmar
        Então o sistema verifica se o valor informado é maior que zero
        E o valor informado é numérico
        E o valor informado é menor que o saldo atual
        Então o sistema apresenta uma mensagem de "Valor inválido"
        Então o sistema retorna para a tela de menu

    Cenário: Sacar um valor numérico menor ou igual a zero
        Dado que o usuário está na tela de sacar
        Então o sistema deve apresentar o campo para informar o valor a ser sacado
        Quando o usuário informar o valor a ser sacado
        E clicar no botão de confirmar
        Então o sistema verifica se o valor informado é maior que zero
        E o valor informado não é numérico
        E o valor informado é menor que o saldo atual
        Então o sistema apresenta uma mensagem de "Valor não pode ser menor ou igual a 0"
        Então o sistema retorna para a tela de menu

    Cenário: Sacar um valor numérico maior que o saldo atual
        Dado que o usuário está na tela de sacar
        Então o sistema deve apresentar o campo para informar o valor a ser sacado
        Quando o usuário informar o valor a ser sacado
        E clicar no botão de confirmar0
        Então o sistema verifica se o valor informado é maior que zero
        E o valor informado não é numérico
        E o valor informado é menor que o saldo atual
        Então o sistema apresenta uma mensagem de "Saldo insuficiente para realizar a operação"
        Então o sistema retorna para a tela de menu