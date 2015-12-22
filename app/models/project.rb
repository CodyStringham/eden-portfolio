class Project < ActiveRecord::Base
  before_save :change_date

  has_attached_file :image, styles: {
    slider: "1200x400#",
    gallery: "600x371#",
    thumb: "150x150#" },
    default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

  def change_date
    # self.date = self.date.to_date
  end
end
