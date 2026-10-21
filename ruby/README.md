# CPI Inflation API - Ruby Gem

CPI Inflation provides monthly Consumer Price Index data broken down by category including food, housing, transportation, medical care, and more. Includes year-over-year inflation rates for each category.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'apiverve_cpiinflation'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install apiverve_cpiinflation
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```ruby
require 'apiverve_cpiinflation'

# Initialize the client
client = APIVerve::Cpiinflation::Client.new(api_key: "YOUR_API_KEY")

# Make a request
response = client.execute({
  date: "2023-06",
  category: "food"
})

# Print the response
puts response
```


### Error Handling

```ruby
begin
  response = client.execute({ date: "2023-06", category: "food" })
  puts response["data"]
rescue APIVerve::Cpiinflation::ValidationError => e
  puts "Validation error: #{e.errors.join(', ')}"
rescue APIVerve::Cpiinflation::APIError => e
  puts "API error: #{e.message}"
  puts "Status code: #{e.status_code}"
end
```

### Debug Mode

```ruby
# Enable debug logging
client = APIVerve::Cpiinflation::Client.new(
  api_key: "YOUR_API_KEY",
  debug: true
)
```

## Example Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "yearMonth": "2026-08",
    "year": 2026,
    "month": 8,
    "category": "food",
    "index": 350.418,
    "yearOverYearChange": 2.67
  }
}
```

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/cpiinflation?utm_source=rubygems&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/cpiinflation?utm_source=ruby&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/cpiinflation?utm_source=ruby&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This gem is available under the [MIT License](LICENSE).
