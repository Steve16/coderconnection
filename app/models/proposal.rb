class Proposal < ActiveRecord::Base
  belongs_to :user, :dependent => :destroy
  attr_accessible :title, :description, :user_id

  acts_as_taggable 
  
  attr_accessible :avatar
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  
  #validates :user_id, presence: true
  
  default_scope order: 'proposals.created_at DESC'


  def self.all_technical_skills
  %w(Web_development iOS_development Android_Development Facebook_App_Development 3-D_Web_Animation)
  end

  def self.all_proficient_languages_and_frameworks
  %w(C C# C++ ObjectiveC Java Python Ruby_on_rails Django Scheme HTML5 MATLAB Javascript JQuery Ajax)
  end

end
