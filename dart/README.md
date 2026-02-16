# CPI Inflation API - Dart/Flutter Client

CPI Inflation provides monthly Consumer Price Index data broken down by category including food, housing, transportation, medical care, and more. Includes year-over-year inflation rates for each category.

[![pub package](https://img.shields.io/pub/v/apiverve_cpiinflation.svg)](https://pub.dev/packages/apiverve_cpiinflation)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [CPI Inflation API](https://apiverve.com/marketplace/cpiinflation?utm_source=dart&utm_medium=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_cpiinflation: ^1.1.14
```

Then run:

```bash
dart pub get
# or for Flutter
flutter pub get
```

## Usage

```dart
import 'package:apiverve_cpiinflation/apiverve_cpiinflation.dart';

void main() async {
  final client = CpiinflationClient('YOUR_API_KEY');

  try {
    final response = await client.execute({
      'date': '2024-01',
      'category': 'food'
    });

    print('Status: ${response.status}');
    print('Data: ${response.data}');
  } catch (e) {
    print('Error: $e');
  }
}
```

## Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "yearMonth": "2024-01",
    "year": 2024,
    "month": 1,
    "categories": {
      "all": {
        "index": 308.417,
        "yearOverYearChange": 3.1
      },
      "food": {
        "index": 327.891,
        "yearOverYearChange": 2.6
      },
      "housing": {
        "index": 341.256,
        "yearOverYearChange": 4.8
      },
      "transportation": {
        "index": 278.543,
        "yearOverYearChange": 1.2
      },
      "medical": {
        "index": 542.189,
        "yearOverYearChange": 3.5
      },
      "gasoline": {
        "index": 287.654,
        "yearOverYearChange": -3.2
      },
      "electricity": {
        "index": 298.123,
        "yearOverYearChange": 5.1
      }
    }
  }
}
```

## API Reference

- **API Home:** [CPI Inflation API](https://apiverve.com/marketplace/cpiinflation?utm_source=dart&utm_medium=readme)
- **Documentation:** [docs.apiverve.com/ref/cpiinflation](https://docs.apiverve.com/ref/cpiinflation?utm_source=dart&utm_medium=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=readme)
