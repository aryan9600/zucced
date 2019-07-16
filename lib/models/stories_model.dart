class StoriesModel{
  String name;
  String picUrl;

  StoriesModel({this.name, this.picUrl});
}

List<StoriesModel> storiesData = [
  new StoriesModel(
    name: 'Michael Scott',
    picUrl: "https://vignette.wikia.nocookie.net/theoffice/images/9/96/Prisonmike.png/revision/latest?cb=20100327171549"
  ),
  new StoriesModel(
    name: 'Jim Halpert',
    picUrl: "https://i.kym-cdn.com/photos/images/newsfeed/001/240/701/1e8.jpg"
  ),
  new StoriesModel(
    name: 'Dwight Schrute',
    picUrl: "https://i.kinja-img.com/gawker-media/image/upload/s--g9wRsUiV--/c_scale,f_auto,fl_progressive,q_80,w_800/lfvhlzo92ot67mwwb2yp.jpg"
  ),
  new StoriesModel(
    name: 'Andrew Bernard',
    picUrl: "https://i.pinimg.com/originals/00/66/c1/0066c1bd832dc24b808e1c47557070a6.jpg"
  ),
  new StoriesModel(
    name: 'Pam Beesly',
    picUrl: "https://i.redd.it/ni1laysdwzp11.jpg"
  ),
];
