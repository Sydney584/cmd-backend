class User < ActiveRecord::Base
    has_many :mytodos
end