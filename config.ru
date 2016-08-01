require './config/environment'

if ActiveRecord::Migrator.needs_migration?
  # raise 'Migrations are pending. Run `rake db:migrate` to resolve the issue.'
end

use TopicsController
use UsersController
use CommentsController

use Rack::MethodOverride
run ApplicationController