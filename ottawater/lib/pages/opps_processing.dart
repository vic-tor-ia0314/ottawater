import 'package:http/http.dart' as http;
import 'package:html/parser.dart' as parser;

class VolunteerOpportunity {
  final String title;
  final String description;

  VolunteerOpportunity({
    required this.title,
    required this.description,
  });
}

Future<List<VolunteerOpportunity>> fetchOpportunities() async {
  final url =
      "https://volunteerottawa.ca/volunteer/search-volunteer-opportunities/?jsf=jet-engine&tax=types-of-volunteering:98;appropriate-for:41";

  final response = await http.get(Uri.parse(url));

  if (response.statusCode != 200) {
    throw Exception("Failed to load page");
  }

  final document = parser.parse(response.body);

  List<VolunteerOpportunity> opportunities = [];

  String? currentTitle;

  final elements = document.querySelectorAll("h2, h3, p");

  for (var element in elements) {
    final text = element.text.trim();

    if (element.localName == "h2" || element.localName == "h3") {
      currentTitle = text;
    } else if (currentTitle != null && text.length > 20) {
      opportunities.add(
        VolunteerOpportunity(
          title: currentTitle,
          description: text,
        ),
      );
      currentTitle = null;
    }
  }

  return opportunities;
}