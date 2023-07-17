class CreateRsvps < ActiveRecord::Migration[7.0]
  def change
    create_table :rsvps do |t|
      t.bigint :attendee_id
      t.bigint :attended_event_id

      t.timestamps
    end
  end
end
