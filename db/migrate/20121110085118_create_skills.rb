class CreateSkills < ActiveRecord::Migration
  def change
    create_table :skills do |t|
      
      t.integer :user_id
      t.integer :proposal_id
      
      t.integer :c
      t.integer :java
      t.integer :objective_c
      t.integer :c_plus_plus
      t.integer :c_sharp
      t.integer :python
      t.integer :ruby_on_rails
      t.integer :ruby
      t.integer :perl
      t.integer :delphi
      t.integer :matlab
      
      t.integer :html
      t.integer :css
      t.integer :javascript
      t.integer :php
      
      t.timestamps
    end
  end
end
