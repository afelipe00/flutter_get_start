# flutter_get_start
Este es un proyecto para el estudio de flutter, donde se va a crear una aplicación que explique conceptos básicos de una aplicación Flutter. Este proyecto se realizó siguiendo el CodeLab `First Flutter App` en Google

# Instalación
Este proyecto se realizó con las siguientes instalaciones, versiones y/o dependencias.
- **Dart:** 3.4.3
- **Flutter:** 3.22.2
- **DevTools:** 2.34.3
- **VsCode**

# Pasos a seguir
### 1. Crear un proyecto en flutter
Un proyecto Flutter se puede crear usando la terminal de comandos:
```bash
flutter create <your-name-project>
```
_**Nota:**_ si ya se creo la carpeta donde se va a realizar el proyecto antes de ejecutar el código se puede ejecutar el siguiente comando, teniendo en cuenta que según el estándar de flutter los paquetes deben ser en minúsculas y con `_` como separador (SnakeCase).
```bash
flutter create .
```
### 2. Importar dependencias para el proyecto.
Como todo proyecto de desarrollo lo mas probable es que necesites manejar dependencias (uso de paquetes de terceros) en Flutter las dependencias se manejan en un archivo `YML` llamado `pubspec.yaml`, para importar una nueva dependencia podemos usar la terminal de comandos o ingresarlas directamente en el archivo.
```bash
flutter pub add <name_package>
```
para agregar las dependencias directamente en el archivo, se puede hacer de la siguiente manera:
```yml
dependencies:
    flutter:
        sdk: flutter
    provider: ^6.0.0
    <name_package>: <version>
```
_**Nota:**_ Hay que tomar en cuenta que no todas las dependencias deben estar en la llave `dependencies` ya que estas dependencias se usan para cuando se crea el `build` de la aplicación y hay algunas dependencias que no es necesario que se incluyan acá, como dependencias de testing o desarrollo, estas dependencias se van a ubicar en `dev_dependencies`. Si no se agrega version al paquete `<name_package>: ` flutter automáticamente va a elegir la que mejor se adecue al proyecto.

Para este proyecto vamos a instalar las siguientes dependencias:
```bash
flutter pub add provider english_words
```
### 3. Configurar el Linter 
Configurar el linter para definir que tan estricto va a ser este con la calidad del código. En Flutter el archivo `analysis_options.yaml` define que tan estricto va a ser el formatter y el linter en flutter, para este proyecto lo vamos a configurar de la siguiente manera.
```yml
include: package:flutter_lints/flutter.yaml

linter:
    rules:
        avoid_print: false
        prefer_const_constructors_in_immutables: false
        prefer_const_constructors: false
        prefer_const_literals_to_create_immutables: false
        prefer_final_fields: false
        unnecessary_breaks: true
        use_key_in_widget_constructors: false
```

### 4. Archivo Main.dart 
Crear el Widget principal en el archivo main. El archivo principal de ejecución en un proyecto Flutter se encuentra ubicado en `lib/main.dart` en este archivo vamos a reemplazar el contenido por el siguiente:
```dart
import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyAppState(),
      child: MaterialApp(
        title: 'First Flutter App',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.cyanAccent),
        ),
        home: const MyHomeScreen(),
      ),
    );
  }
}

class MyAppState extends ChangeNotifier {
  var current = WordPair.random();
}

class MyHomeScreen extends StatelessWidget {
  const MyHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('First Flutter App'),
      ),
      body: Center(
        child: Text('Random word: ${appState.current.asLowerCase}'),
      ),
    );
  }
}
```
### 5. Ejecutar el proyecto
Para ejecutar el proyecto podemos usar la terminal de comandos y en `VsCode` presionar `F5` y seleccionar el framework `dart/flutter`.
```bash
flutter run
```
### 6. Agregar un botón
Teniendo el proyecto en ejecución, vamos a agregarle un botón. para esto en el Widget que creamos `MyHomeScreen` vamos a utilizar la propiedad `floatingActionButton` de el Widget `Scaffold` (esto se encuentra en el método build), al cual le vamos a agregar el widget `FloatingActionButton`, quedando de la siguiente forma.
```dart
class MyHomeScreen extends StatelessWidget {
  const MyHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('First Flutter App'),
      ),
      body: Center(
        child: Text('Random word: ${appState.current.asLowerCase}'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('FloatingActionButton pressed');
        },
        child: const Icon(Icons.refresh),
      ),
    );
  }
}
```
_**Nota: **_ Vas a notar que en el instante que guardaste los cambios en el archivo, la interfaz de la app cambió, esto en Dart se conoce como `Hot Reload`, esta es la capacidad que tiene el `Dart VM` de identificar los cambios en los archivos del proyecto y mostrar los cambios en vivo sin necesidad de reiniciar la ejecución del mismo.

Ahora cuando presiones el botón en la consola de VsCode `Debug Console` vas a ver que se imprime `FloatingActionButton pressed`.






# Referencias
- [CodeLab First Flutter App](https://codelabs.developers.google.com/codelabs/flutter-codelab-first)
- [Linter rules](https://dart.dev/tools/linter-rules)
