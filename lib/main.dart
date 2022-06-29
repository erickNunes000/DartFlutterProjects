import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int contador=0;

  void decrement() {
    setState((){
      if(contador>0){
        contador--;
      }
    });
    print(contador);
  }

  void increment() {
    //print("increment");
    setState((){
      contador++;
    });
    print(contador);
  }
  bool get isFull=>contador>20;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.greenAccent,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/atendimento.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Text(
              isFull?"CHEIO":"ATENDIMENTOS",
              style:  const TextStyle(
                fontSize: 40,
                color: Colors.red,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 100,),
            Text(
              isFull?"LIMITE":contador.toString(),
              style: const TextStyle(
                fontSize: 100,
                color: Colors.red,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: decrement,
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.white,
                    fixedSize: const Size(100, 100),
                    primary: Colors.black38,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32),
                    ),
                  ),
                  child: const Text(
                    "Saiu",
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 26,
                    ),
                  ),
                ),
                const SizedBox(width: 30,),
                TextButton(
                  onPressed: isFull?null:increment,
                  style: TextButton.styleFrom(
                    backgroundColor: isFull?Colors.white.withOpacity(0.2):Colors.white,
                    fixedSize: const Size(100,100),
                    primary: Colors.black38,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32),
                    ),
                  ),
                  child: const Text(
                    "Entrou",
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 26,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


