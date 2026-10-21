# CPI Inflation API - PHP Package

CPI Inflation provides monthly Consumer Price Index data broken down by category including food, housing, transportation, medical care, and more. Includes year-over-year inflation rates for each category.

## Installation

Install via Composer:

```bash
composer require apiverve/cpiinflation
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```php
<?php

require_once 'vendor/autoload.php';

use APIVerve\Cpiinflation\Client;

// Initialize the client
$client = new Client('YOUR_API_KEY');

// Make a request
$response = $client->execute([
    'date' => '2023-06',
    'category' => 'food'
]);

// Print the response
print_r($response);
```


### Error Handling

```php
use APIVerve\Cpiinflation\Client;
use APIVerve\Cpiinflation\Exceptions\APIException;
use APIVerve\Cpiinflation\Exceptions\ValidationException;

try {
    $response = $client->execute(['date' => '2023-06', 'category' => 'food']);
    print_r($response['data']);
} catch (ValidationException $e) {
    echo "Validation error: " . implode(', ', $e->getErrors());
} catch (APIException $e) {
    echo "API error: " . $e->getMessage();
    echo "Status code: " . $e->getStatusCode();
}
```

### Debug Mode

```php
// Enable debug logging
$client = new Client(
    apiKey: 'YOUR_API_KEY',
    debug: true
);
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

## Requirements

- PHP 7.4 or higher
- Guzzle HTTP client

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/cpiinflation?utm_source=packagist&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/cpiinflation?utm_source=php&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/cpiinflation?utm_source=php&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).
