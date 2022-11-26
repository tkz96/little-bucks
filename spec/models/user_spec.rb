require 'rails_helper'

RSpec.describe User, type: :model do
  subject { User.new(name: 'John', email: 'jo@gmail.com', password: '123456') }

  it 'has valid attributes' do
    expect(subject).to be_valid
  end

  it 'cannot be without a name' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'cannot be without an email' do
    subject.email = nil
    expect(subject).to_not be_valid
  end

  it 'cannot be without a password' do
    subject.password = nil
    expect(subject).to_not be_valid
  end
end
