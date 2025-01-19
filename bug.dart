```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Success, parse the JSON response
      final jsonData = jsonDecode(response.body);
      // ... process jsonData ...
    } else {
      // Handle error response
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // Handle exceptions, including network errors
    print('Error fetching data: $e');
    // Here's the problem:  You might forget to rethrow the exception
    // which can mask the root cause of the problem.
  }
}
```