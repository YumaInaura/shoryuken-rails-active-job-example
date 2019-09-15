class CreateJob < ActiveRecord::Migration[6.0]
  def change
    create_table :jobs do |t|
      t.string :message
      t.timestamps
    end
  end
end
