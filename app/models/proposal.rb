class Proposal < ActiveRecord::Base
  belongs_to :user, :dependent => :destroy
  attr_accessible :title, :description, :user_id

  def self.all_technical_skills
  %w(Web_development iOS_development Android_Development Facebook_App_Development 3-D_Web_Animation)
  end

  def self.proficient_languages_and_frameworks
  %w(C C# C++ Java Python Ruby_on_rails Django Scheme HTML5 MATLAB Javascript JQuery Ajax)
  end
  

end
