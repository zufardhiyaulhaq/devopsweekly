require_relative './devopsweekly.rb'
require_relative './github.rb'

require 'yaml'

github = GithubHandler.new(ENV['GITHUB_TOKEN'])
devopsweekly = DevopsweeklyHandler.new

devopsweekly_new = devopsweekly.scrape_information
devopsweekly_old, sha = github.get_file(
  ENV['REPOSITORY'],
  './content/devopsweekly.yaml'
)

update = true
devopsweekly_old.each do |content|
  if devopsweekly_new['name'] == content['name']
    update = false
  end
end

if update
  puts('Running devopsweekly updates')
  devopsweekly_old.push(devopsweekly_new)
  github.update_file(
    ENV['REPOSITORY'],
    './content/devopsweekly.yaml',
    'update devopsweekly data',
    devopsweekly_old.to_yaml.gsub("---\n", ''),
    sha
  )
else
  puts('No devopsweekly updates')
end
