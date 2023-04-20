import 'package:coraapp2/pages/inicio-page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: PageView(
          scrollDirection: Axis.vertical,
          physics: BouncingScrollPhysics(),
          children: [
            page1(),
            InicioPage(),
          ],
        ),
      ),
    );
  }
}

class page1 extends StatelessWidget {
  const page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        PortadaPage(),
        MainContent(),
      ],
    );
  }
}

class PortadaPage extends StatelessWidget {
  const PortadaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/sky-min.jpg'),
        ),
      ),
    );
  }
}

class MainContent extends StatelessWidget {
  const MainContent({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 30,
          ),
          const Text(
            'TOGETHER',
            style: TextStyle(
                fontSize: 40, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          Text(
            '"Siempre luchando por un futuro juntos"',
            style: GoogleFonts.abhayaLibre(
                textStyle: const TextStyle(
                    fontSize: 20,
                    color: Color(0xff2F3A4B),
                    fontWeight: FontWeight.bold)),
          ),
          Expanded(child: Container()),
          const Text(
            'deslizar',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
          const Icon(
            Icons.keyboard_arrow_down_rounded,
            size: 100,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}
