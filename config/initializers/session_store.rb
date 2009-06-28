# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_forrester_payroll_session',
  :secret      => '3c3e1f0d12c68f94cd51f990bfba53cd8e1703ee249b2a796cd4cc0f095e72c84e231b3527aedff71c8909be181de94ed9188a0ec839ed76731a06bfe7749c2a'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
