ActiveAdmin.register Lead do
  scope :all, :default => true
  scope :unmailed
  scope :unsubscribed
  
  index do
      column :name
      column :email
      column :url
      column :ref_url
      default_actions
    end
  
  collection_action :email, :method => :get do
      collection.each {|c| c.send_pitch }     
      redirect_to :action => :index
  end
  
  action_item do
      link_to('Email All', email_admin_leads_url(:scope => params[:scope]))
  end
  
  
  
end
