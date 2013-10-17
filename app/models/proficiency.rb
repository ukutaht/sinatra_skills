class Proficiency < ActiveRecord::Base
  belongs_to :user
  belongs_to :skill

  validates :years_of_experience, presence: true, numericality: {only_integer: true}
  validates :formal, inclusion: { in: [true, false] }
end
