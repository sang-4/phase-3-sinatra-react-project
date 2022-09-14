class User < ActiveRecord::Base
    has_many :saved_Recipes
end