class CreatePayload < ActiveRecord::Migration[5.2]
  def change
    create_table :payloads do |t|
      t.integer :issue_number
      t.string :data
    end
  end
end
