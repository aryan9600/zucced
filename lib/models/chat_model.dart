class ChatModel{
  String name;
  String message;
  String dpUrl;
  String time;

  ChatModel({this.name, this.message, this.dpUrl, this.time}); 
}

List<ChatModel> dummyData = [
  new ChatModel(
    name: "Michael Scott",
    message: "That's what she said",
    dpUrl: 'https://img.buzzfeed.com/buzzfeed-static/static/2016-07/22/18/campaign_images/buzzfeed-prod-fastlane01/michael-scott-quotes-that-are-still-hilarious-2-10277-1469225647-3_dblbig.jpg',
    time: '12:30'
  ),
  new ChatModel(
    name: "Jim Halpert",
    message: "*looks at the camera*",
    dpUrl: 'https://miro.medium.com/max/1400/0*Xz-_cHSO6txphvHt.png',
    time: '12:30'
  ),
  new ChatModel(
    name: "Dwight Schrute",
    message: "Bears. Beets. Battlestar Galactica.",
    dpUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTnY1T6dxYCNSnS0cPXXtU30OzqI_XWCcHudA0rRrpIfZi2ykMmPQ',
    time: '12:30'
  ),
  new ChatModel(
    name: "Pam Beesly",
    message: "Dunder Mifflin. This is Pam.",
    dpUrl: 'https://i.ytimg.com/vi/khhjncIzgU8/maxresdefault.jpg',
    time: '12:30'
  ),
  new ChatModel(
    name: "Andrew Bernard",
    message: "I went to Cornell",
    dpUrl: 'https://millithought.files.wordpress.com/2015/05/andy-andy-bernard-16100805-512-288.jpg?w=640',
    time: '12:30'
  ),
  new ChatModel(
    name: "Kevin Malone",
    message: "Me think, why waste time say lot word, when few word do trick",
    dpUrl: 'https://upload.wikimedia.org/wikipedia/en/thumb/6/60/Office-1200-baumgartner1.jpg/260px-Office-1200-baumgartner1.jpg',
    time: '12:30'
  ),
  new ChatModel(
    name: "Stanley Hudson",
    message: "Shove it up your butt",
    dpUrl: 'https://www.datocms-assets.com/151/1471782468-stanley.png?w=500&fm=jpg',
    time: '12:30'
  ),
];