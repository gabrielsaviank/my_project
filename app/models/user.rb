class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :experiences, inverse_of: :user, dependent: :destroy

  accepts_nested_attributes_for :experiences, reject_if: :all_blank, allow_destroy: true

  before_save do
    self.tipo.gsub!(/[\[\]\"]/, "") if attribute_present?("tipo")
  end
end
