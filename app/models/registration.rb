class Registration < ApplicationRecord
  HOW_HEARD_OPTIONS = [
    'Newsletter',
    'Blog Post',
    'Twitter',
    'Web Search',
    'Friend/Coworker',
    'Other'
  ]

  belongs_to :event

  validates :name, presence: true
  validates :email, format: { with: /\S+@\S+/ }
  validates :how_heard, inclusion: { in: HOW_HEARD_OPTIONS }
  
end
