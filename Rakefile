require 'fileutils'

xcode_template_dir = ENV['HOME'] + "/Library/Developer/Xcode/Templates"

file_templates = [
  'UnitTests/*.xctemplate'
]

project_templates = [
]

working_file_templates = file_templates.map { |path| "File Templates/#{path}" }
working_project_templates = project_templates.map { |path| "Project Templates/#{path}" }

def copy_templates(templates, install_dir)

  # Copy the templates to the XCode template directory
  Dir.glob(templates).each do |template|

    dir_name = "#{install_dir}/#{File.dirname template}"

    FileUtils.mkdir_p(dir_name)

    puts "Installing #{template}\n"

    FileUtils.cp_r("#{template}", "#{install_dir}/#{template}")
  end

end

def remove_templates(templates, install_dir)

  # Remove the templates from XCode template directory
  Dir.glob(templates).each do |template|

    puts "Removing #{template}\n"

    path = "#{install_dir}/#{template}"

    if File.exists? path
      FileUtils.rm_r path
    end

  end

end

def remove_base(templates, install_dir)

  Dir.glob(templates).each do |template|

    # Get the base directory
    base_dir = File.dirname "#{install_dir}/#{template}"

    # If the base directory is empty, remove it
    if Dir[base_dir + "/*"].empty?

      puts "No more templates in #{base_dir}, removing...\n"
      FileUtils.rmdir base_dir
    end
  end

end

task :default => [:install]

desc 'Install the templates in the users home directory'
task :install do

  copy_templates working_file_templates, xcode_template_dir
  copy_templates working_project_templates, xcode_template_dir

end

desc 'Remove the templates from the users home directory'
task :uninstall do

  # Remove the templates
  remove_templates working_file_templates, xcode_template_dir
  remove_templates working_project_templates, xcode_template_dir

  # Remove the directories if they are empty
  remove_base working_file_templates, xcode_template_dir
  remove_base working_project_templates, xcode_template_dir

end

