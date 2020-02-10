class Experience < ApplicationRecord
  belongs_to :user
  before_save do
    self.tipo.gsub!(/[\[\]\"]/, "") if attribute_present?("tipo")
  end
end
