# Levenshtein Distance API - Dart/Flutter Client

Levenshtein Distance calculates the minimum number of single-character edits needed to transform one string into another.

[![pub package](https://img.shields.io/pub/v/apiverve_levenshteindistance.svg)](https://pub.dev/packages/apiverve_levenshteindistance)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [Levenshtein Distance API](https://apiverve.com/marketplace/levenshteindistance?utm_source=dart&utm_medium=referral&utm_content=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_levenshteindistance: ^1.2.5
```

Then run:

```bash
dart pub get
# or for Flutter
flutter pub get
```

## Usage

```dart
import 'package:apiverve_levenshteindistance/apiverve_levenshteindistance.dart';

void main() async {
  final client = LevenshteindistanceClient('YOUR_API_KEY');

  try {
    final response = await client.execute({
      'string1': 'kitten',
      'string2': 'sitting'
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

## API Reference

- **API Home:** [Levenshtein Distance API](https://apiverve.com/marketplace/levenshteindistance?utm_source=dart&utm_medium=referral&utm_content=readme)
- **Documentation:** [docs.apiverve.com/ref/levenshteindistance](https://docs.apiverve.com/ref/levenshteindistance?utm_source=dart&utm_medium=referral&utm_content=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme)
