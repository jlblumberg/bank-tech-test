# Bank Tech Test
### [Makers Academy](http://www.makersacademy.com) - Week 10 (tech tests)

[Outline](#Outline) | [Specifications](#Specifications) | [Planning](#Planning) | [Installation Instructions](#Installation_Instructions) | [Tech stack](#Tech_stack)

## <a name="Outline">Outline</a>

Work alone to build a bank app to the specifications below.

## <a name="Specifications">Specifications</a>

### Requirements:
- Should be able to interact with the code via a REPL like IRB. (Don't need to implement a command line interface that takes input from STDIN).
- Should have deposits and withdrawals.
- Should have account statement (date, amount, balance) printing.
- Data can be kept in memory (it doesn't need to be stored to a database).

### Acceptance Criteria:
**Given** a client makes a deposit of 1000 on 10-01-2012  
**And** a deposit of 2000 on 13-01-2012  
**And** a withdrawal of 500 on 14-01-2012  
**When** she prints her bank statement  
**Then** she would see

```
date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00
```

## <a name="Planning">Planning</a>

### Class Diagram

Objects  | Attributes | Methods
--- | --- | ---
Account  | balance, transactions | deposit(amount), withdraw(amount), add_transaction(transaction)
Transaction | date, type, amount | details
Statement | transactions | format_statement, return_statement

### Approach

The solution code is test driven, and structured into the three classes Account, Transaction, and Statement, described above. The reason for this is to seperate the concerns of 1) maintaining a balance and transaction ledger, 2) handling transaction formatting, and 3) formatting/printing out the statement, respectively.

## <a name="Installation_Instructions">Installation Instructions</a>

### Prerequisite setup:
- Clone this repo to your local machine and cd into it
- Run the command `gem install bundle` (if you don't have bundler already) and then `bundle install`

### Running the app
- Launch IRB with the command `irb`, and require the statement and account ruby files
- Make a new account
- Make a new statement, passing in your account
- Make some deposits and withdrawals
- Puts out the result of the 'return_statement' method to see your statement. 

Full example:

```
$ irb -r ./lib/account.rb -r ./lib/statement.rb -r ./lib/transaction.rb
2.6.3 :001 > account = Account.new
 => #<Account:0x00007fe7f2a68d08 @balance=0, @transactions=[]> 
2.6.3 :002 > statement = Statement.new(account)
 => #<Statement:0x00007fe7f287a848 @transactions=[]> 
2.6.3 :003 > account.deposit(10)
 => ["24/03/2020", "10.00", "", "10.00"] 
2.6.3 :004 > account.withdraw(5)
 => ["24/03/2020", "10.00", "", "10.00", "24/03/2020", "", "5.00", "5.00"] 
2.6.3 :005 > puts statement.print_statement
date || credit || debit || balance
24/03/2020 || || 5.00 || 5.00
24/03/2020 || 10.00 || || 10.00
 => nil
```

### Testing
- Tests can be run using Rspec. Run the command `rspec`

## <a name="Tech_stack">Tech stack</a>

Back-end:
- Ruby

Testing:
- RSpec
- SimpleCov

Linting:
- Rubocop
