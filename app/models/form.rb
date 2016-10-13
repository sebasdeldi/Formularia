# == Schema Information
#
# Table name: forms
#
#  id         :integer          not null, primary key
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Form < ActiveRecord::Base
	has_many :questions
	belongs_to :user
end
