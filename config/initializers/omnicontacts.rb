require "omnicontacts"

Rails.application.middleware.use OmniContacts::Builder do
  importer :gmail, "186769536794-p88fgnvcfks2di1a60p2niv3nf0riptf.apps.googleusercontent.com", "Ppb4NcCmxuSKYpaIgzezjwd7", {:redirect_path => "/contacts/gmail/contact_callback"}
  # importer :gmail, "client_id", "client_secret", {:redirect_path => "/oauth2callback", :ssl_ca_file => "/etc/ssl/certs/curl-ca-bundle.crt"}
  # importer :yahoo, "consumer_id", "consumer_secret", {:callback_path => "/callback"}
  # importer :linkedin, "consumer_id", "consumer_secret", {:redirect_path => "/oauth2callback", :state => '<long_unique_string_value>'}
  # importer :hotmail, "client_id", "client_secret"
  # importer :outlook, "app_id", "app_secret"
  # importer :facebook, "client_id", "client_secret"
end
