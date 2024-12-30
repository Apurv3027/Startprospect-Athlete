import 'package:flutter/cupertino.dart';

class Lik{
  AssetImage profile;
  String ProfileName;
  String userName;
  String position;

  Lik(this.profile,this.ProfileName,this.userName,this.position);
}

List<Lik> lik = <Lik>[
  Lik(const AssetImage('assets/image/logo3.png'), "John Deo", "@johndoe", "Athlete"),
  Lik(const AssetImage('assets/image/logo4.png'), "Johnny Marca", "@johnny12", "Coach"),
  Lik(const AssetImage('assets/image/logo8.png'), "John Deo", "@johndoe", "Athlete"),
  Lik(const AssetImage('assets/image/logo9.png'), "Johnny Marca", "@johnny12", "Coach"),
  Lik(const AssetImage('assets/image/logo8.png'), "John Deo", "@johndoe", "Athlete"),
  Lik(const AssetImage('assets/image/logo4.png'), "Johnny Marca", "@johnny12", "Coach"),
  Lik(const AssetImage('assets/image/logo3.png'), "John Deo", "@johndoe", "Athlete"),
  Lik(const AssetImage('assets/image/logo4.png'), "Johnny Marca", "@johnny12", "Coach"),
];