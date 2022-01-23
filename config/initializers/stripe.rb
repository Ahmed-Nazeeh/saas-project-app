Rails.configuration.stripe = {
  # :publishable_key => ENV['STRIPE_TEST_PUBLISHABLE_KEY'],
  # :secret_key      => ENV['STRIPE_TEST_SECRET_KEY']
  :publishable_key => Rails.application.credentials.dig(:stripe, :publishable_key),
  :secret_key      => Rails.application.credentials.dig(:stripe, :secret_key)
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]