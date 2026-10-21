# Levenshtein Distance API - Ruby Gem

Levenshtein Distance calculates the minimum number of single-character edits needed to transform one string into another.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'apiverve_levenshteindistance'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install apiverve_levenshteindistance
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```ruby
require 'apiverve_levenshteindistance'

# Initialize the client
client = APIVerve::Levenshteindistance::Client.new(api_key: "YOUR_API_KEY")

# Make a request
response = client.execute({
  string1: "kitten",
  string2: "sitting"
})

# Print the response
puts response
```


### Error Handling

```ruby
begin
  response = client.execute({ string1: "kitten", string2: "sitting" })
  puts response["data"]
rescue APIVerve::Levenshteindistance::ValidationError => e
  puts "Validation error: #{e.errors.join(', ')}"
rescue APIVerve::Levenshteindistance::APIError => e
  puts "API error: #{e.message}"
  puts "Status code: #{e.status_code}"
end
```

### Debug Mode

```ruby
# Enable debug logging
client = APIVerve::Levenshteindistance::Client.new(
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
    "distance": 3,
    "similarity": 57.14,
    "matchLevel": "medium",
    "string1Length": 6,
    "string2Length": 7,
    "string1": "kitten",
    "string2": "sitting"
  }
}
```

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/levenshteindistance?utm_source=rubygems&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/levenshteindistance?utm_source=ruby&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/levenshteindistance?utm_source=ruby&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This gem is available under the [MIT License](LICENSE).
