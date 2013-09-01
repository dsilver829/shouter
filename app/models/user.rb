class User < ActiveRecord::Base
  has_many :shouts
  default_scope { order "created_at DESC" }
end
