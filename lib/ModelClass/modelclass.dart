class   JocksDetail {
  final String? createdAt;
  final String? iconUrl;
  final String? id;
  final String? updatedAt;
  final String? url;
  final String? value;

  JocksDetail({
    required this.createdAt,
    required this.iconUrl,
    required this.id,
    required this.updatedAt,
    required this.url,
    required this.value,
  });

  factory JocksDetail.fromJson(Map map){
    return JocksDetail(
        createdAt: map['created_at'],
        iconUrl: map['icon_url'],
        id: map['id'],
        updatedAt: map['updated_at'],
        url: map['url'],
        value: map['value']);
  }
}

class favorite {
  final String? fav_jokes;
  favorite({required this.fav_jokes});
}

List<favorite> liked_jokes = [];


class CatagaryList {
  final String? Image;
  CatagaryList({required this.Image});
}
  List<CatagaryList> Categories = [
   CatagaryList( Image:'https://i.chzbgr.com/full/9127182592/h6ECFC824'),
   CatagaryList( Image:'https://i.pinimg.com/736x/85/68/c0/8568c007768d94f264d66ffbb52331ac.jpg'),
   CatagaryList( Image:'https://www.cinejosh.com/newsimg/newsmainimg/ananya-pandey_b_0901240741.jpg'),
   CatagaryList( Image:'https://bestlifeonline.com/wp-content/uploads/sites/3/2024/03/best-dark-jokes.jpg?quality=82&strip=all&w=500'),
   CatagaryList( Image:'https://imgix.bustle.com/uploads/image/2023/6/29/fbfd0e52-23e3-4ff0-9e9b-50098f394671-insert-nose.jpg?w=414&h=414&fit=crop&crop=faces&auto=format%2Ccompress'),
   CatagaryList( Image:'https://www.just-style.com/wp-content/uploads/sites/27/2023/08/shutterstock_258257798.jpg'),
   CatagaryList( Image:'https://www.tasteofhome.com/wp-content/uploads/2018/02/noodledadjoke.jpg'),
   CatagaryList( Image:'https://i.redd.it/4luj0p8g13s71.jpg'),
   CatagaryList( Image:'https://walletsquirrel.com/wp-content/uploads/2021/04/Money-Jokes-for-Instagram33-705x705.jpg'),
   CatagaryList( Image:'https://i.ytimg.com/vi/cTR8zpavXvI/hqdefault.jpg'),
   CatagaryList( Image:'https://qph.cf2.quoracdn.net/main-qimg-23e83c41ee2adad7737fb4214cc2ee97-pjlq'),
   CatagaryList( Image:'https://i.pinimg.com/236x/8e/4f/9b/8e4f9b4dcccfba4927d58da7d4371f7a.jpg'),
   CatagaryList( Image:'https://hips.hearstapps.com/hmg-prod/images/funny-science-jokes5-1652978910.jpg'),
   CatagaryList( Image:'https://c.ndtvimg.com/2019-11/4mjs20j_virat-kohli-rishabh-pant-twitter_625x300_05_November_19.jpg'),
   CatagaryList( Image:'https://www.boredpanda.com/blog/wp-content/uploads/2023/05/travel-jokes-cover_800.jpg'),
   CatagaryList( Image:'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQW4xGVULTRGaqoncmReNfIwSUgt6SQsImoydRUOgyS4w&s'),
  ];

