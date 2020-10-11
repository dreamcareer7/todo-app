# frozen_string_literal: true

class Task < ActiveRecord::Base
  audited

  belongs_to :user
  validates :name, presence: true
  scope :completed, ->{where(completed: true)}
  scope :incompleted, ->{where(completed: false)}

end
