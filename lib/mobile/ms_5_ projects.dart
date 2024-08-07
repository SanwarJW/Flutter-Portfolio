import 'package:flutter/material.dart';

import '../statics/data_values.dart';
import '../statics/key_holders.dart';
import '../theme/app_theme.dart';
import '../widgets/container_banner.dart';
import '../widgets/container_card.dart';
import '../widgets/frame_title.dart';

class MS5Projects extends StatelessWidget {
  const MS5Projects({Key? key}) : super(key: key);

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
            const SizedBox(height: 30.0),
            ContainerCard().type3(
              image: 'swiftUI',
              title: DataValues.projectsOrg1Title,
              role: DataValues.projectsOrg1Role,
              years: DataValues.projectsOrg1Years,
              values: DataValues.projectsOrg1Vales,
              // message: DataValues.linkedinURL.toString(),
              message: "Not updated yet.",
              url: DataValues.linkedinURL,
              isButtonEnabled: true,
            ),
            const SizedBox(height: 20.0),
            ContainerCard().type3(
              image: 'flutter',
              title: DataValues.projectsOrg2Title,
              role: DataValues.projectsOrg2Role,
              years: DataValues.projectsOrg2Years,
              values: DataValues.projectsOrg2Vales,
              message: DataValues.geminiUri.toString(),
              url: DataValues.geminiUri,
              isButtonEnabled: true,
            ),
            const SizedBox(height: 20.0),
            ContainerCard().type3(
              image: 'android',
              title: DataValues.projectsOrg3Title,
              role: DataValues.projectsOrg3Role,
              years: DataValues.projectsOrg3Years,
              values: DataValues.projectsOrg3Vales,
              message: DataValues.healthcareUri.toString(),
              url: DataValues.healthcareUri,
              isButtonEnabled: true,
            ),
            const SizedBox(height: 20.0),
            ContainerCard().type3(
              image: 'spring',
              title: DataValues.projectsOrg4Title,
              role: DataValues.projectsOrg4Role,
              years: DataValues.projectsOrg4Years,
              values: DataValues.projectsOrg4Vales,
              message: DataValues.departmentApiUri.toString(),
              url: DataValues.departmentApiUri,
              isButtonEnabled: true,
            ),
            const SizedBox(height: 40.0),
            Center(
              child: ContainerBanner().type1(
                isDesktop: true,
                title1: DataValues.projectsBanner,
                title2: DataValues.projectsBannerTitle,
                description: DataValues.projectsBannerWeb,
                image: 'image',
                message: 'Projects Profile',
                url: DataValues.projectsURL,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
