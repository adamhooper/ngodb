module CsosHelper
  def render_table_subtitle(s)
    render :partial => 'table_subtitle', :locals => { :subtitle => s }
  end

  def table_subsection(s, &block)
    concat(render_table_subtitle(s), block.binding)
    concat("<tbody>", block.binding)
    yield
    concat("</tbody>", block.binding)
  end

  def table_detail_row(heading, value=nil, &block)
    before = %(<tr><th>#{h(heading)}</th><td><div class="spacer">)
    after = %(</div></td></tr>)
    if block_given?
      concat(before, block.binding)
      yield
      concat(after, block.binding)
    else
      "#{before}#{h(value)}#{after}"
    end
  end

  def table_detail_row_unescaped(heading, value)
    %(<tr><th>#{h(heading)}</th><td><div class="spacer">#{value}</div></td></tr>)
  end

  # Renders a subtitle for use in a table.
  def render_form_table_subtitle(s)
    render :partial => 'form_table_subtitle', :locals => { :subtitle => s }
  end

  def form_table_subsection(s, &block)
    concat(render_form_table_subtitle(s), block.binding)
    concat("<tbody>", block.binding)
    yield
    concat("</tbody>", block.binding)
  end

  def render_form_row(f, title, field=nil, field_sw=nil, &block)
    if block_given?
      render(:layout => 'form_row_layout', :locals => { :f => f, :title => title, :field => field }, &block)
    elsif field_sw
      render :partial => 'form_row_bilingual', :locals => { :f => f, :title => title, :field => field, :field_sw => field_sw }
    else
      render :partial => 'form_row', :locals => { :f => f, :title => title, :field => field }
    end
  end

  def render_form_row_textareas(f, title, field, field_sw)
    render :partial => 'form_row_bilingual_textareas', :locals => { :f => f, :title => title, :field => field, :field_sw => field_sw }
  end

  def checkbox_array(f, object, attribute_method, all_values)
    returning('') do |s|
      s << "<ul>"
      all_values.sort_by(&:localized_name).each do |value|
        s << "<li><label>"
        s << check_box_tag("#{f.object_name}[#{attribute_method}][]", value.id, object.send(attribute_method).include?(value.id), :id => "#{f.object_name}_#{attribute_method}_#{value.id}")
        s << ' '
        s << h(value.localized_name)
        s << "</label></li>"
      end
      s << "</ul>"
    end
  end

  def add_past_achievement_link(name)
    link_to_function(name) do |page|
      page.insert_html :bottom, :past_achievement_list, :partial => 'past_achievement', :object => PastAchievement.new
    end
  end
end
