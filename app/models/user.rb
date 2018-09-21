class User < ActiveRecord::Base
  has_many :tweets
  validates_presence_of :username, :password, :email
  has_secure_password
  
  def slug
    name.downcase.gsub(" ","-")
  end

  def self.find_by_slug(slug)
    User.all.select do |user|
      user.slug == slug
    end[0]
  end
end
