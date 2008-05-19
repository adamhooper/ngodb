namespace :ngodb do
  desc "Update pot/po files."
  task :find_translatable_strings do
    require 'gettext/utils'
    GetText::ActiveRecordParser.init(:untranslate_columns => [ 'id', 'created_at', 'updated_at' ])
    GetText.update_pofiles("ngodb", Dir.glob("{app,lib,bin}/**/*.{rb,erb,rjs}"), "ngodb 0.0.1")
  end

  desc "Create mo-files"
  task :create_translation_binaries do
    require 'gettext/utils'
    GetText.create_mofiles(true, "po", "locale")
  end
end
