class Individual < ActiveRecord::Base
  has_one :party, :as => :iparty

  def name_string
    return "#{self.familyname}, #{self.givenname} (#{self.id_number})"
  end
end
