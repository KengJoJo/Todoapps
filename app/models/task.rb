class Task < ApplicationRecord
    validates :title, presence: true
    enum status: { incomplete: 'incomplete', complete: 'complete' }
  end
  