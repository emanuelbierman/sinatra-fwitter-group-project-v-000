class User < ActiveRecord::Base
  has_many :tweets

  def slug
  end

  def authenticate
  end
end
