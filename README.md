Custom_Alert_Snackbar is a simple and elegant way to generate personalized alerts


## It only needs to be called within a function passing only four values ​​per parameter

```dart
ElevatedButton(onPressed: (){

    CustomSnack.init(
    context, 
    size: MediaQuery.sizeOf(context), 
    title: 'MEU TESTE',
    text: 'Lorem Ipsum is simply dummy text of the '
    );

}, child: const Text("model 1"))
```



## Everything is customizable, from colors, icons, gradient, watermark, font stylization and much more.


```dart
ElevatedButton(onPressed: (){

    CustomSnack.init(
    context, 
    size: MediaQuery.sizeOf(context), 
    title: 'MEU TESTE',
    text: 'Lorem Ipsum is simply dummy text of the printing and', 
    backgrounds:  Colors.amber,
    color: Colors.amber,
    titleColor: Colors.black,
    textColor: Colors.black,
    icons: Icons.error,
    iconColor: Colors.black,
    backgroundImage: false,
    degradeIcon: false,
    assetsImage: "assets/01.png"
    );

}, child: const Text("model 2")),
```

###  Some images of what can be done
<img src="https://raw.githubusercontent.com/hallanabreu2020/images/main/Captura%20de%20Tela%202024-01-27%20%C3%A0s%2012.41.36.png" height='600px' />

<img src="https://raw.githubusercontent.com/hallanabreu2020/images/main/Captura%20de%20Tela%202024-01-27%20%C3%A0s%2012.42.54.png" height='600px' />

<img src="https://raw.githubusercontent.com/hallanabreu2020/images/main/Captura%20de%20Tela%202024-01-27%20%C3%A0s%2012.43.04.png" height='600px' />

<img src="https://raw.githubusercontent.com/hallanabreu2020/images/main/Captura%20de%20Tela%202024-01-27%20%C3%A0s%2012.43.15.png" height='600px' />

<img src="https://raw.githubusercontent.com/hallanabreu2020/images/main/Captura%20de%20Tela%202024-01-27%20%C3%A0s%2012.43.34.png" height='600px' />

<img src="https://raw.githubusercontent.com/hallanabreu2020/images/main/Captura%20de%20Tela%202024-01-27%20%C3%A0s%2012.43.58.png" height='600px' />

<img src="https://raw.githubusercontent.com/hallanabreu2020/images/main/Captura%20de%20Tela%202024-01-27%20%C3%A0s%2012.44.09.png" height='600px' />

<img src="https://raw.githubusercontent.com/hallanabreu2020/images/main/Captura%20de%20Tela%202024-01-27%20%C3%A0s%2012.44.20.png" height='600px' />

<img src="https://raw.githubusercontent.com/hallanabreu2020/images/main/Captura%20de%20Tela%202024-01-27%20%C3%A0s%2012.44.30.png" height='600px' />

<img src="https://raw.githubusercontent.com/hallanabreu2020/images/main/Captura%20de%20Tela%202024-01-27%20%C3%A0s%2012.44.44.png" height='600px' />

## Example


```dart
import 'package:custom_snackbar/custom_snackbar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home:  MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            ElevatedButton(onPressed: (){

              CustomSnack.init(
                context, 
                size: MediaQuery.sizeOf(context), 
                title: 'MEU TESTE',
                text: 'Lorem Ipsum', 
                textAlign: TextAlign.left,
                alignCenter: false
              );

            }, child: const Text("model 0")),
            
            ElevatedButton(onPressed: (){

              CustomSnack.init(
                context, 
                size: MediaQuery.sizeOf(context), 
                title: 'MEU TESTE',
                text: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', 
                titleColor: Colors.white
              );

            }, child: const Text("model 1")),

            ElevatedButton(onPressed: (){

              CustomSnack.init(
                context, 
                size: MediaQuery.sizeOf(context), 
                title: 'MEU TESTE',
                text: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', 
                backgrounds:  Colors.amber,
                color: Colors.amber,
                titleColor: Colors.black,
                textColor: Colors.black,
                icons: Icons.error,
                iconColor: Colors.black,
                backgroundImage: false,
                degradeIcon: false,
                assetsImage: "assets/01.png"
              );

            }, child: const Text("model 2")),

            ElevatedButton(onPressed: (){

              CustomSnack.init(
                context, 
                size: MediaQuery.sizeOf(context), 
                title: 'MEU TESTE',
                text: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survive', 
                backgrounds:  const Color.fromARGB(255, 255, 179, 0),
                color: const Color.fromARGB(255, 252, 130, 0),
                titleColor: Colors.black,
                textColor: Colors.black,
                icons: Icons.error,
                iconColor: Colors.black,
                alignCenter: false,
                textAlign: TextAlign.left
              );

            }, child: const Text("model 3")),

            ElevatedButton(onPressed: (){

              CustomSnack.init(
                context, 
                size: MediaQuery.sizeOf(context), 
                title: 'MEU TESTE',
                text: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survive', 
                backgrounds:  Colors.amber,
                color: Colors.amber,
                titleColor: Colors.black,
                textColor: Colors.black,
                icons: Icons.error,
                iconColor: Colors.black,
                backgroundImage: false,
                degradeIcon: false
              );

            }, child: const Text("model 4")),

            
            
            
            
          ],
        ),
      ),
    );
  }
}

```



