class Contact < ApplicationRecord
	belongs_to :partner
  has_many :histories

  default_scope { order(updated_at: :desc) }

  def partner_id=(value)
    decoded = JsonWebToken.decode(value)
    super(decoded[:partner_id])
  end
end
