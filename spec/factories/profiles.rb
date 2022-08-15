# == Schema Information
#
# Table name: profiles
#
#  id         :bigint           not null, primary key
#  comment    :text(65535)
#  nickname   :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  rank_id    :bigint
#  user_id    :bigint
#
# Indexes
#
#  index_profiles_on_rank_id  (rank_id)
#  index_profiles_on_user_id  (user_id)
#
FactoryBot.define do
  factory :profile do
    nickname { "MyString" }
    comment { "MyText" }
  end
end
