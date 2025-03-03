class Message{
  String image;
  String title;
  String subTitle;
  String DateAndTime;

  Message(this.image,this.title,this.subTitle,this.DateAndTime);
}

List<Message> message = <Message>[
  Message("assets/image/logo7.png", "Walk-On's Bistreaux & Bar", "Hello", "8:30 AM"),
  Message("assets/image/Rectangle 6.png", "John Doe", "Lorem Ipsum..", "14/03/22"),
  Message("assets/image/logo7.png", "Walk-On's Bistreaux & Bar", "Hello", "8:30 AM"),
  Message("assets/image/Rectangle 6.png", "John Doe", "Ok fine.", "13/03/22"),
  Message("assets/image/Rectangle 6.png", "John Doe", "Hello", "12/03/22"),
  Message("assets/image/Rectangle 6.png", "John Doe", "Lorem Ipsum is dummy text", "10/03/22"),
  Message("assets/image/Rectangle 6.png", "John Doe", "Ok, Done.", "09/03/22"),
];

class Sent{
  String logo;
  String profileName;
  String msg;
  String time;

  Sent(this.logo,this.profileName,this.msg,this.time);
}

List<Sent> sent = <Sent>[
  Sent("assets/image/logo7.png", "Walk-On's Bistreaux & Bar", "Hello", "8:30 AM"),
  Sent("assets/image/logo7.png", "Walk-On's Bistreaux & Bar", "Hello", "8:30 AM"),
  Sent("assets/image/Rectangle 6.png", "John Doe", "Ok fine.", "13/03/22"),
  Sent("assets/image/Rectangle 6.png", "John Doe", "Hello", "12/03/22"),
  Sent("assets/image/Rectangle 6.png", "John Doe", "Lorem Ipsum is dummy text", "10/03/22"),
  Sent("assets/image/Rectangle 6.png", "John Doe", "Ok, Done.", "09/03/22"),
  Sent("assets/image/Rectangle 6.png", "John Doe", "Ok, Done.", "09/03/22"),
];