require 'rails_helper'

RSpec.describe Proceeding, type: :model do
  subject do
    @user = User.create(name: 'John')
    Proceeding.new(user: @user, name: 'Apples', amount: '12.00')
  end

  it 'has valid attributes' do
    expect(subject).to be_valid
  end

  it 'cannot be without a name' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'cannot be without a user' do
    subject.user = nil
    expect(subject).to_not be_valid
  end

  it 'cannot be without an amount' do
    subject.amount = nil
    expect(subject).to_not be_valid
  end
end
