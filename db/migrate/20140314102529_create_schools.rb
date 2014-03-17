# encoding: utf-8
class CreateSchools < ActiveRecord::Migration
  def change
    create_table :schools do |t|
      t.string   :name
      t.string   :category
      t.string   :state
      t.string   :city
      t.string   :cep
      t.string   :tel
      t.string   :number_students
      t.string   :headmaster_name
      t.string   :headmaster_email
      t.string   :technical_manager_name
      t.string   :technical_manager_email
      t.string   :coordinator_name
      t.string   :coordinator_email
      t.string   :contact_name
      t.string   :contact_email
      t.string   :stage_first
      t.string   :stage_second
      t.string   :stage_report
      t.string   :contact_tel
      t.string   :charge
      t.string   :token
      t.string   :namespace
      t.string   :link
      t.datetime :confirmed_at

      t.timestamps
    end

    add_index :schools, :token

  end
end
