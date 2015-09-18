Devise.setup do |config|

  config.mailer_sender = 'mailer@chemicalobserver.com'

  config.mailer = 'Devise::Mailer'
  require 'devise/orm/active_record'

  config.authentication_keys = [:email]
  config.case_insensitive_keys = [:email]
  config.strip_whitespace_keys = [:email]
  config.skip_session_storage = [:http_auth]
  config.stretches = Rails.env.test? ? 1 : 10
  config.pepper = '6c70e6ac6c0d2f761646459011f634d7160f3e935f8da9b662daa3df84c8529b794462347878b3879c9f698c6428a50e1aba6fd523965662c8396bc5b65f9a19'

  config.allow_unconfirmed_access_for = 2.days
  config.confirm_within = 3.days
  config.reconfirmable = true

  config.confirmation_keys = [:email]

  config.remember_for = 2.weeks
  config.expire_all_remember_me_on_sign_out = true

  config.extend_remember_period = false
  config.rememberable_options = {}

  config.password_length = 8..72

  # Email regex used to validate email formats. It simply asserts that
  # one (and only one) @ exists in the given string. This is mainly
  # to give user feedback and not to assert the e-mail validity.
  # config.email_regexp = /\A[^@]+@[^@]+\z/

  config.reset_password_within = 6.hours

  # config.encryptor = :sha512

  # config.scoped_views = false

  # config.default_scope = :user

  # Set this configuration to false if you want /users/sign_out to sign out
  # only the current scope. By default, Devise signs out all scopes.
  # config.sign_out_all_scopes = true

  config.sign_out_via = :delete
end
