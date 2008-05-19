module ModelTranslations
  def localize(*columns)
    columns.each do |column|
      define_method("localized_#{column}") do
        locale = GetText.locale
        method = "#{column}_#{locale}"

        if respond_to? method
          send method
        else
          send column
        end
      end
    end
  end
end
