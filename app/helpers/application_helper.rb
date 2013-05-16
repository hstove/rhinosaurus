module ApplicationHelper
  def form_element form, name, element, label_name=nil, opts={}
    label_name ||= name.to_s.humanize
    if opts.class == Hash
      if opts[:class]
        unless opts[:class].include? "input-"
          opts[:class] += " input-xxlarge"
        end
      else
        opts[:class] = "input-xxlarge"
      end
      if element == :text_area
        if !opts[:rows]
          opts.merge!(rows: 10)
        end
      end
    end
    html = '<div class="field control-group">'
    if form.nil?
      html << send(:label, name, label_name, class: 'control-label')
    else
      html << form.send(:label, name, label_name, class: 'control-label')
    end
    html << '<div class="controls">'
    if form.nil?
      html << send(element.to_s+"_tag", name, nil, opts)
    else
      html << form.send(element, name, opts)
    end
    html << '</div></div>'
    html.html_safe
  end

  def proxy_path(song)
    song_proxy_url(id: song.id)
  end
end
