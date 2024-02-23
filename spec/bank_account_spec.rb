require 'rspec'
require_relative 'bank_account'

RSpec.describe BankAccount do
    describe "#deposit" do
      it "increases the balance by the deposit amount" do
        account = BankAccount.new
        account.deposit(200)
        expect(account.balance).to eq(200)
      end
    end
  
    describe "#withdraw" do
      it "decreases the balance by the withdrawal amount if funds are available" do
        account = BankAccount.new(250)
        account.withdraw(100)
        expect(account.balance).to eq(150)
      end
  
      it "does not change the balance if insufficient funds" do
        account = BankAccount.new(75)
        account.withdraw(100)
        expect(account.balance).to eq(75)
      end
    end
  
    describe "#balance" do
      it "returns the current balance" do
        account = BankAccount.new(225)
        expect(account.balance).to eq(225)
      end
    end
end
  