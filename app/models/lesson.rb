class Lesson < ApplicationRecord

  belongs_to :admin
  belongs_to :language
  has_many :comments

end

