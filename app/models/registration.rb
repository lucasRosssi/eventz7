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
  belongs_to :user

  validates :how_heard, inclusion: { in: HOW_HEARD_OPTIONS }
  
end
