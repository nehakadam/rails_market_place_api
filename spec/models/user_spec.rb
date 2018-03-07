#require 'rails_helper'
require 'spec_helper'

#RSpec.describe User, type: :model do
describe User do
  #pending "add some examples to (or delete) #{__FILE__}"

  before { @user = FactoryBot.build(:user) }

  subject { @user }

  it { should respond_to(:email) }
  it { should respond_to(:password) }
  it { should respond_to(:password_confirmation) }

  it { should be_valid }

end
