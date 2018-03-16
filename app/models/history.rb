class History < ApplicationRecord
	belongs_to :contact

  default_scope { order(created_at: :desc) }
end
