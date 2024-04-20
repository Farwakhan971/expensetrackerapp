import 'dart:async';

class GreetingWidget {
  String _greeting = '';

  GreetingWidget() {
    _updateGreeting();
    // Update greeting every minute
    Timer.periodic(Duration(minutes: 1), (timer) {
      _updateGreeting();
    });
  }

  void _updateGreeting() {
    final hour = DateTime.now().hour;
    if (hour >= 5 && hour < 12) {
      _greeting = 'Good morning';
    } else if (hour >= 12 && hour < 17) {
      _greeting = 'Good afternoon';
    } else if (hour >= 17 && hour < 21) {
      _greeting = 'Good evening';
    } else {
      _greeting = 'Good night';
    }
  }

  String getGreeting() {
    return _greeting;
  }
}
