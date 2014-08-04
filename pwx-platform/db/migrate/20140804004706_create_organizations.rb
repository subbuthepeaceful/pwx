class CreateOrganizations < ActiveRecord::Migration
  def up
    create_table :organizations do |t|
      t.string :name, :null => false
      t.string :abbreviation
      t.text :description
      t.text :comments
      t.datetime :founded_date
      t.datetime :membership_date
      t.timestamps
    end
  end

  def down
    drop_table :organizations
  end
end
