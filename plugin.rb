# name: OneAPM RPM
# about: Report performance data to http://www.oneapm.com/
# version: 0.0.1
# authors: Sam Saffron, David Celis

ENV['BWCONFIG'] = File.expand_path('../oneapm.yml', __FILE__)
gem 'oneapm_rpm'

OneAPM::Control.instance.init_plugin config: Rails.configuration

after_initialize do
  ForumsController.oneapm_ignore only: [:status]
end
