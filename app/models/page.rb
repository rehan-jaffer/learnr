class Page < ActiveRecord::Base

  validates :virtual_path, presence: true
  validates :content, presence: true
  validates :title, presence: true

  before_create :slugify_title

  def slugify_title
    if slug.nil?
      self.slug = title.downcase.gsub(/ /, "_").gsub(/[^\w\d]/, "")
    end
  end

end
