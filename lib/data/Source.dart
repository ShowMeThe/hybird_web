

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
      _cardList.add(Data("https://desktopwalls.net/wp-content/uploads/2018/12/Cat%20Looking%20Up%20Eye%20Closeup%20Dark%20Desktop%20Wallpaper.jpg",
          "https://desktopwalls.net/animals/cat-looking-up-eye-closeup-dark-desktop-wallpaper","Cat Looking Up Eye Closeup Dark"));
      _cardList.add(Data("https://desktopwalls.net/wp-content/uploads/2015/02/Leopard%20Hanging%20In%20Tree%20Desktop%20Wallpaper.jpg",
          "https://desktopwalls.net/animals/leopard-hanging-in-tree-desktop-wallpaper","Leopard Hanging In Tree Desktop"));

      _cardList.add(Data("https://desktopwalls.net/wp-content/uploads/2014/06/Cute%20Baby%20Seal%20White%20Fur%20Free%20Wallpaper%20HD.jpg",
          "https://desktopwalls.net/animals/cute-baby-seal-white-fur-free-wallpaper-hd","Cute Baby Seal White Fur"));
      _cardList.add(Data("https://desktopwalls.net/wp-content/uploads/2014/09/North%20American%20Bald%20Eagle%20Desktop%20Wallpaper.jpg",
          "https://desktopwalls.net/animals/north-american-bald-eagle-desktop-wallpaper","North American Bald Eagle"));


      _cardList.add(Data("https://desktopwalls.net/wp-content/uploads/2016/03/Hamster%20Listening%20To%20Music%20Headphones%20Desktop%20Wallpaper.jpg",
          "https://desktopwalls.net/animals/hamster-listening-to-music-headphones-desktop-wallpaper","Hamster Listening To Music"));
      _cardList.add(Data("https://desktopwalls.net/wp-content/uploads/2014/07/Cat%20Staring%20Big%20Eyes%20And%20Ears%20Desktop%20Wallpaper.jpg",
          "https://desktopwalls.net/animals/cat-staring-big-eyes-and-ears-desktop-wallpaper","Cat Staring Big Eyes And Ears"));

      _cardList.add(Data("https://desktopwalls.net/wp-content/uploads/2015/12/Sparrow%20On%20Tree%20Branch%20Bokeh%20Wildlife%20Photography%20Desktop%20Wallpaper.jpg",
          "https://desktopwalls.net/animals/sparrow-on-tree-branch-bokeh-wildlife-photography-desktop-wallpaper","Sparrow On Tree Branch Bokeh Wildlife"));
      _cardList.add(Data("https://desktopwalls.net/wp-content/uploads/2015/02/Cute%20Blue%20Eyed%20Kittens%20Desktop%20Wallpaper.jpg",
          "https://desktopwalls.net/animals/cute-blue-eyed-kittens-desktop-wallpaper","Cute Blue Eyed Kittens"));

      _cardList.add(Data("https://desktopwalls.net/wp-content/uploads/2014/09/Chameleon%20Hunting%20Insects%20Desktop%20Wallpaper.jpg",
          "https://desktopwalls.net/animals/chameleon-hunting-insects-desktop-wallpaper","Chameleon Hunting Insects"));
      _cardList.add(Data("https://desktopwalls.net/wp-content/uploads/2015/08/Brown%20Cat%20Fruits%20Close%20Up%20Desktop%20Wallpaper.jpg",
          "https://desktopwalls.net/animals/brown-cat-fruits-close-up-desktop-wallpaper","Brown Cat Fruits Close Up"));
    }
    return _cardList;
  }


}