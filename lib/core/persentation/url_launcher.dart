import 'package:injectable/injectable.dart';
import 'package:url_launcher/url_launcher.dart';

@injectable
class UrlLauncher {
  Future<void> tryLaunchUrl(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    }
  }
}
