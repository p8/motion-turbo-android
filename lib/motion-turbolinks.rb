# encoding: utf-8

unless defined?(Motion::Project::Config)
  raise "This file must be required within a RubyMotion project Rakefile."
end

lib_dir_path = File.dirname(File.expand_path(__FILE__))
Motion::Project::App.setup do |app|
  app.files.unshift(Dir.glob(File.join(lib_dir_path, "turbolinks/**/*.rb")))
  app.resources_dirs.unshift(Dir.glob(File.join(lib_dir_path, "../resources")))
  app.frameworks += ['WebKit'] # TODO: only load if project is iOS
end
