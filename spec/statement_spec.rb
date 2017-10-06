require_relative '../lib/statement.rb'

describe Statement do
  subject { described_class.new }

  it 'has a header' do
    expect(Statement::HEADER).to eq("date || credit || debit || balance\n")
  end

  it 'prints a statement' do
    date_now = Time.now.strftime('%d/%m/%Y')
    t_l = TransactionLog.new
    statement = Statement.new(t_l)
    t_l.add_transaction(:debit, 5, 5)
    expect { statement.print_statement }.to output("date || credit || debit || balance\n#{date_now} || || 5.00 || 5.00\n").to_stdout
  end
  
  
end
