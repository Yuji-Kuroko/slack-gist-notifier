Octokit.configure do |c|
  c.auto_paginate = true
end

@github_client = Octokit::Client.new(access_token: Settings.github_access_token, api_endpoint: Settings.github_endpoint)
