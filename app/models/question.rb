# == Schema Information
#
# Table name: questions
#
#  id         :integer          not null, primary key
#  body       :string
#  form_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Question < ActiveRecord::Base
  belongs_to :form
  has_many :answers
  accepts_nested_attributes_for :answers, :allow_destroy => true, :reject_if => lambda { |a| a[:body].blank? }
end
