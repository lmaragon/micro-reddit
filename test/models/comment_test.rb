require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  context 'validations' do
    should validate_presence_of(:content)
  end
end
