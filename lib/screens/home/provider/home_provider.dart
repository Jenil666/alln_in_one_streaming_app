import 'package:flutter/cupertino.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomeProvider extends ChangeNotifier
{
  int i = 0;
  WebViewController? web;
  List showname = [
    "Bhediya",
    "Farzi",
    "Mirza pur",
    "Money Hiest",
    "Pathaan",
    "Pushpa",
    "Squid Game",
  ];
  void changeimage(int value)
  {
    i = value;
    notifyListeners();
  }
  List appLogo = [
    "assets/images/amazon_prime.jpg",
    "assets/images/disney.jpg",
    "assets/images/itunes.jpg",
    "assets/images/jiotv.jpg",
    "assets/images/netflix.jpg",
    "assets/images/sony.jpg",
    "assets/images/voot.jpg",
    "assets/images/zee5.jpg",
  ];
  List appName = [
    "Amazon Prime",
    "Disney Plus Hotstar",
    "iTunes",
    "Jio Cinema",
    "NETFLIX",
    "Soney Liv",
    "Voot",
    "Zee 5",
  ];
  List Urls = [
    "https://www.primevideo.com/",
    "https://www.hotstar.com/in",
    "https://www.apple.com/in/itunes/",
    "https://www.jiocinema.com/",
    "https://www.netflix.com/in/",
    "https://www.sonyliv.com/",
    "https://www.voot.com/",
  ];

  void urlLauder (int index)
  {
    web = WebViewController()..setJavaScriptMode(JavaScriptMode.unrestricted)..loadRequest(Uri.parse("${Urls[index]}"));
  }
}