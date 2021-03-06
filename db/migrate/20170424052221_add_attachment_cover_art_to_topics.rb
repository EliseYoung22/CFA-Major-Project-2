class AddAttachmentCoverArtToTopics < ActiveRecord::Migration
  def self.up
    change_table :topics do |t|
      t.attachment :cover_art
    end
  end

  def self.down
    remove_attachment :topics, :cover_art
  end
end
