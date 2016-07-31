class User < ActiveRecord::Base

  has_many :activities

  def slug
    self.username.parameterize
  end

  def self.find_by_slug(slug)
    self.all.find {|instance| instance.slug == slug}
  end
end
