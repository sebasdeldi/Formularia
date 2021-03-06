# == Schema Information
#
# Table name: forms
#
#  id         :integer          not null, primary key
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#

class Form < ActiveRecord::Base
	has_many :questions, dependent: :destroy
	belongs_to :user
	accepts_nested_attributes_for :questions, :reject_if => lambda { |a| a[:body].blank? }
end

