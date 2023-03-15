mixin Fluttering {
  void flutter() {
    print('fluttering');
  }
}
mixin Pecking on Bird {
  void peck() {
    print('pecking');
    chirp();
  }
}

abstract class Insect {
  void crawl() {
    print('crawling');
  }
}

abstract class AirborneInsect extends Insect with Fluttering {
  void buzz() {
    print('buzzing annoyingly');
  }
}

class Mosquito extends AirborneInsect {
  void doMosquitoThing() {
    crawl();
    flutter();
    buzz();
    print('sucking blood');
  }
}

abstract class Bird with Fluttering {
  void chirp() {
    print('chirp chirp');
  }

  // Duplicate method
  @override
  void flutter() {
    print('fluttering');
  }
}

class Swallow extends Bird {
  void doSwallowThing() {
    chirp();
    flutter();
    print('eating a mosquito');
  }
}

class Sparrow extends Bird with Pecking {}

class BlueJay extends Bird with Pecking {}
