class Book {
  final String id;
  final String title;
  final String author;
  final String description;
  final String coverImage;
  final String pdfPath;
  final Category category;

  Book({
    required this.id,
    required this.title,
    required this.author,
    required this.description,
    required this.coverImage,
    required this.pdfPath,
    required this.category,
  });
}

List<Book> getBooks() {
  return [
    Book(
      id: '1',
      title: 'Naftaydaay Gacalo',
      author: 'Maxamed qaamuus',
      description:
          'Buugaan waxa uu ka hadlayaa naf la hadalka iyo jacaylka aadunuh siin karo nafiisa',
      coverImage: 'assets/images/NaftaydaayGacalo.jpeg',
      pdfPath: 'assets/books/NaftaydaayGacalo.pdf',
      category: Category.selfHelp,
    ),
    Book(
      id: '2',
      title: 'Hadimo Jacayl',
      author: 'Mukhtaar Abdi',
      description: 'Buugii ugu horeeyay aan qoray',
      coverImage: 'assets/images/HadimoJacayl.jpg',
      pdfPath: 'assets/books/HadimoJacayl.pdf',
      category: Category.romance,
    ),
    Book(
      id: '3',
      title: 'Lacag Baa Wax Tarta',
      author: 'ahmed jama',
      description:
          'Buuggan wuxuu ka hadlayaa bangiyada(adeegyada bangiyada) Miisaaniyadda(dakhligaaga sida loo maareeyo)Daymaha iyo amaahaha. Xatooyada macluumaadka, sida looga hortago iyo sida looga daba tago.',
      coverImage: 'assets/images/LacagBaaWaxTarta.jpg',
      pdfPath: 'assets/books/LacagBaaWaxTarta.pdf',
      category: Category.business,
    ),
    Book(
      id: '4',
      title: 'Laabta Ka Soco',
      author: 'Caliqeyr M. Nuur',
      description: 'Buug il saddexaad ii furay',
      coverImage: 'assets/images/LaabtaKaSoco.jpg',
      pdfPath: 'assets/books/LaabtaKaSoco.pdf',
      category: Category.selfHelp,
    ),
    Book(
      id: '5',
      title: 'SAFARKII NOLOSHA',
      author: 'Naima Hassan',
      description:
          'shekada ama qisadaan aan u bixiyay"safarkii nolosha kula kulmay"waxaan ka soo xigtay mid kamidadhalinyarada somaliyeed oo igala sooxariiray alada telegram ka runtii maahi qoraa wayn amaba buug so sarelawada yaqaan lakin hadana waxaanjeclahay shekooyin ka qalbi taabdkaee aan maqlo in aan wax ka qoro.Qisada way wajiyo badantahaywaxayna ka hadlaysaa dhowr nooc oonolosha haba ugu horeyo"jacelke".',
      coverImage: 'assets/images/SAFARKIINOLOSHA.jpg',
      pdfPath: 'assets/books/SAFARKIINOLOSHA.pdf',
      category: Category.travel,
    ),
    Book(
      id: '6',
      title: 'Xanuun-Qoto Dheer',
      author: 'Naima Hassan',
      description:
          'Dhiganahan aan ogu magac daray xanuun qoto dheer iyo nolol adag (deep pain and hard life) waasheeko xaqiiqa oo aan ka qoraya qof dhalinyaraiyo sidoo kale xalado aan ku dhex arkay bulshadasababta aan u qoray ciwaan kaan ayaa ah in aan uarkay inay jiran malaayiin qof oo dareemay xanuuno qoto dheer inta ay nolayeen sidoo kaleku nooladay nolol aan sahlanayn hadana wayay qof ay u sheegtaan waxaa jira dadyow badan oo ku nool dunidaan aan ku noolnahay hadana soo maray xalado kala duduwan oo adag...',
      coverImage: 'assets/images/Xanuun-Qoto Dheer.jpg',
      pdfPath: 'assets/books/Xanuun-Qoto Dheer.pdf',
      category: Category.philosophy,
    ),
    Book(
      id: '7',
      title: 'Waad Awoodaa',
      author: 'Guled Casaan',
      description: "Qormooyin kooban oo wax ku tari kara",
      coverImage: 'assets/images/Waad Awoodaa.jpg',
      pdfPath: 'assets/books/Waad Awoodaa.pdf',
      category: Category.selfHelp,
    ),
    Book(
      id: '8',
      title: 'Cilmiga Ultrasound',
      author: 'Cabdirisaaq Axmed Maxamuud',
      description: "Buugaan Waxa Uu ka hadlayaa Barashada Cilmiga Ultrasound",
      coverImage: 'assets/images/Cilmiga Ultrasound.jpg',
      pdfPath: 'assets/books/Cilmiga Ultrasound.pdf',
      category: Category.health,
    ),
    Book(
      id: '9',
      title: 'Maalgasho Wakhtigaaaga',
      author: 'AbdiAziiz Yusuf Abdullahi “AYSAR',
      description: "",
      coverImage: 'assets/images/Maalgasho Wakhtigaaaga.jpg',
      pdfPath: 'assets/books/Maalgasho Wakhtigaaaga.pdf',
      category: Category.selfHelp,
    ),
    Book(
      id: '10',
      title: 'Ugaaso Qiso',
      author: 'Maag Cumar',
      description:
          'UGAASO CAAGANE WAA GABAR QURUXBADAN, waa gabar uu Alle ku manaystay qurux, waa dhuubo dhex yar leh midabka casaanka mugdiga ah oo waa maareen xigeenka ama mas ciideedka, waa qalanjo qoor dheer kala baxsan oo dhererkeeduna dhexdhaxaad yahay…',
      coverImage: 'assets/images/Ugaaso.jpg',
      pdfPath: 'assets/books/Ugaaso.pdf',
      category: Category.mystery,
    ),
    Book(
      id: '11',
      title: 'Kala Maan',
      author: 'Muxumed Maxamed Muxumed',
      description: "Bilowga Burburka wada Hadalada Somalia Iyo Somaliland",
      coverImage: 'assets/images/Kala Maan.jpg',
      pdfPath: 'assets/books/Kala Maan.pdf',
      category: Category.politics,
    ),
    Book(
      id: '12',
      title: 'Cawayska Saamalaylka',
      author: 'Cali Ileeye',
      description:
          "Waxaan u hibeeyay diiwaankan habeen noolayaasha dhafarka badan, heer ay xiddigaha oo dhan tiriyeen",
      coverImage: 'assets/images/Cawayska Saamalaylka.jpg',
      pdfPath: 'assets/books/Cawayska Saamalaylka.pdf',
      category: Category.history,
    ),
    Book(
      id: '13',
      title: 'SEESKA FALSAFADA',
      author: 'Maxamed Faysal Maxamed',
      description:
          "Waxaan u hibeeyay diiwaankan habeen noolayaasha dhafarka badan, heer ay xiddigaha oo dhan tiriyeen",
      coverImage: 'assets/images/SEESKA FALSAFADA.jpg',
      pdfPath: 'assets/books/SEESKA FALSAFADA.pdf',
      category: Category.history,
    ),
    Book(
      id: '14',
      title: 'Barashada Afka Maayga',
      author: 'Cabdirahmaan Yuunis Abshir',
      description:
          "Buugaan Waa Aasaska Barashada Lahjada Maayga Ee Afka Soomaaliga",
      coverImage: 'assets/images/Barashada Afka Maayga.jpg',
      pdfPath: 'assets/books/Barashada Afka Maayga.pdf',
      category: Category.education,
    ),
    Book(
      id: '15',
      title: 'Mucjisooyinka Geela',
      author: 'Abdulahi Abdirahman Cali',
      description:
          "Buugaan Waxa Uu ka Hadlayaa Mucjisooyinka Gaarka Ee uu Alle Weyne Ku Galadaystay Geela ",
      coverImage: 'assets/images/Mucjisooyinka Geela.jpg',
      pdfPath: 'assets/books/Mucjisooyinka Geela.pdf',
      category: Category.mystery,
    ),
  ];
}

enum Category {
  education,
  history,
  politics,
  business,
  children,
  comics,
  cooking,
  health,
  mystery,
  philosophy,
  religion,
  romance,
  selfHelp,
  technology,
  travel,
}

String getCategoryString(Category category) {
  switch (category) {
    case Category.history:
      return 'History';
    case Category.business:
      return 'Business';
    case Category.education:
      return 'Education';
    case Category.children:
      return 'Children';
    case Category.comics:
      return 'Comics';
    case Category.cooking:
      return 'Cooking';
    case Category.health:
      return 'Health';
    case Category.mystery:
      return 'Mystery';
    case Category.philosophy:
      return 'Philosophy';
    case Category.religion:
      return 'Religion';
    case Category.romance:
      return 'Romance';
    case Category.selfHelp:
      return 'Self Help';
    case Category.technology:
      return 'Technology';
    case Category.travel:
      return 'Travel';
    case Category.politics:
      return 'Politics';
    default:
      return '';
  }
}
