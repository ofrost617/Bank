describe Account do
  subject { described_class.new }

  it 'creates a new account of class Account' do
    expect(subject).to be_a(Accout)
  end
  
end
