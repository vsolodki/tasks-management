class CreateTagAssociations < ActiveRecord::Migration[5.1]
  def change
    create_table :tag_associations do |t|

      t.timestamps
    end
  end
end
