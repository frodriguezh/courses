# == Schema Information
#
# Table name: families
#
#  id         :integer          not null, primary key
#  nombre     :string
#  app        :string
#  apm        :string
#  iquique    :boolean
#  santiago   :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require "test_helper"

class FamilyTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
