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
  
  def gravatar_for user, options = {}
      email = user.email
      options = {:alt => 'avatar', :class => 'avatar', :size => 80}.merge! options
      id = Digest::MD5::hexdigest email.strip.downcase
      url = 'http://www.gravatar.com/avatar/' + id + '.jpg?s=' + options[:size].to_s
      options.delete :size
      image_tag url, options
  end 
end
