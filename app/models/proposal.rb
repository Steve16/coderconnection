class Proposal < ActiveRecord::Base
  belongs_to :user, :dependent => :destroy
  attr_accessible :title, :description, :user_id

  def self.all_technical_skills
  %w(Web_development iOS_development Android_Development Facebook_App_Development 3-D_Web_Animation)
  end

  def self.all_proficient_languages_and_frameworks
  %w(C C# C++ ObjectiveC Java Python Ruby_on_rails Django Scheme HTML5 MATLAB Javascript JQuery Ajax)
  end
  
  def skills_checked=(skills_checked)
   skilss_checked.reject(&:blank?)
  end

  def lang_and_fram_checked=(lang_and_frame_checked)
   lang_and_frame_checked.reject(&:blank?)
  end

end
