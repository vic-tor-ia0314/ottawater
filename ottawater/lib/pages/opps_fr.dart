import 'package:flutter/material.dart';
import 'package:ottawater/core/theme/app_colors.dart';
import 'bottom_nav_bar_fr.dart';

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
            title: 'Nettoyages de la Ligne de Rivière',
            description: 'Le bénévolat lors d’un de nos nettoyages de la ligne de rivière vous permet de participer à un effort collectif pour enlever les déchets d’un site désigné. Ces nettoyages peuvent avoir lieu à travers l’ensemble du bassin versant et durent généralement entre 2 et 3 heures.\n\nLes bénévoles sont invités à rejoindre un nettoyage organisé par Ottawa Riverkeeper ou à organiser leur propre événement. Si vous souhaitez emprunter du matériel pour un événement de nettoyage, vous pouvez réserver l’un de nos kits de nettoyage de la ligne de rivière dans notre abri communautaire, le WaterSHED, ici.\n\nDe: Ottawa Riverkeeper',
            onTap: () {},
          ),
          buildCard(
            title: 'Observateurs de la Rivière',
            description: 'Les observateurs de la rivière sont les yeux, les oreilles et les porte-parole d’Ottawa Riverkeeper à travers le bassin versant de la rivière Ottawa.\n\nLes observateurs de la rivière s’identifient avec des sections spécifiques de la rivière ou d’un affluent et s’impliquent de manière à refléter leurs propres intérêts, leur temps et leurs compétences. Chaque observateur de la rivière détermine les activités en fonction desquelles ils aimeraient participer au sein de leur communauté locale. Ensemble, ils travaillent avec Ottawa Riverkeeper pour trouver des solutions efficaces à leurs problèmes locaux.\n\nLe programme aide à construire des communautés le long de la rivière Ottawa et de ses affluents dédiées à la protection de leurs cours d’eau locaux. Les observateurs de la rivière peuvent faire tout, de participer en tant que scientifiques communautaires dans notre suivi de la qualité de l’eau, à l’éducation et à la sensibilisation, en passant par l’aide aux citoyens locaux pour traiter les préoccupations qu’ils pourraient avoir concernant les activités qui affectent la santé de notre rivière.\n\nLes observateurs de la rivière se réunissent 1-2 fois par an et s’engagent généralement à 1-3 heures par mois.\n\nDe: Ottawa Riverkeeper',
            onTap: () {},
          ),
          buildCard(
            title: 'Scientifiques Communautaires',
            description: 'Les scientifiques communautaires prennent un rôle actif dans notre programme d’évaluation et de suivi de la santé du bassin versant en nous aidant à collecter des données à travers la région. Ils sont stratégiquement implantés dans notre bassin versant et nous formons ces bénévoles aux protocoles spécifiques pour transmettre les observations, les données et les échantillons à notre équipe.\n\nLes bénévoles s’engagent à environ 1-2 heures par semaine pour 6 mois. (Cela variera selon la saison.)\n\nEn raison de la nature de ce rôle, les scientifiques communautaires sont sélectionnés en fonction de leur localisation géographique et endroit où la collecte de données est nécessaire.\n\nDe: Ottawa Riverkeeper',
            onTap: () {},
          ),
          buildCard(
            title: 'Événements Majeurs',
            description: 'Faire du bénévolat lors de l’un des grands événements d’Ottawa Riverkeeper, comme notre gala annuel Riverkeeper, vous permet de participer activement et de soutenir nos efforts de collecte de fonds. Plusieurs postes de bénévoles doivent être pourvus et varient en termes d’effort physique, de compétences et de temps requis, car les bénévoles peuvent travailler par équipes ou rester pendant toute la durée de l’événement.\n\nGala Riverkeeper : les rôles de bénévoles peuvent inclure la préparation du lieu, la gestion du stationnement et le service de voiturier pour vélos, le personnel à la table d’accueil, l’assistance pour la vente aux enchères silencieuse et les premiers secours.\n\nDe: Ottawa Riverkeeper',
            onTap: () {},
          ),
          buildCard(
            title: 'Sensibilisation et éducation',
            description: 'Les bénévoles de sensibilisation et d’éducation aideront le personnel d’Ottawa Riverkeeper avec les stands d’information et les présentations éducatives. Ce rôle vous permettra d’interagir avec le public et de diffuser la conscience concernant le bassin versant de la rivière Ottawa et nos campagnes les plus récentes pour le protéger.\n\nVous aiderez le personnel à installer et à démonter les matériaux de sensibilisation et à représenter Ottawa Riverkeeper lors de l’événement. Le contenu variera selon l’environnement et l’audience, allant de parler avec le public à notre stand, en passant par présenter une vue d’ensemble générale de l’organisation à un groupe communautaire, jusqu’à superviser des activités éducatives pratiques avec des enfants.\n\nLes engagements temporels varient selon l’événement mais durent généralement 1-3 heures.\n\nDe: Ottawa Riverkeeper',
            onTap: () {},
          ),
          buildCard(
            title: 'Administration',
            description: 'En faisant du bénévolat en coulisses, vous aiderez à accomplir de petites tâches qui ont un grand impact, comme la mise sous enveloppe, le soutien technique, la saisie de données et la révision de documents. En offrant votre soutien à notre personnel, vous pouvez avoir un impact important et contribuer à la croissance de l’Ottawa Riverkeeper.\n\nLes engagements en temps et les compétences requises varient selon les différents rôles de bénévolat.\n\nDe: Ottawa Riverkeeper',
            onTap: () {},
          ),
          buildCard(
            title: 'Engagement des Jeunes',
            description: 'Avez-vous des heures de bénévolat à compléter au secondaire ? Cherchez-vous un stage de co-op ou une expérience de stage en lien avec vos intérêts ? Avez-vous un projet de recherche ou une idée de campagne que vous souhaitez développer en collaboration avec notre équipe ? Il existe de nombreuses façons pour les jeunes de s’impliquer au sein de l’Ottawa Riverkeeper, et nous sommes ouverts à vos idées ! Restez à l’affût de notre infolettre ou de nos réseaux sociaux pour découvrir les activités de leadership jeunesse tout au long de l’année.\n\nDe: Ottawa Riverkeeper',
            onTap: () {},
          ),
          buildCard(
            title: 'Conseil d’Administration',
            description: 'Le Conseil d’administration est légalement responsable de la gouvernance d’Ottawa Riverkeeper. Les membres du conseil se réunissent 6-8 fois par année et constituent le niveau de direction le plus élevé de l’organisation, soutenant Ottawa Riverkeeper dans l’atteinte de ses objectifs et de sa mission tout en assurant l’accountability financière et la résilience à long terme. Les postes au sein de notre conseil ne sont pas toujours disponibles et nécessitent un processus d’application spécial. \n\nDe: Ottawa Riverkeeper',
            onTap: () {},
          ),
        ],
      ),
      bottomNavigationBar: const AppBottomNavFr(),
    );
  }
}