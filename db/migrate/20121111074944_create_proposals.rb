class CreateProposals < ActiveRecord::Migration
  def change
    create_table :proposals do |t|
      t.text :title
      t.text :description
      t.references :user

      t.timestamps
    end
    add_index(:proposals, [:user_id, :created_at], unique: true)

  end
end
