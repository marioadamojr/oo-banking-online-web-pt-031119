class BankAccount
  attr_accessor :balance, :status
  attr_reader :name

  def initialize(name)
    @name=name
    @balance = 1000
    @status = "open"
  end

  def deposit(deposited_money)
    @balance += deposited_money
  end

  def display_balance
    @balance
  end
end
