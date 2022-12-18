import Config

config :kigamail, Kigamail.Mailer,
  adapter: Swoosh.Adapters.Sendgrid,
  api_key: "api key"
