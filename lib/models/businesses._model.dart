class Businesses{
  String title;
  String imageUrl;
  String status;
  String text;
  String category;

  Businesses({this.title, this.imageUrl, this.text, this.category, this.status});
}

List<Businesses> businessData = [
  Businesses(
    title:'101.5 TODAY RADIO',
    imageUrl: 'https://image.winudf.com/v2/image1/Y29tLmNvbW1vdGlvbi5DS0NFX3NjcmVlbl8wXzE1NTI3MjA5MTNfMDY5/screen-0.jpg?h=355&fakeurl=1&type=.jpg',
    text: 'Listen to the latest pop songs',
    status: ' ',
    category: 'Suggested'
  ),
  Businesses(
    title:'Funk You',
    status: '',
    imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTI8gdw3xnIBoM1oC7IPsl-BWvFof6YhUaDuYYiHbrZj1TXlM-ZNw',
    text: 'Funny Pranks',
    category: 'Suggested'
  ),
  Businesses(
    title:'MeditateBot',
    imageUrl: 'https://scontent.fnag1-2.fna.fbcdn.net/v/t1.0-9/16105585_1718632635118765_4037863153081112711_n.png?_nc_cat=1&_nc_oc=AQntqHt0gfyxEAAOimdXAafNj5BKZTUevPdARDicFTJ7HljbVbaN4tsFrcvPSCT0eIU&_nc_ht=scontent.fnag1-2.fna&oh=352ade360dcd88c85dce71ef30af9ae8&oe=5DB0E417',
    text: 'Start forming a daily meditation habit',
    status: 'Typically replies instantly',
    category: 'Featured'
  ),
  Businesses(
    title:'Pinterest',
    imageUrl: 'https://i.pinimg.com/280x280_RS/a8/ef/98/a8ef985655a5b4b2b5d1dbb7b47dfc9c.jpg',
    text: 'Find and share new ideas to try',
    status: 'Typically replies instantly',
    category: 'Featured'
  ),
  Businesses(
    title:'HDFC Bank OnChat',
    imageUrl: 'https://www.hdfcbank.com/htdocs/onChat/images/logo.png',
    text: 'Recharge, Pay Bills & book a bus or a Cab',
    status: 'Typically replies instantly',
    category: 'Featured'
  ),
  Businesses(
    title: 'YourStory',
    imageUrl: 'https://www.hdfcbank.com/htdocs/onChat/images/logo.png',
    text: 'India\'s leading site for entrepreneurs',
    status: 'Typically replies instantly',
    category: 'Popular'
  ),
  Businesses(
    title:'Sony MAX',
    imageUrl: 'https://image3.mouthshut.com/images/imagesp/925739638s.png',
    text: 'Get Bollywood updates from Filmykaant',
    status: 'Typically shows only Sooryavansham',
    category: 'Popular'
  ),
  Businesses(
    title:'Arsenal',
    imageUrl: 'https://i.pinimg.com/originals/b3/62/68/b362686170e30ca7ee9a0f9ebe4a2d1d.gif',
    text: 'Just hope to get in the top six this time',
    status: 'Typically fucks up every season',
    category: 'Popular'
  ),
];