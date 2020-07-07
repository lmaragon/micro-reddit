require 'test_helper'

class PostTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
    @post = Post.new
  end
  context 'validations' do
    should validate_presence_of(:title)
    should validate_presence_of(:content)
  end

  context 'associations' do
    should belong_to(:user)
    should have_many(:comments)
  end
end
