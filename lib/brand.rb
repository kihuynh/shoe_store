class Brand < ActiveRecord::Base
  has_and_belongs_to_many(:stores)
  # validates(:name, :presence => true)
  before_save(:upcase_name)

  private
  def upcase_name
    self.name = self.name.titleize
  end
end
