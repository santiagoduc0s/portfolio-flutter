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
      title: 'Santiago Ducos - Portfolio',
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
                          'and responsive experiences. Welcome to my portfolio!',
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
                      const SizedBox(height: 40),
                      const SelectableText(
                        'Contributions',
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 20),
                      ConstrainedBox(
                        constraints: const BoxConstraints(maxWidth: 800),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            ProjectCard(
                              title: 'Resoul',
                              isComingSoon: true,
                              tech: 'Flutter, Laravel',
                              stores: 'App Store, Play Store, Website',
                              description:
                                  'A curated marketplace for buying and selling pre-owned luxury goods in the UAE.',
                              websiteUrl: 'https://resoul.ae/',
                            ),
                            ProjectCard(
                              title: 'Spoken',
                              tech: 'Flutter, Firebase',
                              stores: 'App Store',
                              description:
                                  'A social network where users share product reviews and discover recommendations from friends.',
                              appStoreUrl:
                                  'https://apps.apple.com/uy/app/spoken-word-of-mouth-market/id6476885624',
                              websiteUrl: 'https://www.spkn.app',
                            ),
                            ProjectCard(
                              title: 'Image Assist',
                              tech: 'Flutter, Firebase, TensorFlow',
                              stores: 'App Store',
                              description:
                                  'An AI-powered medical tool for doctors to capture and analyze patient images using the Movenet model.',
                              appStoreUrl:
                                  'https://apps.apple.com/uy/app/imageassist/id6657948612?platform=iphone',
                            ),
                            ProjectCard(
                              title: 'ReelQuest',
                              tech: 'Flutter, Firebase',
                              stores: 'App Store, Play Store',
                              description:
                                  'A tournament companion app for anglers to track rankings, view past events, and register for new competitions.',
                              appStoreUrl:
                                  'https://apps.apple.com/co/app/reelquest-fishing/id6476787224?platform=iphone',
                              playStoreUrl:
                                  'https://play.google.com/store/apps/details?id=com.reelquestapp.angler&hl=en-US',
                              websiteUrl: 'https://www.reelquestapp.com/',
                            ),
                            ProjectCard(
                              title: 'Foxsys',
                              tech: 'Flutter, Laravel',
                              stores: 'App Store, Play Store',
                              description:
                                  'A remote concierge app that lets users open doors, generate access codes, and monitor building cameras.',
                              appStoreUrl:
                                  'https://apps.apple.com/uy/app/foxsys/id1542356997?platform=iphone',
                              playStoreUrl:
                                  'https://play.google.com/store/apps/details?id=com.foxsys.app2&hl=en-US',
                              websiteUrl: 'https://foxsys.com/',
                            ),
                            ProjectCard(
                              title: 'UBILD',
                              tech: 'React Native, Laravel',
                              stores: 'Internal Distribution',
                              description:
                                  'A platform for construction companies to manage job postings, match workers, and streamline team communications.',
                              websiteUrl:
                                  'https://ubildapp.com',
                            ),
                            ProjectCard(
                              title: 'Altavista',
                              tech: 'Laravel, Livewire',
                              stores: 'Website',
                              description:
                                  'An e-commerce platform tailored for opticians to manage inventory, showcase eyewear, and sell products online.',
                              websiteUrl: 'https://altavistaeuropa.com/',
                            ),
                          ],
                        ),
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

class ProjectCard extends StatefulWidget {
  final String title;
  final String tech;
  final String stores;
  final String description;
  final String? appStoreUrl;
  final String? playStoreUrl;
  final String? websiteUrl;
  final bool isComingSoon;

  const ProjectCard({
    super.key,
    required this.title,
    required this.tech,
    required this.stores,
    required this.description,
    this.appStoreUrl,
    this.playStoreUrl,
    this.websiteUrl,
    this.isComingSoon = false,
  });

  @override
  State<ProjectCard> createState() => _ProjectCardState();
}

class _ProjectCardState extends State<ProjectCard>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _scale;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    )..repeat(reverse: true);

    _scale = Tween<double>(begin: 1.0, end: 1.2).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 10),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  widget.title,
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Spacer(),
                if (widget.isComingSoon)
                  ScaleTransition(
                    scale: _scale,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 10,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.orange.shade700,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Text(
                        'COMING SOON',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          letterSpacing: 1.2,
                        ),
                      ),
                    ),
                  ),
                const SizedBox(width: 10),
              ],
            ),
            const SizedBox(height: 4),
            Text(
              '${widget.tech} • ${widget.stores}',
              style: const TextStyle(fontStyle: FontStyle.italic),
            ),
            const SizedBox(height: 8),
            Text(widget.description),
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                if (widget.appStoreUrl != null)
                  TextButton(
                    onPressed: () => launchUrl(Uri.parse(widget.appStoreUrl!)),
                    child: const Text('App Store'),
                  ),
                if (widget.playStoreUrl != null)
                  TextButton(
                    onPressed: () => launchUrl(Uri.parse(widget.playStoreUrl!)),
                    child: const Text('Play Store'),
                  ),
                if (widget.websiteUrl != null)
                  TextButton(
                    onPressed: () => launchUrl(Uri.parse(widget.websiteUrl!)),
                    child: const Text('Website'),
                  ),
              ],
            ),
          ],
        ),
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
