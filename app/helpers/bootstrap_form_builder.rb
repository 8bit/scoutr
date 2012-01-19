class BootstrapFormBuilder < ActionView::Helpers::FormBuilder

  def text_field(method, options={})
    t = @template
    t.content_tag(:div, :class => "clearfix#{' error' unless @object.errors[method].blank?}") {
      t.concat(t.label_tag method)
      t.concat(t.content_tag(:div, :class => options[:class].to_s + " input#{' error' unless @object.errors[method].blank?}") {
        t.concat(super method)
        if @object.errors[method].present?
          t.concat(t.content_tag(:span, options[:help_text], :class => 'help-inline'))
        end
      })
    }
  end
  
  def date_select(method, options={})
      t = @template
      t.content_tag(:div, :class => "clearfix#{' error' unless @object.errors[method].blank?}") {
        t.concat(t.label_tag method)
        t.concat(t.content_tag(:div, :class => options[:class].to_s + " input#{' error' unless @object.errors[method].blank?}") {
          t.concat(super method(options))
          if @object.errors[method].present?
            t.concat(t.content_tag(:span, options[:help_text], :class => 'help-inline'))
          end
        })
      }
    end
end