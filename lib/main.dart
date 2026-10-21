TextField(
  controller: apiKeyController,
  decoration: InputDecoration(labelText: 'أدخل مفتاح API'),
),
ElevatedButton(
  onPressed: () {
    validateApiKey(apiKeyController.text);
  },
  child: Text('تحقق'),
),

Future<bool> validateApiKey(String apiKey) async {
  final response = await http.get(
    Uri.parse('https://api.example.com/validate?apiKey=$apiKey'),
  );

  if (response.statusCode == 200) {
    // المفتاح صالح
    return true;
  } else {
    // المفتاح غير صالح
    return false;
  }
}

if (await validateApiKey(apiKeyController.text)) {
  // توجيه المستخدم إلى واجهة المساعد الذكي
} else {
  // عرض رسالة خطأ
}

FloatingActionButton(
  onPressed: () {
    // افتح واجهة المحادثة مع الذكاء الاصطناعي
  },
  child: Icon(Icons.chat),
),

import 'package:flutter_tts/flutter_tts.dart';

FlutterTts flutterTts = FlutterTts();

Future<void> speak(String text) async {
  await flutterTts.setLanguage("ar-SA");
  await flutterTts.speak(text);
}

String response = "هذا هو الرد من الذكاء الاصطناعي";
await speak(response);