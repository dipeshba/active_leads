ActiveAdmin::Dashboards.build do

  # Define your dashboard sections here. Each block will be
  # rendered on the dashboard in the context of the view. So just
  # return the content which you would like to display.
  
  # == Simple Dashboard Section
  # Here is an example of a simple dashboard section
  #
  #   section "Recent Posts" do
  #     ul do
  #       Post.recent(5).collect do |post|
  #         li link_to(post.title, admin_post_path(post))
  #       end
  #     end
  #   end
  
  # == Render Partial Section
  # The block is rendered within the context of the view, so you can
  # easily render a partial rather than build content in ruby.
  #
  #   section "Recent Posts" do
  #     div do
  #       render 'recent_posts' # => this will render /app/views/admin/dashboard/_recent_posts.html.erb
  #     end
  #   end
  
  # == Section Ordering
  # The dashboard sections are ordered by a given priority from top left to
  # bottom right. The default priority is 10. By giving a section numerically lower
  # priority it will be sorted higher. For example:
  #
  #   section "Recent Posts", :priority => 10
  #   section "Recent User", :priority => 1
  #
  # Will render the "Recent Users" then the "Recent Posts" sections on the dashboard.
  
  # == Conditionally Display
  # Provide a method name or Proc object to conditionally render a section at run time.
  #
  # section "Membership Summary", :if => :memberships_enabled?
  # section "Membership Summary", :if => Proc.new { current_admin_user.account.memberships.any? }
  
  section "Total Leads", :priority => 3 do
      # data_table = GoogleVisualr::DataTable.new
      #       data_table.new_column('string', 'Months' )
      #       data_table.new_column('number', 'Leads')
      # 
      #       # Add Rows and Values
      #       data_table.add_rows([
      #         ['Jan', Leads.where :created_on => { "MONTH(#{Date.today.change})" }  ],
      #         ['Feb', 1170],
      #         ['Mar', 660],
      #         ['Apr', 1030],
      #         ['May', 1030],
      #         ['Jun', 1030],
      #         ['Jul', 1030],
      #         ['Aug', 1030],
      #         ['Sep', 1030],
      #         ['Oct', 1030],
      #         ['Nov', 1030],
      #         ['Dec', 1030]
      #       ])
      #       
      #       option = { width: 400, height: 240, title: 'Company Performance' }
      #       @chart = GoogleVisualr::Interactive::barChart.new(data_table, option)
      #       
      #       div :id => 'chart' do 
      #       end
      #       
      #       div do
      #         render_chart(@chart, 'chart')
      #       end
      
  end

  

end
