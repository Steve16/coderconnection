class CreateProposals < ActiveRecord::Migration
  def change
    create_table :proposals do |t|
      t.string :proposals
      t.text :description
      t.references :user

      t.timestamps
    end
    add_index :proposals, :user_id
  end
end
