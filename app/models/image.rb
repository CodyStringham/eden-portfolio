class Image < ActiveRecord::Base

  belongs_to :project

  has_attached_file :file, styles: {
    slider: "1280x400#",
    grid: "450x280",
    thumb: "200x200#" },
    default_url: 'missing.png'
  validates_attachment_content_type :file, content_type: /\Aimage\/.*\Z/


  private

  def create_default_url
     ActionController::Base.helpers.asset_path("/missing/:style.png", :digest => false)
  end

end
