#TDD

#Utilizado para referenciar a classe conta para o método.
require_relative 'conta'

describe('Saque no caixa eletronico') do
    it('Deve realizar um saque ')do 
        cliente = Conta.new(1000)
        cliente.saca(500)
    #puts cliente.saldo # => 500
    #puts cliente.mensagem_de_saida # => Saque realizado com sucesso.

        expect(cliente.saldo).to eql 500
        expect(cliente.mensagem_de_saida).to eql 'Saque realizado com sucesso!'
    end


    it('Quando o valor do saque é maior que o saldo disponível') do
        cliente = Conta.new(100)
        cliente.saca(200)

        expect(cliente.saldo).to eql 100
        expect(cliente.mensagem_de_saida).to eql 'Saldo insuficiente.'
    end

    it('Quando o valor do saque é superior ao máximo permitido') do
        cliente = Conta.new(1000)
        cliente.saca(701)

        expect(cliente.saldo).to eql 1000
        expect(cliente.mensagem_de_saida).to eql 'O valor máximo por transação é de 700 reais.'
    end

end
