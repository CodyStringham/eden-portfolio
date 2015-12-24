class Project < ActiveRecord::Base

  extend FriendlyId
  friendly_id :name, use: :slugged

  has_many :images, dependent: :destroy
  accepts_nested_attributes_for :images, reject_if: :all_blank, allow_destroy: true

end
