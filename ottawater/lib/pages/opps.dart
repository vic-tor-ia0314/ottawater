import 'package:flutter/material.dart';
import 'package:ottawater/core/theme/app_colors.dart';
import 'bottom_nav_bar.dart';

class OpportunitiesPage extends StatelessWidget {
  const OpportunitiesPage({super.key});

  Widget buildCard({
    required String title,
    required String description,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: AppColors.primary,
          boxShadow: [
            BoxShadow(
              blurRadius: 6,
              color: Colors.black12,
              offset: Offset(0, 3),
            )
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Stack(
            children: [
              Container(
                color: AppColors.accent1.withOpacity(0.4),
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: AppColors.accent2,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      description,
                      style: const TextStyle(
                        fontSize: 16,
                        color: AppColors.accent2,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          buildCard(
            title: 'Shoreline Cleanups',
            description: 'Volunteering during one of our shoreline cleanups allows you to take part in a collective effort to remove garbage from a designated site. These cleanups can happen across the entire watershed and generally last around 2-3 hours.\n\nVolunteers are invited to join a cleanup organized by Ottawa Riverkeeper or organize their own event. If you would like to borrow equipment for a cleanup event, you can book one of our shoreline cleanup kits from our community sharing shed, the WaterSHED, here.\n\nFrom: Ottawa Riverkeeper',
            onTap: () {},
          ),
          buildCard(
            title: 'Riverwatchers',
            description: 'Riverwatchers are Ottawa Riverkeeper’s eyes, ears and spokespeople across the Ottawa river watershed.\n\nRiverwatchers identify themselves with specific sections of the river or a tributary and become involved in ways that reflect their own interest, time and skills. Each Riverwatcher determines the activities they would like to participate in within their local community. Together, they work with Ottawa Riverkeeper to find effective solutions to their local problems.\n\nThe program helps build communities along the Ottawa River and its tributaries dedicated to protecting their local waterways. Riverwatchers may do everything from participating as a community scientist in our water quality monitoring, to education and outreach, to helping local citizens address concerns they might have about activities that impact the health of our river.\n\nRiverwatchers meet 1-2 times per year and generally commit to 1-3 hours per month.\n\nFrom: Ottawa Riverkeeper',
            onTap: () {},
          ),
          buildCard(
            title: 'Community Scientists',
            description: 'Community scientists take an active role in our Watershed Health Assessment and Monitoring program by helping us collect data throughout the region. They are strategically located within our watershed and we train these volunteers to follow specific protocols relaying observation, data and samples to our team.\n\nVolunteers commit to around 1-2 hours a week for 6 months. (This will vary based on the season.)\n\nDue to the nature of this role the community scientists are selected based on their geographical location and where data collection is necessary.\n\nFrom: Ottawa Riverkeeper',
            onTap: () {},
          ),
          buildCard(
            title: 'Major Events',
            description: 'Volunteering during one of Ottawa Riverkeeper’s major events, such as our annual Riverkeeper Gala, allows you to take part in and support our fundraising efforts. There are several volunteer jobs that need to be filled and vary in physicality, skill and time required as volunteers may work in shifts or stay for the entire event.\n\nRiverkeeper Gala: Volunteer roles may include venue preparation, parking attendants and bike valets, check-in table personnel, silent auction assistance and first aid.\n\nFrom: Ottawa Riverkeeper',
            onTap: () {},
          ),
          buildCard(
            title: 'Outreach and Education',
            description: 'Outreach and education volunteers will help Ottawa Riverkeeper staff with outreach booths and educational presentations. This role will have you interacting with the public and spreading awareness about the incredible Ottawa River watershed and our most recent campaigns to protect it.\n\nYou will help staff set up and take down any outreach materials and represent Ottawa Riverkeeper at the event. Content will vary based on the setting and audience, ranging from talking with the public at our booth, presenting a general overview of the organization to a community group, to overseeing hands-on educational activities with young children.\n\nTime commitments vary based on the event but generally last 1-3 hours.\n\nFrom: Ottawa Riverkeeper',
            onTap: () {},
          ),
          buildCard(
            title: 'Administration',
            description: 'By volunteering behind the scenes, you will help with small tasks that have a big impact, like stuffing envelopes, tech support, data entry and editing. By offering support to our staff you can have a huge impact helping Ottawa Riverkeeper to grow.\n\nTime commitments and required skills vary for each of the respective volunteer roles.\n\nFrom: Ottawa Riverkeeper',
            onTap: () {},
          ),
          buildCard(
            title: 'Youth Engagement',
            description: 'Do you have high school volunteer hours to complete? Are you looking for a co-op placement or internship that aligns with your interests? Do you have a research project or campaign idea that you want to work on in collaboration with our team? There are many ways for youth to get involved at Ottawa Riverkeeper and we are open to your ideas! Stay tuned in the newsletter or on social media for youth leadership activities throughout the year.\n\nFrom: Ottawa Riverkeeper',
            onTap: () {},
          ),
          buildCard(
            title: 'Board of Directors',
            description: 'The Board of Directors is legally responsible for the governance of Ottawa Riverkeeper. Board Members meet 6-8 times per year and are the highest leadership level of the organization, supporting Ottawa Riverkeeper in achieving its goals and mission while ensuring fiscal accountability and long-term resilience. Openings on our board are not always available, and require a special application process. \n\nFrom: Ottawa Riverkeeper',
            onTap: () {},
          ),
        ],
      ),
      bottomNavigationBar: const AppBottomNav(),
    );
  }
}