# Be sure to restart your server when you modify this file.

Sociallogin::Application.config.session_store :cookie_store, :key => '_Sociallogin_session'

#ActionController::Dispatcher.middleware.insert_before(ActionController::Base.session_store, FlashSessionCookieMiddleware, ActionController::Base.session_options[:key])
# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rails generate session_migration")
# Sociallogin::Application.config.session_store :active_record_store
