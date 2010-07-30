class CreateVolunteerforms < ActiveRecord::Migration
  def self.up
    create_table :volunteerforms do |t|
      t.column :user_id, :integer
      t.column :position, :string
      t.timestamps
    end
  end

  def self.down
    drop_table :volunteerforms
  end
end
