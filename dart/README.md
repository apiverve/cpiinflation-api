# CPI Inflation API - Dart/Flutter Client

CPI Inflation provides monthly Consumer Price Index data broken down by category including food, housing, transportation, medical care, and more. Includes year-over-year inflation rates for each category.

[![pub package](https://img.shields.io/pub/v/apiverve_cpiinflation.svg)](https://pub.dev/packages/apiverve_cpiinflation)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [CPI Inflation API](https://apiverve.com/marketplace/cpiinflation?utm_source=dart&utm_medium=referral&utm_content=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_cpiinflation: ^1.2.3
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
      'date': '2023-06',
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
    "yearMonth": "2026-08",
    "year": 2026,
    "month": 8,
    "category": "food",
    "index": 350.418,
    "yearOverYearChange": 2.67
  }
}
```

## API Reference

- **API Home:** [CPI Inflation API](https://apiverve.com/marketplace/cpiinflation?utm_source=dart&utm_medium=referral&utm_content=readme)
- **Documentation:** [docs.apiverve.com/ref/cpiinflation](https://docs.apiverve.com/ref/cpiinflation?utm_source=dart&utm_medium=referral&utm_content=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme)
