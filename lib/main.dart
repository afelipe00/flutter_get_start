import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:flutter_get_start/config/themes/themes.dart';
import 'package:flutter_get_start/providers/theme_provider.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => MyAppState()),
        ChangeNotifierProvider(create: (context) => ThemeProvider()),
      ],
      child: MyHomeScreen(),
    );
  }
}

class MyAppState extends ChangeNotifier {
  var current = WordPair.random();

  void nextWord() {
    current = WordPair.random();
    notifyListeners();
  }
}

class MyHomeScreen extends StatelessWidget {
  const MyHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();
    final ThemeProvider themeProvider = Provider.of<ThemeProvider>(context);
    TextTheme textTheme = createTextTheme(context, "Lato", "Noto Sans");
    MaterialTheme theme = MaterialTheme(textTheme);

    return MaterialApp(
      title: 'First Flutter App',
      theme: themeProvider.themePreference == ThemePreference.light ? theme.light() : theme.dark(),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('First Flutter App'),
          actions: [
            IconButton(
              icon: Icon(
                themeProvider.themePreference == ThemePreference.light ? Icons.light_mode : Icons.dark_mode,
              ),
              onPressed: () {
                themeProvider.toggleTheme();
              },
            ),
          ],
        ),
        body: Center(
          child: Text('Random word: ${appState.current.asLowerCase}'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            appState.nextWord();
          },
          child: const Icon(Icons.refresh),
        ),
      ),
    );
  }
}
