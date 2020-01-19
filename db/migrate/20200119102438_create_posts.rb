class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :caption

      t.timestamps
    end

    add_reference :posts, :user, foriegn_key: true
  end
end
