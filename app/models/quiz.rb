class Quiz < ActiveRecord::Base
  has_attached_file :photo, :styles => { :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/
  validates :name, :presence => true
  validates :ingredients, :presence => true
  validates :preparations, :presence => true
end
