# flutter_get_start
Este es un proyecto para el estudio de *Flutter*, donde se va a crear una aplicación que explique conceptos básicos de una aplicación *Flutter*. Este proyecto se realizó siguiendo el CodeLab `First Flutter App` en Google

# Instalación
Este proyecto se realizó con las siguientes instalaciones, versiones y/o dependencias.
- **Dart:** 3.4.3
- **Flutter:** 3.22.2
- **DevTools:** 2.34.3
- **VsCode**

# Pasos a seguir
## 1. Crear un proyecto en flutter
Vamos a crear un proyecto *Flutter*, esto se puede hacer a través de la terminal de comandos, si ya tienes flutter instalado, sino sigue los pasos de el siguiente url *[instalación flutter](https://docs.flutter.dev/get-started/install?gad_source=1&gclid=Cj0KCQjw7ZO0BhDYARIsAFttkCiJvK6aFNdbbkZEr_-h6K70VI7pNQ_sJl-DiHPp_C23Zrk6v9s9lT0aArcaEALw_wcB&gclsrc=aw.ds)*, ahora vamos a crear nuestro primer proyecto de *Flutter*:
```bash
flutter create <your-name-project>
```
_**Nota:**_ si ya se creo la carpeta donde se va a realizar el proyecto antes de ejecutar el código se puede ejecutar el siguiente comando, teniendo en cuenta que según el estándar de flutter los paquetes deben ser en minúsculas y con `_` como separador (SnakeCase).
```bash
flutter create .
```
## 2. Importar dependencias para el proyecto.
Como todo proyecto de desarrollo lo mas probable es que necesites manejar dependencias (uso de paquetes de terceros) en *Flutter* las dependencias se manejan en un archivo `YML` llamado `pubspec.yaml`, para importar una nueva dependencia podemos usar la terminal de comandos o ingresarlas directamente en el archivo.
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
## 3. Configurar el Linter 
Configurar el linter para definir que tan estricto va a ser este con la calidad del código. En *Flutter* el archivo `analysis_options.yaml` define que tan estricto va a ser el formatter y el linter en flutter, para este proyecto lo vamos a configurar de la siguiente manera.
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

## 4. Archivo Main.dart 
Crear el Widget principal en el archivo main. El archivo principal de ejecución en un proyecto *Flutter* se encuentra ubicado en `lib/main.dart` en este archivo vamos a reemplazar el contenido por el siguiente:
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
## 5. Ejecutar el proyecto
Para ejecutar el proyecto podemos usar la terminal de comandos y en `VsCode` presionar `F5` y seleccionar el framework `dart/flutter`.
```bash
flutter run
```
## 6. Agregar un botón
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
_**Nota:**_ Vas a notar que en el instante que guardaste los cambios en el archivo, la interfaz de la app cambió, esto en Dart se conoce como `Hot Reload`, esta es la capacidad que tiene el `Dart VM` de identificar los cambios en los archivos del proyecto y mostrar los cambios en vivo sin necesidad de reiniciar la ejecución del mismo.

Ahora cuando presiones el botón en la consola de VsCode `Debug Console` vas a ver que se imprime `FloatingActionButton pressed`.

## 7. ¿Pero que he estado haciendo?
Como puedes notar el botón no ha realizado ningún cambio  significativo en la app, antes de continuar con eso te voy a explicar ¿Que hemos estado haciendo?.

Bueno de seguro si llegaste a acá es porque ya conoces el lenguaje `Dart` o lo estas conociendo y lo mas probable es que conoces `Dart` por `FLutter` _"todos iniciamos en el mundo Dart por Flutter"_. Bueno te voy a explicar unos conceptos básicos:

Como puedes notar en el archivo `lib/main.dart`, tenemos la siguiente función:
```dart
void main () => runApp(MyApp());
```
Toda aplicación de dart comienza a partir de el método `main` y como podemos notar al importar el paquete `flutter/material.dart` traemos el método `runApp`, este es el método principal que usar *Flutter* para ejecutarse. por el momento el Widget padre que ejecutamos en `runApp` es `MyApp`. Entonces, que es un Widget?

Para seguir la teoría te voy a dar la definición "oficial": Un Widget en *Flutter* es un bloque de construcción fundamental para la interfaz de usuario. En otras palabras todo componente visual que veas en una app de *Flutter* es un Widget, puede haber ciertas excepciones pero esto para principios prácticos es una definición precisa, se puede decir que comprendiendo esto entendemos la famosa frase de flutter

<blockquote style="font-style: italic; font-size: 1.2em;">
  "En Flutter todo es un Widget"
</blockquote>

<br>A medida que vayas avanzando en tus conocimientos de *Flutter* vas a notar que existen dos tipos principales de Widgets `StatelessWidget` y `StateFulWidget`, esto lo vamos a ver más adelante.

Como pudimos ver antes la función principal `main` está ejecutando `MyApp` a través de `runApp`. `MyApp` como podemos ver es un Widget para ser mas específicos un `StatelessWidget`, entremos más en detalle con `MyApp`:
```dart
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
```
En `MyApp` lo que hacemos es utilizar un el método `build`, este método es importante para la renderización de la interfaz de usuario. ya que todo lo que retornemos en el mismo será mostrado en la app cuando se cree una instancia del Widget. 

Para poder comprender el siguiente concepto antes debemos hablar de ¿Que es el árbol de widgets? y ¿Que tiene que ver esto con el contexto?

### Árbol de Widgets
En *Flutter* el árbol de Widgets es la forma en como se construye la interfaz de usuario según la jerarquía de Widget. Como está jerarquía de widget tiene "forma de árbol" se le conoce como Árbol de Widgets.

```scss
Scaffold
├── AppBar
│   └── Text (Título)
└── Center
    └── Column
        ├── Text (¡Hola, mundo!)
        └── ElevatedButton
            └── Text (Pulsar)
```
_**Nota:**_ Como en el `runApp` ejecuta `MyApp`, `MyApp` es en la jerarquía del árbol de widgets la parte más alta del árbol.

### Context (BuildContext)
El `context` que vemos en los métodos `build` y otros builders, es la variable que le permite a un widget obtener el contexto donde se está construyendo, es decir, cuando creamos un widget este obtiene su contexto dentro del árbol de widgets a través de esta variable.


Bueno, explicándote lo anterior podemos continuar con la siguiente dependencia. Para este proyecto hemos instalado la dependencia `provider`. `Provider` es una librería de gestión de estados en la aplicación esto nos permite crear "estados generales en la app" que podrán ser capturados en cualquier parte de la app, todo esto depende de que tan alto en el `Árbol de widgets` incrustes el `provider`, en el proyecto que creamos lo ubicamos en la parte mas alta de la app, adentro de `MyApp`.
```dart
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
```

En el método `build` retornamos un `ChangeNotifierProvider` este Widget, no permite agregarle un provider a la interfaz de usuario, el  provider en este caso se llama `MyAppState`. La clase `MyAppState` extiende las propiedades de ChangeNotifier (que es una clase del paquete `provider`) esto en la práctica permite que  `MyAppState` *"notifique"* a los consumidores de la clase sus cambios, los consumidores de `providers` se pueden crear de diferentes manera, en este caso usamos `ChangeNotifierProvider`.

_**Nota:**_ Cada vez que se genera una actualización del un Widget, este ejecutará su método `build` para que se mantenga actualizado. 

## 8. Agregando el nuestro primer comportamiento
Viendo y comprendiendo los conceptos anteriores, vamos a crear nuestro primer comportamiento en la app, visualizando así los cambios que ejecutemos en el Widget `MyHomeScreen`.

1. Agregamos un método para modificar el estado en la case `MyAppState`.
    ```dart
    class MyAppState extends ChangeNotifier {
      var current = WordPair.random();
    
      void nextWord() {        // <--------- nuevo método
        current = WordPair.random();
        notifyListeners();
      }
    }
    ```
    El método `nextWord` actualiza el valor de current y después de eso notifica a sus consumidores (listeners) a través de el método `notifyListeners`, este método es importante ya que si no lo ejecutamos, no se va a realizar la notificación de cambio de estado, por lo tanto no vamos a poder ver reflejados los cambios en la interfaz de usuario.

2. Llamamos al método `nextWord` cuando presionemos el botón en la app.
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
              appState.nextWord();  // <-------- se reemplaza la impresión
            },
            child: const Icon(Icons.refresh),
          ),
        );
      }
    }
    ```
    Recuerda que en `MyHomeScreen` creamos el `FloatingActionButton` es este botón el que vamos a utilizar para usar el método `nextWord`.














# Referencias
- [CodeLab First Flutter App](https://codelabs.developers.google.com/codelabs/flutter-codelab-first)
- [Linter rules](https://dart.dev/tools/linter-rules)
