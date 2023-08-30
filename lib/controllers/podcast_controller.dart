import '../models/podcast.dart';

class PodcastController {
  // This can be used to fetch the current podcast, determine if it's live, etc.
  Future<Podcast?> getCurrentPodcast() async {
    // Implement your API call here
    return Podcast(
        id: 1,
        title: "Sample Podcast",
        videoUrl: "https://example.com/video.mp4");
  }
}
