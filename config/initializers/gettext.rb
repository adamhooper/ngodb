# Workaround for ruby-gettext bug #17990
module ActionView
  class Base
    delegate :file_exists?, :to => :finder unless respond_to?(:file_exists?)
  end
end

# Make templates use "_sw.html.erb" versions when available
module ActionView
  class TemplateFinder
    def pick_template_with_gettext(template_path, extension)
      locale = GetText.locale
      [locale.to_general, locale.to_s, locale.language, Locale.default.language].uniq.each do |v|
        file_name = "#{template_path}_#{v}.#{extension}"
        base_path = find_base_path_for(file_name)
        return "#{base_path}/#{file_name}" unless base_path.blank?
      end
      pick_template_without_gettext(template_path, extension)
    end
    alias_method_chain :pick_template, :gettext
  end
end

require 'gettext/rails'
