Funcionalidade: Realizar transferência entre contas
    Contexto: Um usuário autenticado no sistema seleciona a opção de transferência
        E o saldo é R$100,00
        E Agencia 01
        E número de conta 01
        E banco 01

    Regra: o usuário deve estar autenticado no sistema
    Regra: o usuário deve ter saldo na conta

    Cenário: Transferir um valor válido para uma conta válida
        Dado que o usuário está na tela de transferência
        Então o sistema deve apresentar o campo para informar o valor a ser transferido
        Quando o usuário informar o valor a ser transferido
        E o usuário clicar no botão de confirmar
        Então o sistema valida o valor informado
        E o sistema deve apresentar a tela para digitar os dados da conta de destino
        Quando o usuário informar os dados da conta de destino
        E o usuário clicar no botão de confirmar
        Então o sistema valida os dados da conta de destino
        E o sistema valida o horario da transferencia
        E salva o log da transferência
        E reduz o saldo do usuário
        E incrementa o saldo do usuário de destino
        Então o sistema apresenta uma mensagem de "Transferência realizada com sucesso"
        E o sistema retorna para a tela inicial

    Cenário: Transferir um valor válido para uma conta inválida
        Dado que o usuário está na tela de transferência
        Então o sistema deve apresentar o campo para informar o valor a ser transferido
        Quando o usuário informar o valor a ser transferido
        E o usuário clicar no botão de confirmar
        Então o sistema valida o valor informado
        E o sistema deve apresentar a tela para digitar os dados da conta de destino
        Quando o usuário informar os dados da conta de destino
        E o usuário clicar no botão de confirmar
        Então o sistema valida os dados da conta de destino
        Então o sistema apresenta uma mensagem de "Conta de destino inválida"
        E o sistema retorna para a tela inicial

    Cenário: Transferir um valor não numérico para uma conta válida
        Dado que o usuário está na tela de transferência
        Então o sistema deve apresentar o campo para informar o valor a ser transferido
        Quando o usuário informar o valor a ser transferido
        E o usuário clicar no botão de confirmar
        Então o sistema valida o valor informado
        E o sistema apresenta uma mensagem de "Valor inválido"
        E o sistema retorna para a tela inicial

    Cenário: Transferir um valor menor ou igual a zero para uma conta válida
        Dado que o usuário está na tela de transferência
        Então o sistema deve apresentar o campo para informar o valor a ser transferido
        Quando o usuário informar o valor a ser transferido
        E o usuário clicar no botão de confirmar
        Então o sistema valida o valor informado
        E o sistema apresenta uma mensagem de "Valor deve ser maior que 0"
        E o sistema retorna para a tela inicial

    Cenário: Transferir um valor acima do saldo para uma conta válida
        Dado que o usuário está na tela de transferência
        Então o sistema deve apresentar o campo para informar o valor a ser transferido
        Quando o usuário informar o valor a ser transferido
        E o usuário clicar no botão de confirmar
        Então o sistema valida o valor informado
        E o sistema apresenta uma mensagem de "Você não possui saldo suficiente para realizar a transação"
        E o sistema retorna para a tela inicial

    Cenário: Transferir um valor não numérico para uma conta inválida
        Dado que o usuário está na tela de transferência
        Então o sistema deve apresentar o campo para informar o valor a ser transferido
        Quando o usuário informar o valor a ser transferido
        E o usuário clicar no botão de confirmar
        Então o sistema valida o valor informado
        E o sistema apresenta uma mensagem de "Valor inválido"
        E o sistema retorna para a tela inicial

    Cenário: Transferir um valor válido para uma conta inválida
        Dado que o usuário está na tela de transferência
        Então o sistema deve apresentar o campo para informar o valor a ser transferido
        Quando o usuário informar o valor a ser transferido
        E o usuário clicar no botão de confirmar
        Então o sistema valida o valor informado
        E o sistema deve apresentar a tela para digitar os dados da conta de destino
        Quando o usuário informar os dados da conta de destino
        E o usuário clicar no botão de confirmar
        Então o sistema valida os dados da conta de destino
        Então o sistema apresenta uma mensagem de "Conta de destino não encontrada, valide os dados informados e tente novamente"
        E o sistema retorna para a tela inicial

    Cenário: Transferir um valor acima do saldo para uma conta inválida
        Dado que o usuário está na tela de transferência
        Então o sistema deve apresentar o campo para informar o valor a ser transferido
        Quando o usuário informar o valor a ser transferido
        E o usuário clicar no botão de confirmar
        Então o sistema valida o valor informado
        E o sistema apresenta uma mensagem de "Você não possui saldo suficiente para realizar a transação"
        E o sistema retorna para a tela inicial

    Cenário: Transferir um valor válido para uma conta válida fora do horário permitido
        Dado que o usuário está na tela de transferência
        Então o sistema deve apresentar o campo para informar o valor a ser transferido
        Quando o usuário informar o valor a ser transferido
        E o usuário clicar no botão de confirmar
        Então o sistema valida o valor informado
        E o sistema deve apresentar a tela para digitar os dados da conta de destino
        Quando o usuário informar os dados da conta de destino
        E o usuário clicar no botão de confirmar
        Então o sistema valida os dados da conta de destino
        E o sistema valida o horario da transferencia
        Então o sistema apresenta uma mensagem de "Transferência não permitida fora do horário de 06:00 às 22:00"
        E o sistema retorna para a tela inicial