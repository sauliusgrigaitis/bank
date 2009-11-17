# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_bank_session',
  :secret      => '0f86961724ef194047aa1e602d3c7ab4b76233b3e4acad73ecb1510fadd50520e3c7600917e35ce481880017efd565de402e234a8494fc9a0dbec84c2ce77c6c'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
