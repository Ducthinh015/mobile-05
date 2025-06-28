import '../models/album.dart';
import '../models/song.dart';

final List<String> carouselImageUrls = [
  "https://images.unsplash.com/photo-1574169208507-84376144848b?w=800&q=80",
  "https://images.unsplash.com/photo-1524169113253-c6ba1da4277a?w=800&q=80",
  "https://images.unsplash.com/photo-1470225620780-dba8ba36b745?w=800&q=80",
];

final List<Album> recentlyAlbums = [
  Album(artist: "Billie Eilish", title: "HIT ME HARD", imageUrl: "https://placehold.co/116x116/E9967A/FFFFFF?text=B"),
  Album(artist: "Fujii Kaze", title: "Love All Serve All", imageUrl: "https://placehold.co/116x116/8A2BE2/FFFFFF?text=F"),
  Album(artist: "Hayd", title: "Lost - Single", imageUrl: "https://placehold.co/116x116/6495ED/FFFFFF?text=H"),
  Album(artist: "Gene Kelly", title: "MY STORY", imageUrl: "https://placehold.co/116x116/F08080/FFFFFF?text=G"),
];

final List<Song> recentlyPlayedSongs = [
  Song(title: "Hilarious", artist: "Charlie Puth", imageUrl: "https://placehold.co/70x70/20B2AA/FFFFFF?text=CP"),
  Song(title: "SAYONARA Baby", artist: "Fujii Kaze", imageUrl: "https://placehold.co/70x70/8A2BE2/FFFFFF?text=FK"),
  Song(title: "Singing in the rain", artist: "Gene Kelly", imageUrl: "https://placehold.co/70x70/F08080/FFFFFF?text=GK"),
  Song(title: "WILDFLOWER", artist: "Billie Eilish", imageUrl: "https://placehold.co/70x70/E9967A/FFFFFF?text=BE"),
];

final List<Album> suggestedAlbums = [
  Album(artist: "", title: "", imageUrl: "https://placehold.co/130x130/FF6347/FFFFFF?text=S1"),
  Album(artist: "", title: "", imageUrl: "https://placehold.co/130x130/4682B4/FFFFFF?text=S2"),
  Album(artist: "", title: "", imageUrl: "https://placehold.co/130x130/32CD32/FFFFFF?text=S3"),
  Album(artist: "", title: "", imageUrl: "https://placehold.co/130x130/FFD700/FFFFFF?text=S4"),
];
