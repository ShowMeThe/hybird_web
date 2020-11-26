

class Data{
  String imageUrl;
  String contentUrl;
  String name;

  Data(this.imageUrl, this.contentUrl, this.name);
}

class Source{

  static List _cardList = List<Data>();
  static List<Data> getCardList(){
    if(_cardList.isEmpty){
      _cardList..add(Data("https://desktopwalls.net/wp-content/uploads/2015/09/Monte%20Carlo%20Yachts%20"
          "Port%20Panorama%204K%20Ultra%20HD%20Desktop%20Wallpaper.jpg",
          "https://desktopwalls.net/places/monte-carlo-yachts-port-panorama-4k-ultra-hd-desktop-wallpaper","Monte Carlo Yachts Port Panorama"));
      _cardList..add(Data("https://desktopwalls.net/wp-content/uploads/2015/09/Seljalandsfoss%20"
          "Waterfall%20Iceland%204K%20Ultra%20HD%20Desktop%20Wallpaper.jpg",
          "https://desktopwalls.net/nature/seljalandsfoss-waterfall-iceland-4k-ultra-hd-desktop-wallpaper","Seljalandsfoss Waterfall Iceland"));

      _cardList..add(Data("https://desktopwalls.net/wp-content/uploads/2015/09/Monte%20Carlo%20Yachts%20"
          "Port%20Panorama%204K%20Ultra%20HD%20Desktop%20Wallpaper.jpg",
          "https://desktopwalls.net/places/monte-carlo-yachts-port-panorama-4k-ultra-hd-desktop-wallpaper","Monte Carlo Yachts Port Panorama"));
      _cardList..add(Data("https://desktopwalls.net/wp-content/uploads/2015/09/Seljalandsfoss%20"
          "Waterfall%20Iceland%204K%20Ultra%20HD%20Desktop%20Wallpaper.jpg",
          "https://desktopwalls.net/nature/seljalandsfoss-waterfall-iceland-4k-ultra-hd-desktop-wallpaper","Seljalandsfoss Waterfall Iceland"));

      _cardList..add(Data("https://desktopwalls.net/wp-content/uploads/2015/09/Monte%20Carlo%20Yachts%20"
          "Port%20Panorama%204K%20Ultra%20HD%20Desktop%20Wallpaper.jpg",
          "https://desktopwalls.net/places/monte-carlo-yachts-port-panorama-4k-ultra-hd-desktop-wallpaper","Monte Carlo Yachts Port Panorama"));
      _cardList..add(Data("https://desktopwalls.net/wp-content/uploads/2015/09/Seljalandsfoss%20"
          "Waterfall%20Iceland%204K%20Ultra%20HD%20Desktop%20Wallpaper.jpg",
          "https://desktopwalls.net/nature/seljalandsfoss-waterfall-iceland-4k-ultra-hd-desktop-wallpaper","Seljalandsfoss Waterfall Iceland"));

      _cardList..add(Data("https://desktopwalls.net/wp-content/uploads/2015/09/Monte%20Carlo%20Yachts%20"
          "Port%20Panorama%204K%20Ultra%20HD%20Desktop%20Wallpaper.jpg",
          "https://desktopwalls.net/places/monte-carlo-yachts-port-panorama-4k-ultra-hd-desktop-wallpaper","Monte Carlo Yachts Port Panorama"));
      _cardList..add(Data("https://desktopwalls.net/wp-content/uploads/2015/09/Seljalandsfoss%20"
          "Waterfall%20Iceland%204K%20Ultra%20HD%20Desktop%20Wallpaper.jpg",
          "https://desktopwalls.net/nature/seljalandsfoss-waterfall-iceland-4k-ultra-hd-desktop-wallpaper","Seljalandsfoss Waterfall Iceland"));

      _cardList..add(Data("https://desktopwalls.net/wp-content/uploads/2015/09/Monte%20Carlo%20Yachts%20"
          "Port%20Panorama%204K%20Ultra%20HD%20Desktop%20Wallpaper.jpg",
          "https://desktopwalls.net/places/monte-carlo-yachts-port-panorama-4k-ultra-hd-desktop-wallpaper","Monte Carlo Yachts Port Panorama"));
      _cardList..add(Data("https://desktopwalls.net/wp-content/uploads/2015/09/Seljalandsfoss%20"
          "Waterfall%20Iceland%204K%20Ultra%20HD%20Desktop%20Wallpaper.jpg",
          "https://desktopwalls.net/nature/seljalandsfoss-waterfall-iceland-4k-ultra-hd-desktop-wallpaper","Seljalandsfoss Waterfall Iceland"));

    }
    return _cardList;
  }


}