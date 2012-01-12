# Load the rails application
require File.expand_path('../application', __FILE__)

ActionView::Base.field_error_proc = Proc.new {|html, instance| html }


# Initialize the rails application
RoundtableReport::Application.initialize!