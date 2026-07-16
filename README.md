# [CPI Inflation API](https://apiverve.com/marketplace/cpiinflation?utm_source&#x3D;github&amp;utm_medium&#x3D;readme)

CPI Inflation provides monthly Consumer Price Index data broken down by category including food, housing, transportation, medical care, and more. Includes year-over-year inflation rates for each category.

The CPI Inflation API provides a simple, reliable way to integrate cpi inflation functionality into your applications. Built for developers who need production-ready cpi inflation capabilities without the complexity of building from scratch.

**[View API Details →](https://apiverve.com/marketplace/cpiinflation?utm_source&#x3D;github&amp;utm_medium&#x3D;readme)**

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![API Status](https://img.shields.io/badge/Status-Active-green.svg)](https://apiverve.com/marketplace/cpiinflation?utm_source&#x3D;github&amp;utm_medium&#x3D;readme)
[![Method](https://img.shields.io/badge/Method-GET-blue.svg)](#)
[![Platform](https://img.shields.io/badge/Platform-Multi--Platform-orange.svg)](#installation)

**Available on:**
[![npm](https://img.shields.io/badge/npm-CB3837?style=flat&logo=npm&logoColor=white)](https://www.npmjs.com/package/@apiverve/cpiinflation)
[![NuGet](https://img.shields.io/badge/NuGet-004880?style=flat&logo=nuget&logoColor=white)](https://www.nuget.org/packages/APIVerve.API.CPIInflation)
[![PyPI](https://img.shields.io/badge/PyPI-3776AB?style=flat&logo=python&logoColor=white)](https://pypi.org/project/apiverve-cpiinflation/)
[![RubyGems](https://img.shields.io/badge/RubyGems-E9573F?style=flat&logo=rubygems&logoColor=white)](https://rubygems.org/gems/apiverve_cpiinflation)
[![Packagist](https://img.shields.io/badge/Packagist-F28D1A?style=flat&logo=packagist&logoColor=white)](https://packagist.org/packages/apiverve/cpiinflation)
[![Go](https://img.shields.io/badge/Go-00ADD8?style=flat&logo=go&logoColor=white)](#-go)
[![Dart](https://img.shields.io/badge/Dart-0175C2?style=flat&logo=dart&logoColor=white)](https://pub.dev/packages/apiverve_cpiinflation)
[![JitPack](https://img.shields.io/badge/JitPack-2E7D32?style=flat&logo=android&logoColor=white)](#-android-jitpack)

---

## Quick Start

### Using JavaScript

```javascript
async function callCPIInflationAPI() {
    try {
        const params = new URLSearchParams({
            date: '2023-06',
            category: 'food'
        });

        const response = await fetch(`https://api.apiverve.com/v1/cpiinflation?${params}`, {
            method: 'GET',
            headers: {
                'x-api-key': 'YOUR_API_KEY_HERE'
            }
        });

        const data = await response.json();
        console.log(data);
    } catch (error) {
        console.error('Error:', error);
    }
}

callCPIInflationAPI();
```

### Using cURL

```bash
curl -X GET "https://api.apiverve.com/v1/cpiinflation?date=2023-06&category=food" \
  -H "x-api-key: YOUR_API_KEY_HERE"
```

**Get your API key:** [https://apiverve.com](https://apiverve.com)

**📁 For more examples, see the [examples folder](./examples/)**

---

## Installation

Choose your preferred programming language:

### 📦 NPM (JavaScript/Node.js)

```bash
npm install @apiverve/cpiinflation
```

[**View NPM Package →**](https://www.npmjs.com/package/@apiverve/cpiinflation) | [**Package Code →**](./npm/)

---

### 🔷 NuGet (.NET/C#)

```bash
dotnet add package APIVerve.API.CPIInflation
```

[**View NuGet Package →**](https://www.nuget.org/packages/APIVerve.API.CPIInflation) | [**Package Code →**](./nuget/)

---

### 🐍 Python (PyPI)

```bash
pip install apiverve-cpiinflation
```

[**View PyPI Package →**](https://pypi.org/project/apiverve-cpiinflation/) | [**Package Code →**](./python/)

---

### 💎 Ruby (RubyGems)

```bash
gem install apiverve_cpiinflation
```

[**View RubyGems Package →**](https://rubygems.org/gems/apiverve_cpiinflation) | [**Package Code →**](./ruby/)

---

### 🐘 PHP (Packagist)

```bash
composer require apiverve/cpiinflation
```

[**View Packagist Package →**](https://packagist.org/packages/apiverve/cpiinflation) | [**Package Code →**](./php/)

---

### 🎯 Dart (pub.dev)

```bash
dart pub add apiverve_cpiinflation
```

[**View pub.dev Package →**](https://pub.dev/packages/apiverve_cpiinflation) | [**Package Code →**](./dart/)

---

### 🤖 Android (JitPack)

```gradle
implementation 'com.github.apiverve:cpiinflation-api:1.0.0'
```

[**Package Code →**](./android/)

---

### 🐹 Go

```bash
go get github.com/apiverve/cpiinflation-api/go
```

[**Package Code →**](./go/)

---

## Why Use This API?

| Feature | Benefit |
|---------|---------|
| **Multi-language SDKs** | Native packages for JavaScript, Python, C#, Go, and Android |
| **Simple Integration** | Single API key authentication, consistent response format |
| **Production Ready** | 99.9% uptime SLA, served from 24 global regions |
| **Comprehensive Docs** | Full examples, OpenAPI spec, and dedicated support |

---

## Documentation

- 🏠 **API Home:** [CPI Inflation API](https://apiverve.com/marketplace/cpiinflation?utm_source&#x3D;github&amp;utm_medium&#x3D;readme)
- 📚 **API Reference:** [docs.apiverve.com/ref/cpiinflation](https://docs.apiverve.com/ref/cpiinflation)
- 📖 **OpenAPI Spec:** [openapi.yaml](./openapi.yaml)
- 💡 **Examples:** [examples/](./examples/)

---

## What Can You Build?

The CPI Inflation API is commonly used for:

- **Web Applications** - Add cpi inflation features to your frontend or backend
- **Mobile Apps** - Native SDKs for Android development
- **Automation** - Integrate with n8n, Zapier, or custom workflows
- **SaaS Products** - Enhance your product with cpi inflation capabilities
- **Data Pipelines** - Process and analyze data at scale

---

## API Reference

### Authentication
All requests require an API key in the header:
```
x-api-key: YOUR_API_KEY_HERE
```

Get your API key: [https://apiverve.com](https://apiverve.com)

### Response Format

Every APIVerve endpoint returns the same envelope — check `status`, then read `data`:

```json
{
  "status": "ok",
  "error": null,
  "data": { ... }
}
```

### Example Response

A real response from the CPI Inflation API:

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

---

## Support & Community

- 🏠 **API Home**: [CPI Inflation API](https://apiverve.com/marketplace/cpiinflation?utm_source&#x3D;github&amp;utm_medium&#x3D;readme)
- 💬 **Support**: [https://apiverve.com/contact](https://apiverve.com/contact)
- 🐛 **Issues**: [GitHub Issues](../../issues)
- 📖 **Documentation**: [https://docs.apiverve.com](https://docs.apiverve.com)
- 🌐 **Website**: [https://apiverve.com](https://apiverve.com)

---

## Contributing

We welcome contributions! Please see [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines.

---

## Security

For security concerns, please review our [Security Policy](SECURITY.md).

---

## License

This project is licensed under the **MIT License** - see the [LICENSE](LICENSE) file for details.

---

## Acknowledgments

Built with ❤️ by [APIVerve](https://apiverve.com)

Copyright © 2026 APIVerve. All rights reserved.
