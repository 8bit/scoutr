module ApplicationHelper
  
  def render_popup(before,id ,button ,header, body)
  render :partial => 'shared/popover', 
         :locals => { :popover_id => id, 
                      :header => header.html_safe,
                      :body => body, 
                      :button => button,
                      :before => before}
  end  
end
