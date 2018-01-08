class SubjectInstance < ApplicationRecord
  has_many :teachers
  has_many :locations
  has_many :lesson_times
  has_one :subject

  belongs_to :user
end
