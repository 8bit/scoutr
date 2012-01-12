module ApplicationHelper
  def subdomain_name
    unless name = { 'oa' => 'OA', 'commissioner' => "Commissioner"}[request.subdomain]
      name = 'None'
    end
    name
  end
  
  def render_popup(before,id ,button ,header, body)
  render :partial => 'shared/popover', 
         :locals => { :popover_id => id, 
                      :header => header.html_safe,
                      :body => body, 
                      :button => button,
                      :before => before}
  end  
end
