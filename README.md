# Bank Tech Test # 

A program that can deposit money into and withdraw money from a bank account as well as print statements detailing the transaction history.

# User Stories: #

1. As a customer  
   So that I can have money to spend  
   I want to credit money to my account

2. As a customer  
   So that I can buy things  
   I want to debit money from my account  
  
3. As a customer  
   So that I can see how much money I have  
   I want to see my account balance  

4. As a customer  
   So that I can see my account history  
   I want to print a statement



# Configuration #

`git clone git@github.com:ofrost617/Bank.git`

`bundle install`

# Usage #

`pry or irb`
`require_relative './lib/account.rb'

create new account:
`account = Account.new`
`bank = Bank.new `

withdraw money:
`bank.withdraw(5)`
`=> credits 5 from account`
`=> balance reduces by 5`

deposit money:

withdraw money:
`bank.withdraw(5)`
`=> credits 5 from account`



# File list: #

lib
  - account.rb
  - statement.rb

spec
  - account_spec.rb
  - credit_spec.rb
  - debit_spec.rb
  - spec_helper.rb
  - statement_spec.rb

.rubocop.yml

Gemfile

Rakefile

README.md




