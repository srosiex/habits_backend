class Note < ApplicationRecord
  belongs_to :habit, dependent: :destroy
end
