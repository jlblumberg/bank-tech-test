require_relative '../../lib/account.rb'
require_relative '../../lib/transaction.rb'
require_relative '../../lib/statement.rb'

account = Account.new
p "New account created: #{account}"
p '---------------------'
p '---------------------'
p "Running a deposit of 10 and a withdrawal of 5"
account.deposit(10)
account.withdraw(5)
p "These transactions, logged: #{account.transactions}"
p '---------------------'
p '---------------------'
statement = Statement.new(account)
p "New statement initiatied: #{statement}"
p "This statement, logged:"
statement.print_statement
