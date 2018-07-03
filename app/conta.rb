class Conta
    attr_accessor :saldo, :mensagem_de_saida

    def initialize(saldo)
        @saldo = saldo 
    end

    #Saque
    def saca(valor)
        if valor > @saldo
            @mensagem_de_saida = 'Saldo insuficiente.'
        elsif
            valor > 700 #valor estipulado pela regra de negocio
            @mensagem_de_saida = 'O valor máximo por transação é de 700 reais.'
        else
            @saldo -= valor #Reduz do saldo do cliente
            @mensagem_de_saida = 'Saque realizado com sucesso!'
        end
    end
end
