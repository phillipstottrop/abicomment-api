class Poll < ApplicationRecord
  belongs_to :user
  has_many :options, dependent: :destroy
  validates :topic, presence: true
end