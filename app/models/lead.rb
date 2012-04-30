class Lead < ActiveRecord::Base
  validates :company_name, :email, :url, :ref_url, :presence => true
  validates :email, :uniqueness => true
  
  scope :unmailed, where(:emailed_on => nil)
   scope :unsubscribed, where(:unsubscribe => true)

  def send_pitch
    request = PostageApp::Request.new(:send_message, {'recipients'  => self.email, 'template' => 'sample_child_template', "variables" => { "name" => "#{self.name}" }})
    response = request.send
    self.update_attributes :emailed_on => Time.now
  end

  def name
    self.contact_name || self.company_name
  end
  
end
