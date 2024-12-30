import 'package:flutter/material.dart';

class Income{
  Icon icon;
  String title;
  String income;
  String date;

  Income(this.icon,this.title,this.income,this.date);
}

List<Income> income = <Income>[
  Income(const Icon(Icons.person_outline_rounded,color: Color(0xff6A58FB),), 'Received From John', '+\$160.00', '1 Jan 2020'),
  Income(const Icon(Icons.person_outline_rounded,color: Color(0xff6A58FB),), 'Received From John', '+\$110.00', '1 Jan 2020'),
  Income(const Icon(Icons.person_outline_rounded,color: Color(0xff6A58FB),), 'Received From John', '+\$100.00', '1 Jan 2020'),
  Income(const Icon(Icons.person_outline_rounded,color: Color(0xff6A58FB),), 'Received From John', '+\$1500.00', '1 Jan 2020'),
  Income(const Icon(Icons.person_outline_rounded,color: Color(0xff6A58FB),), 'Received From John', '+\$1600.00', '1 Jan 2020'),
  Income(const Icon(Icons.person_outline_rounded,color: Color(0xff6A58FB),), 'Received From John', '+\$145.00', '1 Jan 2020'),
  Income(const Icon(Icons.person_outline_rounded,color: Color(0xff6A58FB),), 'Received From John', '+\$140.00', '1 Jan 2020'),
  Income(const Icon(Icons.person_outline_rounded,color: Color(0xff6A58FB),), 'Received From John', '+\$150.00', '1 Jan 2020'),
];

class Donation{
  Icon icon;
  String title;
  String income;
  String date;

  Donation(this.icon,this.title,this.income,this.date);
}

List<Donation> donation = <Donation>[
  Donation(const Icon(Icons.account_balance_wallet_outlined,color: Color(0xff6A58FB),), 'Pending', '+\$56.00', '1 Jan 2020'),
  Donation(const Icon(Icons.account_balance_wallet_outlined,color: Color(0xff6A58FB),), 'Credited to account', '+\$56.00', '1 Jan 2020'),
  Donation(const Icon(Icons.account_balance_wallet_outlined,color: Color(0xff6A58FB),), 'Credited to account', '+\$56.00', '1 Jan 2020'),
  Donation(const Icon(Icons.account_balance_wallet_outlined,color: Color(0xff6A58FB),), 'Credited to account', '+\$56.00', '1 Jan 2020'),
  Donation(const Icon(Icons.account_balance_wallet_outlined,color: Color(0xff6A58FB),), 'Credited to account', '+\$56.00', '1 Jan 2020'),
  Donation(const Icon(Icons.account_balance_wallet_outlined,color: Color(0xff6A58FB),), 'Credited to account', '+\$56.00', '1 Jan 2020'),
  Donation(const Icon(Icons.account_balance_wallet_outlined,color: Color(0xff6A58FB),), 'Credited to account', '+\$56.00', '1 Jan 2020'),
  Donation(const Icon(Icons.account_balance_wallet_outlined,color: Color(0xff6A58FB),), 'Credited to account', '+\$56.00', '1 Jan 2020'),
];

class Withdraw{
  Icon icon;
  String title;
  String income;
  String date;

  Withdraw(this.icon,this.title,this.income,this.date);
}

List<Withdraw> withdraw = <Withdraw>[
  Withdraw(const Icon(Icons.account_balance_wallet_outlined,color: Color(0xff6A58FB),), 'Pending', '-\$56.00', '1 Jan 2020'),
  Withdraw(const Icon(Icons.account_balance_wallet_outlined,color: Color(0xff6A58FB),), 'Credited to account', '-\$56.00', '1 Jan 2020'),
  Withdraw(const Icon(Icons.account_balance_wallet_outlined,color: Color(0xff6A58FB),), 'Credited to account', '-\$56.00', '1 Jan 2020'),
  Withdraw(const Icon(Icons.account_balance_wallet_outlined,color: Color(0xff6A58FB),), 'Credited to account', '-\$56.00', '1 Jan 2020'),
  Withdraw(const Icon(Icons.account_balance_wallet_outlined,color: Color(0xff6A58FB),), 'Credited to account', '-\$56.00', '1 Jan 2020'),
  Withdraw(const Icon(Icons.account_balance_wallet_outlined,color: Color(0xff6A58FB),), 'Credited to account', '-\$56.00', '1 Jan 2020'),
  Withdraw(const Icon(Icons.account_balance_wallet_outlined,color: Color(0xff6A58FB),), 'Credited to account', '-\$56.00', '1 Jan 2020'),
  Withdraw(const Icon(Icons.account_balance_wallet_outlined,color: Color(0xff6A58FB),), 'Credited to account', '-\$56.00', '1 Jan 2020'),
];