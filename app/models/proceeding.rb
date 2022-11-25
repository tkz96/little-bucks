class Proceeding < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :groups

  attr :group_id

  validates :name, :amount, presence: true
end
