class Proposal < ActiveRecord::Base
  belongs_to :user, :dependent => :destroy
  attr_accessible :title, :description, :user_id
end
