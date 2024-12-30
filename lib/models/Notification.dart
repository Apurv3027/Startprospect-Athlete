class Noti{
  String profileImage;
  String notification;
  String time;

  Noti(this.profileImage,this.notification,this.time);
}

List<Noti> not = <Noti>[
  Noti("assets/image/logo5.png", "John Doe add  ed a comment on the", "1h"),
  Noti("assets/image/logo6.png", "Jessia Rose liked your submitted \nnews tip", "2h"),
  Noti("assets/image/logo5.png", "Adam Clark replied to your submitted \nnews tip", "02/04/2021"),
  Noti("assets/image/logo6.png", "Jessia Rose replied to your submitted \ncontent suggestion", "01/04/2021"),
  Noti("assets/image/logo5.png", "Adam Clark shared post on newsfeed", "31/03/2021"),
  Noti("assets/image/logo5.png", "Adam Clark marked as a done your \nsubmitted news tip", "29/03/2021"),
];