class AddTopicsToPosts < ActiveRecord::Migration[6.0]
  def change
    add_reference :posts, :topic, foreign_key: true
  end
end
