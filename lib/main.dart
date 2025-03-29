import 'package:animated_background/animated_background.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/gen/assets.gen.dart';
import 'package:portfolio/theme.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const PortfolioApp());
}

class PortfolioApp extends StatefulWidget {
  const PortfolioApp({super.key});

  @override
  State<PortfolioApp> createState() => _PortfolioAppState();
}

class _PortfolioAppState extends State<PortfolioApp> {
  bool isDarkMode = false;

  void toggleTheme() {
    setState(() {
      isDarkMode = !isDarkMode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Portfolio',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.from(
        colorScheme: MaterialTheme.lightScheme(),
        textTheme: GoogleFonts.montserratTextTheme(
          ThemeData.light().textTheme,
        ),
      ),
      darkTheme: ThemeData.from(
        colorScheme: MaterialTheme.darkScheme(),
        textTheme: GoogleFonts.montserratTextTheme(
          ThemeData.dark().textTheme,
        ),
      ),
      themeMode: isDarkMode ? ThemeMode.dark : ThemeMode.light,
      home: AnimatedPortfolioBackground(
        child: PortfolioHome(toggleTheme: toggleTheme),
      ),
    );
  }
}

class PortfolioHome extends StatelessWidget {
  const PortfolioHome({
    super.key,
    required this.toggleTheme,
  });

  final VoidCallback toggleTheme;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: constraints.maxHeight),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.brightness_6),
                        onPressed: toggleTheme,
                      ),
                      const SelectableText(
                        'Santiago Ducos',
                        style: TextStyle(
                          fontSize: 36,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 20),
                      CircleAvatar(
                        radius: 150,
                        backgroundImage: Assets.images.profile.provider(),
                      ),
                      const SizedBox(height: 20),
                      ConstrainedBox(
                        constraints: const BoxConstraints(maxWidth: 600),
                        child: const SelectableText(
                          'I am a passionate Flutter developer creating beautiful '
                          'and responsive web experiences. Welcome to my portfolio!',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                      const SizedBox(height: 30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          SocialIcon(
                            url: 'https://www.linkedin.com/in/santiago-ducos/',
                            icon: FontAwesomeIcons.linkedin,
                          ),
                          SocialIcon(
                            url: 'https://github.com/santiagoduc0s',
                            icon: FontAwesomeIcons.github,
                          ),
                          SocialIcon(
                            url: 'https://www.instagram.com/santiducos/',
                            icon: FontAwesomeIcons.instagram,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class SocialIcon extends StatelessWidget {
  const SocialIcon({
    super.key,
    required this.url,
    required this.icon,
  });

  final String url;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: FaIcon(icon, size: 30),
      onPressed: () {
        final Uri uri = Uri.parse(url);
        launchUrl(uri);
      },
    );
  }
}

class AnimatedPortfolioBackground extends StatefulWidget {
  final Widget child;
  const AnimatedPortfolioBackground({
    super.key,
    required this.child,
  });

  @override
  State<AnimatedPortfolioBackground> createState() =>
      _AnimatedPortfolioBackgroundState();
}

class _AnimatedPortfolioBackgroundState
    extends State<AnimatedPortfolioBackground> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Theme.of(context).colorScheme.primaryContainer,
            Theme.of(context).colorScheme.tertiaryContainer,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: AnimatedBackground(
        behaviour: RandomParticleBehaviour(
          options: ParticleOptions(
            baseColor: Theme.of(context).colorScheme.tertiary,
            particleCount: 100,
            spawnMinSpeed: 30.0,
            spawnMaxSpeed: 70.0,
            spawnMinRadius: 7.0,
            spawnMaxRadius: 15.0,
            opacityChangeRate: 0.25,
            minOpacity: 0.1,
            maxOpacity: 0.4,
          ),
        ),
        vsync: this,
        child: widget.child,
      ),
    );
  }
}
