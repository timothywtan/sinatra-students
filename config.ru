ENV['RACK_ENV'] ||= 'development'

require './config/environment'

# Load Controllers as Middleware
def mount_controllers_as_middleware
  Dir.entries('app/controllers').each do |file|
    next if file.start_with?(".") || file == "application_controller.rb"
    controller_name = file.split("_controller").first.capitalize

    use Kernel.const_get("#{controller_name}Controller")
  end
end
mount_controllers_as_middleware

run ApplicationController