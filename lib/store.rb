class Store < ActiveRecord::Base
  has_and_belongs_to_many(:brands)
  validates(:name, {:presence => true, :length => {:maximum => 100}})
  before_save(:upcase_name)

  private
    def upcase_name
      self.name = self.name.titleize
    end

    # def duplicate_check
    # end
end
