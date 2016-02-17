class AdminLte2BootstrapGenerator < Rails::Generators::Base
  source_root File.expand_path('../templates', __FILE__)
  class_option :stylesheet_engine
  class_option :template_engine

  def main
    @stylesheet_extension = options[:stylesheet_engine] || 'css'
    @template_extension = options[:template_engine] || 'erb'

    inject_javascript
    inject_stylesheets
    copy_templates
  end

  private
    def inject_javascript
      application_file_path = "app/assets/javascripts/application.js"
      inject_into_file application_file_path, "//= require bootstrap-sprockets\n", after: "//= require jquery_ujs\n"
      inject_into_file application_file_path, "//= require app\n", before: '//= require_tree'
    end

    def inject_stylesheets
      application_file_path = "app/assets/stylesheets/application.#{@stylesheet_extension}"
      # inject_into_file application_file_path, "@import \"AdminLTE/skins/skin-blue\";\n", after: ' */'
      # inject_into_file application_file_path, "@import \"AdminLTE/AdminLTE\";\n", after: ' */'
      inject_into_file application_file_path, "@import \"font-awesome\";\n", after: ' */'
      inject_into_file application_file_path, "@import \"ionicons\";\n", after: ' */'
      inject_into_file application_file_path, "@import \"bootstrap\";\n", after: ' */'
      inject_into_file application_file_path, "\n@import \"bootstrap-sprockets\";\n", after: ' */'
    end

    def copy_templates
      @template_extension = "erb"
      copy_file "adminlte.js", "app/assets/javascripts/adminlte.js"
      copy_file "adminlte.#{@stylesheet_extension}", "app/assets/stylesheets/adminlte.#{@stylesheet_extension}"
      copy_file "#{@template_extension}/admin_lte2_bootstrap.html.#{@template_extension}", "app/views/layouts/admin_lte2_bootstrap.html.#{@template_extension}"
      directory "#{@template_extension}/admin_lte2_bootstrap", "app/views/layouts/admin_lte2_bootstrap"
    end
end