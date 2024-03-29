
import 'package:custom_alert_snackbar/custom_alert_snackbar.dart';
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
      debugShowCheckedModeBanner: false
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

              CustomAlertSnack.init(
                context, 
                size: MediaQuery.sizeOf(context), 
                title: 'MEU TESTE',
                text: 'Lorem Ipsum', 
                textAlign: TextAlign.left,
                alignCenter: false
              );

            }, child: const Text("model 0")),
            
            ElevatedButton(onPressed: (){

              CustomAlertSnack.init(
                context, 
                size: MediaQuery.sizeOf(context), 
                title: 'MEU TESTE',
                text: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', 
                titleColor: Colors.white
              );

            }, child: const Text("model 1")),

            ElevatedButton(onPressed: (){

              CustomAlertSnack.init(
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
                degradeIcon: false,
                assetsImage: "assets/01.png"
              );

            }, child: const Text("model 2")),

            ElevatedButton(onPressed: (){

              CustomAlertSnack.init(
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

              CustomAlertSnack.init(
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

            ElevatedButton(onPressed: (){

              CustomAlertSnack.init(
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
                round: false
              );

            }, child: const Text("model 5")),

            ElevatedButton(onPressed: (){

              CustomAlertSnack.init(
                context, 
                size: MediaQuery.sizeOf(context), 
                title: 'MEU TESTE',
                text: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survive', 
                backgrounds:  Colors.amber,
                color: const Color.fromARGB(255, 0, 148, 5),
                titleColor: Colors.white,
                textColor: Colors.white,
                icons: Icons.error,
                iconColor: Colors.white,
                round: false,
                assetsImage: "assets/02.png"
              );

            }, child: const Text("model 6")),

            ElevatedButton(onPressed: (){

              CustomAlertSnack.init(
                context, 
                size: MediaQuery.sizeOf(context), 
                title: 'MEU TESTE',
                text: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survive', 
                backgrounds:  Colors.green,
                color: const Color.fromARGB(255, 0, 148, 5),
                titleColor: Colors.white,
                textColor: Colors.white,
                icons: Icons.error,
                iconColor: Colors.white,
                round: false,
                assetsImage: "assets/03.png"
              );

            }, child: const Text("model 7")),

            ElevatedButton(onPressed: (){

              CustomAlertSnack.init(
                context, 
                size: MediaQuery.sizeOf(context), 
                title: 'MEU TESTE',
                text: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survive', 
                backgrounds:  Colors.green,
                color: const Color.fromARGB(255, 0, 148, 5),
                titleColor: Colors.white,
                textColor: Colors.white,
                icons: Icons.error,
                iconColor: Colors.white,
                round: false,
                assetsImage: "assets/05.png"
              );

            }, child: const Text("model 8")),

            ElevatedButton(onPressed: (){

              CustomAlertSnack.init(
                context, 
                size: MediaQuery.sizeOf(context), 
                title: 'MEU TESTE',
                text: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survive', 
                backgrounds:  Colors.amber,
                color: Colors.amber,
                titleColor: Colors.white,
                textColor: Colors.white,
                icons: Icons.error,
                iconColor: Colors.white,
                round: false,
                assetsImage: "assets/06.png"
              );

            }, child: const Text("model 9")),

            
            
            
            
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          
        },
        // foregroundColor: customizations[index].$1,
        // backgroundColor: customizations[index].$2,
        // shape: customizations[index].$3,
        child: const Icon(Icons.navigation),
      )
    );
  }
}
