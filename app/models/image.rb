class Image < ActiveRecord::Base

  belongs_to :project

  has_attached_file :file, styles: {
    slider: "1200x400#",
    gallery: "600x371#",
    thumb: "50x50#" },
    default_url: 'missing.png'
  validates_attachment_content_type :file, content_type: /\Aimage\/.*\Z/


  private

  def create_default_url
     ActionController::Base.helpers.asset_path("/missing/:style.png", :digest => false)
  end

end
