class Tag < ApplicationRecord
  before_validation :normalize_name

  validates :name, presence: true, uniqueness: { case_sensitive: false }
  validates :name, format: {
                    with: /\A[a-z0-9]+\z/i,
                    message: "moi'ay contain only letters, numbers and underscores"
  }
  has_many :taggings, dependent: :destroy 
  has_many :microposts, through: :taggings

  validates :name, presence: true, uniqueness: true

  def display_name
    "##{name}"
  end

  def to_param
    name
  end

  private 

  def normalize_name
    return if self.name.blank?

   self.name = self.name.strip.delete_prefix("#").downcase
  end
end
