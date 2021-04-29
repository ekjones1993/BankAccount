require './BankAccount/lib/bankaccount.rb'

describe BankAccount do

  describe '#deposit' do
    it 'adds money to the balance' do
      #Arrange
      bank_account = BankAccount.new
      #Act
      bank_account.deposit(10)
      #Assert
      expect(bank_account.showbalance).to eq("Current Balance Is: £10")
    end
  end

  describe '#withdraw' do
    it 'raises an error when no funds available' do
      #Arrange
      bank_account = BankAccount.new
      #Act & #Assert
      expect{bank_account.withdraw(10)}.to raise_error "No funds available"
    end

    it 'subtracts money from the balance' do
      #Arrange
      bank_account = BankAccount.new
      #Act
      bank_account.deposit(10)
      bank_account.withdraw(7)
      #Assert
      expect(bank_account.showbalance).to eq("Current Balance Is: £3")
    end
  end

  describe '#showbalance' do
    it 'shows the accounts current balance' do
      #Arrange
      bank_account = BankAccount.new
      #Act
      bank_account.showbalance
      #Assert
      expect(bank_account.showbalance).to eq("Current Balance Is: £0")
    end
  end
end
