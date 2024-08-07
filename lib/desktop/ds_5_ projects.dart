// ignore: file_names
import 'package:flutter/material.dart';

import '../statics/data_values.dart';
import '../statics/key_holders.dart';
import '../theme/app_theme.dart';
import '../widgets/container_banner.dart';
import '../widgets/container_card.dart';
import '../widgets/frame_title.dart';

class DS5Projects extends StatelessWidget {
  const DS5Projects({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      key: KeyHolders.projectsKey,
      color: AppThemeData.backgroundGrey,
      child: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const FrameTitle(
                title: DataValues.projectsTitle,
                description: DataValues.projectsDescription),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: HoverContainerCard(
                    image: 'swiftUI',
                    title: DataValues.projectsOrg1Title,
                    role: DataValues.projectsOrg1Role,
                    years: DataValues.projectsOrg1Years,
                    values: DataValues.projectsOrg1Vales,
                    // message: DataValues.linkedinURL.toString(),
                    message: "Not updated yet.",
                    url: Uri.parse(" "),
                    isButtonEnabled: true,
                  ),
                ),
                SizedBox(width: MediaQuery.of(context).size.width * 0.05),
                Expanded(
                  child: HoverContainerCard(
                    image: 'flutter',
                    title: DataValues.projectsOrg2Title,
                    role: DataValues.projectsOrg2Role,
                    years: DataValues.projectsOrg2Years,
                    values: DataValues.projectsOrg2Vales,
                    message: DataValues.geminiUri.toString(),
                    url: DataValues.geminiUri,
                    isButtonEnabled: true,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 40.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: HoverContainerCard(
                    image: 'android',
                    title: DataValues.projectsOrg3Title,
                    role: DataValues.projectsOrg3Role,
                    years: DataValues.projectsOrg3Years,
                    values: DataValues.projectsOrg3Vales,
                    message: DataValues.healthcareUri.toString(),
                    url: DataValues.healthcareUri,
                    isButtonEnabled: true,
                  ),
                ),
                SizedBox(width: MediaQuery.of(context).size.width * 0.05),
                Expanded(
                  child: HoverContainerCard(
                    image: 'spring',
                    title: DataValues.projectsOrg4Title,
                    role: DataValues.projectsOrg4Role,
                    years: DataValues.projectsOrg4Years,
                    values: DataValues.projectsOrg4Vales,
                    message: DataValues.departmentApiUri.toString(),
                    url: DataValues.departmentApiUri,
                    isButtonEnabled: true,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 80.0),
            Center(
              child: ContainerBanner().type1(
                isDesktop: true,
                title1: DataValues.projectsBanner,
                title2: DataValues.projectsBannerTitle,
                description: DataValues.projectsBannerWeb,
                image: 'image',
                message: 'GitHub Profile',
                url: DataValues.projectsURL,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HoverContainerCard extends StatefulWidget {
  final String image;
  final String title;
  final String role;
  final String years;
  final String values;
  final String message;
  final Uri url;
  final bool isButtonEnabled;

  const HoverContainerCard({
    Key? key,
    required this.image,
    required this.title,
    required this.role,
    required this.years,
    required this.values,
    required this.message,
    required this.url,
    required this.isButtonEnabled,
  }) : super(key: key);

  @override
  _HoverContainerCardState createState() => _HoverContainerCardState();
}

class _HoverContainerCardState extends State<HoverContainerCard> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) => _onHover(true),
      onExit: (event) => _onHover(false),
      child: Container(
        // child: !_isHovered
        //     ? const Gemini()
        //     :

        child: ContainerCard().type3(
          image: widget.image,
          title: widget.title,
          role: widget.role,
          years: widget.years,
          values: widget.values,
          message: widget.message,
          url: widget.url,
          isButtonEnabled: widget.isButtonEnabled,
        ),
      ),
    );
  }

  void _onHover(bool isHovered) {
    setState(() {
      _isHovered = isHovered;
    });
  }
}
