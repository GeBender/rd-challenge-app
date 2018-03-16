class AuthenticatePartner
  prepend SimpleCommand 

  def initialize(email, password) 
    @email = email 
    @password = password 
  end 

  def call 
    JsonWebToken.encode(partner_id: partner.id) if partner 
  end 

  private 

    attr_accessor :email, :password 

    def partner 
      partner = Partner.find_by_email(email) 
      return partner if partner && partner.authenticate(password) 

      errors.add :partner_authentication, 'invalid credentials' 
      nil 
    end 
end