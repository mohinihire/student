class CreateInfos < ActiveRecord::Migration[6.0]
  def change
    create_table :infos do |t|
    	t.integer "roll"
    	t.string "username"
    	t.string "password"
        t.timestamps
    end
    add_index("infos","roll")
  end
end
