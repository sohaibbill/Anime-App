class Movie {
  final String id;
  final String title;
  final String imageUrl;
  final String description;
  final String rating;
  final String year;
  final String duration;

  Movie({
    this.id,
    this.title,
    this.imageUrl,
    this.description,
    this.rating,
    this.year,
    this.duration,
  });

}


final movieList = [
  Movie(
    id: 'tt4154796',
    title: 'One Piece',
    imageUrl: 'https://img1.ak.crunchyroll.com/i/spire4/8056a82e973dde98ebb82abd39dc69731564519729_full.jpg',
    description: 'DescriptionMonkey D. Luffy wants to become the King of all pirates. Along his quest he meets: a skilled swordsman named Roronoa Zolo',
    rating: '8.7',
    year: '1999',
    duration: '892'
  ),
  Movie(
    id: 'tt7286456',
    title: 'Attack On Titan',
    imageUrl: 'http://3.bp.blogspot.com/-sHQNlmGeVfI/U_KCw-TN8NI/AAAAAAABRe4/ODp0evThixM/s1600/AOT-07260_COMBO-front_large.jpg',
    description: 'It is set in a fantasy world where humanity lives within territories surrounded by three enormous walls that protect them from gigantic man-eating humanoids referred to as Titans',
    rating: '8.8',
    year: '2013',
    duration: '25'
  ),
  Movie(
    id: 'tt9248972',
    title: 'Death Note',
    imageUrl: 'https://vignette.wikia.nocookie.net/deathnote/images/7/76/DEATH_NOTE_anime.jpg/revision/latest?cb=20170720215429',
    description: 'The story follows Light Yagami, a teen genius[2] who stumbles across a mysterious otherworldly notebook: the "Death Note", which belonged to the Shinigami Ryuk, and grants the user the supernatural ability to kill anyone whose name is written in its pages',
    rating: '9',
    year: '2007',
    duration: '37'
  ),
  Movie(
    id: 'tt7349950',
    title: 'Hunter x Hunter',
    imageUrl: 'https://vignette.wikia.nocookie.net/disneythehunchbackofnotredame/images/2/20/Hunter_x_Hunter_%282011_Anime%29.jpg/revision/latest?cb=20150828232853',
    description: 'Gon Freecss aspires to become a Hunter, an exceptional being capable of greatness. With his friends and his potential, he seeks for his father who left him when he was younger.',
    rating: '8.9',
    year: '2011',
    duration: '142'
  ),
  Movie(
    id: 'tt6806448',
    title: 'Fullmetal Alchemist',
    imageUrl: 'https://images-na.ssl-images-amazon.com/images/I/91fhhUusE1L.jpg',
    description: 'Two brothers search for a Philosopher\'s Stone after an attempt to revive their deceased mother goes awry and leaves them in damaged physical forms.',
    rating: '9.1',
    year: '2009',
    duration: '24'
  ),
  Movie(
    id: 'tt6105098',
    title: 'Naruto: Shippûden',
    imageUrl: 'https://vignette.wikia.nocookie.net/disneythehunchbackofnotredame/images/a/ae/Naruto_Shippuuden.jpg',
    description: 'Naruto Uzumaki, is a loud, hyperactive, adolescent ninja who constantly searches for approval and recognition, as well as to become Hokage, who is acknowledged as the leader and strongest of all ninja in the village.',
    rating: '8.7',
    year: '2007',
    duration: '500'
  ),
];

final topRatedMovieList = [
  Movie(
    id: 'tt1375666',
    title: 'Kimetsu No Yaiba',
    imageUrl: 'https://i.pinimg.com/originals/e2/dc/7c/e2dc7ce88a5e14559fb3f81b4d1d77c2.jpg',
    description: 'A family is attacked by demons and only Tanjiro and Nezuko  survive, who is turning into a demon slowly. Tanjiro sets out to become a demon slayer .',
    rating: '9',
    year: '2019',
    duration: '26'
  ),
  Movie(
    id: 'tt0468569',
    title: 'The Promised Neverland ',
    imageUrl: 'https://vignette.wikia.nocookie.net/yakusokunoneverland/images/b/ba/US_Volume_1.png',
    description: 'A group of the smartest kids at a seemingly perfect orphanage uncover its dark truth when they a break a rule to never leave the orphanage grounds .',
    rating: '8.9',
    year: '2019',
    duration: '12'
  ),
  Movie(
    id: 'tt0816692',
    title: 'Vinland Saga ',
    imageUrl: 'https://vignette.wikia.nocookie.net/vinlandsaga/images/2/2b/Key_Visual_3.1.png/revision/latest?cb=20190627131600',
    description: 'Thorfinn is the son of one of the Viking\'s greatest warriors, Thors. However, his father is killed by the mercenary leader Askeladd.',
    rating: '8.9',
    year: '2019',
    duration: '15'
  ),
  Movie(
    id: 'tt4633694',
    title: 'Spider-Man',
    imageUrl: 'https://m.media-amazon.com/images/M/MV5BMjMwNDkxMTgzOF5BMl5BanBnXkFtZTgwNTkwNTQ3NjM@._V1_SX300.jpg',
    description: 'Teen Miles Morales becomes Spider-Man of his reality, crossing his path with five counterparts from other dimensions to stop a threat for all realities.',
    rating: '8.4',
    year: '2018',
    duration: '117 min'
  ),
  Movie(
    id: 'tt1187043',
    title: '3 Idiots',
    imageUrl: 'https://m.media-amazon.com/images/M/MV5BNTkyOGVjMGEtNmQzZi00NzFlLTlhOWQtODYyMDc2ZGJmYzFhXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_SX300.jpg',
    description: 'Two friends are searching for their long lost companion. They revisit their college days and recall the memories of their friend who inspired them to think differently, even as the rest of the world called them \"idiots\".',
    rating: '8.4',
    year: '2009',
    duration: '170 min'
  ),
  Movie(
    id: 'tt1049413',
    title: 'Up',
    imageUrl: 'https://m.media-amazon.com/images/M/MV5BMTk3NDE2NzI4NF5BMl5BanBnXkFtZTgwNzE1MzEyMTE@._V1_SX300.jpg',
    description: 'Seventy-eight year old Carl Fredricksen travels to Paradise Falls in his home equipped with balloons, inadvertently taking a young stowaway.',
    rating: '8.2',
    year: '2009',
    duration: '96 min'
  ),
];

final bestMovieList = [
  Movie(
    id: 'tt0437086',
    title: 'Alita: Battle Angel',
    imageUrl: 'https://m.media-amazon.com/images/M/MV5BNzVhMjcxYjYtOTVhOS00MzQ1LWFiNTAtZmY2ZmJjNjIxMjllXkEyXkFqcGdeQXVyNTc5OTMwOTQ@._V1_SX300.jpg',
    description: 'A deactivated cyborg is revived, but cannot remember anything of her past life and goes on a quest to find out who she is.',
    rating: '7.4',
    year: '2019',
    duration: '122 min'
  ),
  Movie(
    id: 'tt6320628',
    title: 'Spider-Man',
    imageUrl: 'https://m.media-amazon.com/images/M/MV5BMGZlNTY1ZWUtYTMzNC00ZjUyLWE0MjQtMTMxN2E3ODYxMWVmXkEyXkFqcGdeQXVyMDM2NDM2MQ@@._V1_SX300.jpg',
    description: 'Following the events of Avengers: Endgame (2019), Spider-Man must step up to take on new threats in a world that has changed forever.',
    rating: '7.7',
    year: '2019',
    duration: '129 min'
  ),
  Movie(
    id: 'tt1979376',
    title: 'Toy Story 4',
    imageUrl: 'https://m.media-amazon.com/images/M/MV5BMTYzMDM4NzkxOV5BMl5BanBnXkFtZTgwNzM1Mzg2NzM@._V1_SX300.jpg',
    description: 'When a new toy called \"Forky\" joins Woody and the gang, a road trip alongside old and new friends reveals how big the world can be for a toy.',
    rating: '8.1',
    year: '2019',
    duration: '100 min'
  ),
];