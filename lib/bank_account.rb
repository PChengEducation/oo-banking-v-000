class BankAccount

attr_accessor :balance, :status
attr_reader :name

def initialize(name)
@name = name
@balance = 1000
@status = "open"
end

def deposit(money)
  @balance += money
end

def display_balance
   puts "Your balance is $#{self.balance}."
end

end #end of the BankAccount class
