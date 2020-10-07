# frozen_string_literal: true

return unless Rails.env.test?

Rails.application.load_tasks unless defined?(Rake::Task)

CypressRails.hooks.before_server_start do
  Rake::Task['db:reset'].invoke
end

CypressRails.hooks.after_transaction_start do
end

CypressRails.hooks.after_state_reset do
  Rake::Task['db:reset'].invoke
end

CypressRails.hooks.before_server_stop do
  Rake::Task['db:reset'].invoke
end
