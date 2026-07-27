class Tagging < ApplicationRecord
  belongs_to :micropost
  belongs_to :tag

  validates :tag_id, uniqueness: { scope: :micropost_id }
end
