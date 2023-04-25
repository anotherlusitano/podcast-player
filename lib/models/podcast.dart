import 'episode.dart';

class Podcast {
  String name;
  List<Episode> episodes;

  Podcast(this.name);

  static List<Podcast> fetchAll() {
    var p1 = Podcast("Tim Sneath Talks Tips & Takeways");
    p1.episodes = [
      Episode(p1, "Product Management Tips for the Common Man"),
      Episode(p1, "My Takeaway"),
      Episode(p1, "Talking Tech Tips with Talkative Techs: Twenty Tips"),
    ];
    var p2 = Podcast("Eric Seidel Educates on Effective Entrepreneurial Engineering");
    p2.episodes = [
      Episode(p2, "Evolving Engineering Teams Through Evoking Excitement"),
      Episode(p2, "Impressing External Engineers with \"en-teresting\" Code"),
      Episode(p2, "An Engineer's Evening Entrypoint: Cocktails & Entrees""),
    ];
    var p3 = Podcast("Martin Aguinis Masters Marketing Magic Monologues");
    p3.episodes = [
      Episode(p3, "The Meaning Behind Most Monologues: Marketing"),
      Episode(p3, "Marketing Mumbojumbo, Explained"),
      Episode(p3, "Making Mockups Matter"),
    ];

    return [p1, p2, p3];
  }
}
