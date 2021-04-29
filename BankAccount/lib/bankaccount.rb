class BankAccount
  def initialize
    @balance = 0
  end

  def deposit(money)
    @balance += money
  end

  def withdraw(money)
    fail "No funds available" if empty?
    @balance -= money
  end

  def showbalance
    "Current Balance Is: £#{@balance}"
  end

  private

  def empty?
    @balance == 0
  end
end
