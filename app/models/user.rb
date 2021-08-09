class User < ActiveRecord::Base
    has_many :mytodos
    has_many :mywins
    has_many :mynotes
end