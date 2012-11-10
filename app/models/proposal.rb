class Proposal < ActiveRecord::Base
  belongs_to :user, :dependent => :destroy
  attr_accessible :title, :description, :user_id
  
  #validates :user_id, presence: true
  
  default_scope order: 'proposals.created_at DESC'
  
end
