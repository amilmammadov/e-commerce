import 'dart:io';

void main(List<String> args) {
  String productName = 'T-shirt';
  num productPrice = 50;
  int productCount = 2;
  num balance = 500;
  num deliverPrice = 5;

  print(
      'SISTEME DAXIL OLMAQ UCUN USERNAME VE PASSWORDU DAXIL EDIN:'); // username: amilmammadov, password: 123

  String? userName = stdin.readLineSync();
  String? password = stdin.readLineSync();

  if ((userName == 'amilmammadov') && (password == '123')) {
    print('SISTEME UGURLA DAXIL OLDUNUZ!');
    print(
        'Sebetde olan mehsul: $productName, Mehsul sayi: $productCount, umumi qiymet: ${productPrice * productCount}');
    print('-----------------------------------------------------------------');
    print(
        'ODENIS QAYDASIN SECIN ZEHMET OLMAZSA \n1.Kartla odenis \n2.Catdirilma \n3.Kredit');

    String? chooseMethod = stdin.readLineSync();

    switch (chooseMethod) {
      case "1":
        print('Odenisiniz: ${productCount * productPrice}');
        print(
            'BANKI SECIN ZEHMET OLMAZSA: \n1.Kapital Banl \n2.Pasa Bank \n3.Xalq Bank');
        print(
            'Odenis ugurla tamamlandi! \namilOdenilmis mebleg: ${productPrice * productCount}');
        print('Balansiniz: ${balance - productCount * productPrice}');
        break;

      case '2':
        print(
            'Catdırılma xerci : $deliverPrice \nOdenilecek mebleg: ${productPrice * productCount + deliverPrice} Odenisiniz ugurla tamamlandir! \nBalansiniz: ${balance - (productCount * productPrice + deliverPrice)}');
        break;

      case '3':
        print('1. 3 ayliq taksit \n2. 6 ayliq taksit \n3. 12 ayliq taksit');
        String? creditMethod = stdin.readLineSync();
        switch (creditMethod) {
          case '1':
            print('Odenilecek mebleg: ${productPrice * productCount}');
            print(
                'Odenisiniz ugurla tamamlandi! \nBalansiniz: ${balance - (productPrice * productCount)}');
            break;
          case '2':
            print(
                'Odenilecek mebleg: ${((productPrice * 90) / 100) * productCount}');
            print(
                'Odenisiniz ugurla tamamlandi! \nBalansiniz: ${balance - (((productPrice * 90) / 100) * productCount)}');
            break;
          case '3':
            print(
                'Odenilecek mebleg: ${((productPrice * 60) / 100) * productCount}');
            print(
                'Odenisiniz ugurla tamamlandi! \naBalansiniz: ${balance - (((productPrice * 60) / 100) * productCount)}');
            break;
        }
    }
  } else {
    print('GIRIS MELUMATLARINIZI DUZGUN YAZIN!');
  }
}
