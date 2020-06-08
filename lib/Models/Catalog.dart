class Movie {
  String imageUrl;
  String videoUrl;
  String title;
  String year;
  String description;
  String relevance;
  String logo;
  String subtitleComicSoon;
  String dateComicSoon;

  Movie(
      {this.imageUrl,
      this.videoUrl,
      this.title,
      this.year,
      this.description,
      this.relevance,
      this.logo,
      this.subtitleComicSoon,
      this.dateComicSoon});
}

final List<Movie> movies = [
  Movie(
      imageUrl:
          'https://i2.wp.com/trecobox.com.br/wp-content/uploads/2020/05/parasyte-netflix.jpg?fit=1000%2C600&ssl=1',
      videoUrl: "https://www.youtube.com/watch?v=rj63TDpaBWk",
      title: "Parasyte",
      year: "2018",
      description:
          "Kiseijuu, também conhecido como Parasyte, é um mangá escrito e ilustrado por Hitoshi Iwaaki que estreou na revista Morning Open Zōkan da Kodansha entre 1988 e 1989.",
      relevance: "98% relevante",
      logo:
          "https://occ-0-1068-1722.1.nflxso.net/dnm/api/v6/TsSRXvDuraoJ7apdkH6tsHhf-ZQ/AAAABfwrxRIVkA6F51AjoNPpD7G7pg0Z1z00Z8NDyGADGE9Ao0zwFXljDd-BqXfEcVYKORX6CCw9znbVFujR1Dn602-U4p1nxfTUvQ8T.png?r=880",
      subtitleComicSoon: "Temporada 1",
      dateComicSoon: "17 de mai"),
  Movie(
      imageUrl:
          "https://observatoriodocinema.elav.tmp.br/wp-content/uploads/2020/05/Expresso-do-Amanha-filme.jpg",
      videoUrl: "https://www.youtube.com/watch?v=x4lzz3Fvsc4",
      title: "Expresso do Amanha",
      year: "2018",
      description:
          "Os únicos sobreviventes de uma fracassada tentativa de conter o aquecimento global são obrigados a viver em um trem separados em vagões que determinam sua condição socia",
      relevance: "98% relevante",
      logo:
          "https://occ-0-1723-1722.1.nflxso.net/dnm/api/v6/AwfSa8TtJlDHJjLcbE--NI7p5gU/AAAABRfJnO9PNV1HWuFyjH0L5icYfY-3IR-Bgsy36Szm6RUIl5XGkd0v7NXL3iMdRF2IE-TB32EMM34CjQsPYSm3OExtPLov9OxdwH1QXekQ456R17JPlqFi3Gl3G2uwLC2sJ84SGypv_SEIYvOipET7cV2mCoSI-StgmA03c2fppfvW5w.png?r=60d",
      subtitleComicSoon: "Disponivel em breve",
      dateComicSoon: "06 de out"),
  Movie(
      imageUrl:
          "https://uploads.metropoles.com/wp-content/uploads/2020/04/28154256/resgate3.jpg",
      videoUrl: "https://www.youtube.com/watch?v=GMKKq_bYd0E",
      title: "Resgate",
      year: "2019",
      description:
          "Resgate é um filme de suspense de ação americano de 2020, dirigido por Sam Hargrave e roteiro de Joe Russo, baseado nos quadrinhos Ciudad de Ande Parks, Joe Russo, Anthony Russo, Fernando Leon Gonzalez e Eric Skillman.",
      relevance: "98% relevante",
      logo:
          "https://occ-0-1068-1722.1.nflxso.net/dnm/api/v6/AwfSa8TtJlDHJjLcbE--NI7p5gU/AAAABdOlBjYWJnLcSmzps8sKxjodxG-ITaPrkJQTs2LBTFN7IiYjzEk3mthmRyNi1U3fFCyQFfumABkOg18Kn1QyiUUfN0nCMQL9XBaRVJalSLnTNs_aloJBA-_P4ak-TvdttRWzDxVPE1QefCeI4-dgwx4HPXim4VZNzm7ZipVPUym0bw.png?r=56d",
      subtitleComicSoon: "Disponivel em breve",
      dateComicSoon: "03 de mar"),
  Movie(
      imageUrl:
          "https://s3.amazonaws.com/jgdprod-blogs-us/blogs/wp-content/uploads/sites/116/2018/10/twd-896-d1-big_qgd6.jpg",
      videoUrl: "https://www.youtube.com/watch?v=6Z6ijZa3EXw",
      title: "The walking dead",
      year: "2010",
      description:
          "Baseado na história em quadrinhos escrita por Robert Kirkman, este drama potente e visceral retrata a vida nos Estados Unidos pós-apocalíptico. Um grupo de sobreviventes, liderado pelo policial Rick Grimes, segue viajando em busca de uma nova moradia segura e distante dos mortos-vivos. A pressão para permanecerem vivos e lutarem pela sobrevivência faz com que muitos do grupo sejam submetidos às mais profundas formas de crueldade humana. Rick acaba descobrindo que o tão assustador desespero pela subsistência pode ser ainda mais fatal do que os próprios mortos-vivos que os rodeiam.",
      relevance: "98% relevante",
      logo:
          "https://upload.wikimedia.org/wikipedia/commons/thumb/e/ef/The_Walking_Dead_2010_logo.svg/1280px-The_Walking_Dead_2010_logo.svg.png",
      subtitleComicSoon: "Temporada 50",
      dateComicSoon: "16 de mai"),
  Movie(
      imageUrl:
          "https://i.pinimg.com/736x/1e/c0/d7/1ec0d760a66e33dcfe191da38cf9e641.jpg",
      videoUrl: "https://www.youtube.com/watch?v=14OD3f4u0Qk",
      title: "Nanatsu no taizai",
      year: "2012",
      description:
          "Nanatsu no Taizai, é uma adaptação do mangá escrito e ilustrado por Nakaba Suzuki. Começou a ser serializada na revista Weekly Shōnen Magazine da Kodansha em outubro de 2012, tankōbon lançados até agora.",
      relevance: "98% relevante",
      logo:
          "https://vignette.wikia.nocookie.net/nerddragon/images/2/2e/Nanatsu_no_taizai2.png/revision/latest/scale-to-width-down/340?cb=20190107014958&path-prefix=pt-br",
      subtitleComicSoon: "Temporada 3",
      dateComicSoon: "16 de jun"),
];
