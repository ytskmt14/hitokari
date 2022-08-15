# == Schema Information
#
# Table name: ranks
#
#  id         :bigint           not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
FactoryBot.define do
  factory :rank do
    name { "MyString" }
  end
end
