class User < ApplicationRecord
  has_many :experiences, inverse_of: :user, dependent: :destroy

  accepts_nested_attributes_for :experiences, reject_if: :all_blank, allow_destroy: true

  before_save do
    self.tipo.gsub!(/[\[\]\"]/, "") if attribute_present?("tipo")
  end
end
