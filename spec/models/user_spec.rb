# == Schema Information
#
# Table name: users
#
#  id                       :bigint           not null, primary key
#  current_sign_in_at       :datetime
#  current_sign_in_ip       :string(255)
#  email                    :string(255)      default(""), not null
#  encrypted_password       :string(255)      default(""), not null
#  first_name(名前（名）)   :string(255)      not null
#  last_name(名前（姓）)    :string(255)      not null
#  last_sign_in_at          :datetime
#  last_sign_in_ip          :string(255)
#  remember_created_at      :datetime
#  reset_password_sent_at   :datetime
#  reset_password_token     :string(255)
#  sign_in_count            :integer          default(0), not null
#  created_at               :datetime         not null
#  updated_at               :datetime         not null
#
# Indexes
#
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#
require 'rails_helper'

RSpec.describe User, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
