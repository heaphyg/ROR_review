class Tagging < ActiveRecord::Base
  belongs_to :Tag
  belongs_to :post
end
