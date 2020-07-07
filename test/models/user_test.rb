require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
    @user = User.new(name: "Yeet", email: "yot")
  end
  context 'validations' do
    should validate_presence_of(:name)
    should validate_presence_of(:email)
    should validate_uniqueness_of(:email)
    should validate_length_of(:name).is_at_most(50)
  end

  context 'associations' do
    should have_many(:posts)
    should have_many(:comments)
  end
end
