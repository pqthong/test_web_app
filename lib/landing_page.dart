import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  void _launchURL(String _url) async {
    if (!await launch(_url)) throw 'Could not launch $_url';
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        gradient:
            LinearGradient(colors: [Color(0xff213A50), Color(0xff071930)]),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipRRect(
            child: Image.asset(
              "assets/images/profile.jpg",
              width: 200,
              height: 200,
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(100),
          ),
          Container(
              padding: const EdgeInsets.only(top: 12),
              child: const Text(
                "Phan Quang Thong",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              )),
          Container(
            child: const Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam vehicula nisi eu massa auctor ullamcorper. Donec ut arcu quis sapien varius maximus.",
              style: TextStyle(fontSize: 15, color: Colors.white),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 64),
          ),
          Container(
              padding: const EdgeInsets.only(top: 14),
              child: const Text(
                "Connect with me",
                style: TextStyle(color: Colors.white, fontSize: 14),
              )),
          Container(
            margin: const EdgeInsets.only(top: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    _launchURL("https://www.facebook.com/phanquang.thong.792/");
                  },
                  child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Image.asset(
                        "assets/images/facebook.png",
                        color: Colors.white,
                        width: 32,
                        height: 32,
                      )),
                ),
                GestureDetector(
                  onTap: () {
                    _launchURL("https://www.instagram.com/?hl=en");
                  },
                  child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Image.asset(
                        "assets/images/insta.png",
                        color: Colors.white,
                        width: 32,
                        height: 32,
                      )),
                ),
                GestureDetector(
                  onTap: () {
                    _launchURL("https://twitter.com/");
                  },
                  child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Image.asset(
                        "assets/images/twitter.png",
                        color: Colors.white,
                        width: 32,
                        height: 32,
                      )),
                ),
              ],
            ),
          ),
          Container(
              child: const Center(
                child: Text("Download my resume",style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,fontWeight: FontWeight.w600
                ),
                ),
              ),
            margin: const EdgeInsets.only(top: 32),
            decoration: BoxDecoration(
              color: Colors.brown,
              borderRadius: BorderRadius.circular(20)
            ),
            width: 326,
            height: 64,
          )
        ],
      ),
    );
  }
}
