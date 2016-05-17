class Page < ActiveRecord::Base

  validates :virtual_path, presence: true
  validates :content, presence: true
  validates :title, presence: true

end
