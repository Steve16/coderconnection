class Skill < ActiveRecord::Base
  
  belongs_to :user
  
  attr_accessible :c, :java, :user_id,:proposal_id, :c, :java, :objective_c, :c_plus_plus, :c_sharp, :python, :ruby_on_rails, :ruby, :perl, :delphi, :matlab, :html, :css, :javascript, :php


end
