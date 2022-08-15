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
require 'rails_helper'

RSpec.describe Profile, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
