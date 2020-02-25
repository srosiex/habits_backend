class Habit < ApplicationRecord
    has_many :notes, dependent: :destroy
    # validates_number_of_days :goal, :in => 1..7

end
