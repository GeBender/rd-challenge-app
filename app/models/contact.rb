class Contact < ApplicationRecord
	belongs_to :partner
  has_many :histories

  def partner_id=(value)
    decoded = JsonWebToken.decode(value)
    super(decoded[:partner_id])
  end
end
