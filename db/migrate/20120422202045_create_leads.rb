class CreateLeads < ActiveRecord::Migration
  def change
    create_table :leads do |t|
      t.string :email
      t.string :company_name
      t.string :contact_name
      t.string :url
      t.string :phone
      t.string :ref_url
      t.timestamps
    end
  end
end
