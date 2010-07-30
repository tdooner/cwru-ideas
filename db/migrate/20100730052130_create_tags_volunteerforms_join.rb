class CreateTagsVolunteerformsJoin < ActiveRecord::Migration
  def self.up
  	create_table :tags_volunteerforms, :id => false do |t|
		t.column :tag_id, :integer
		t.column :volunteerform_id, :integer
	end
  end

  def self.down
	  drop_table :tags_volunteerforms
  end
end
