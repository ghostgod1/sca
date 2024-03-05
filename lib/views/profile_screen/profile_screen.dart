import 'package:sca/consts/consts.dart';
import 'package:sca/consts/list.dart';
import 'package:sca/views/profile_screen/components/details_card.dart';
import 'package:sca/widget_common/bg_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
        child: Scaffold(
      body: SafeArea(
          child: Column(children: [
        //edit profile button
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: const Align(
            alignment: Alignment.topRight,
            child: Icon(
              Icons.edit,
              color: whiteColor,
            ),
          ).onTap(() {}),
        ),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            children: [
              Image.asset(
                imgProfile2,
                width: 70,
                fit: BoxFit.cover,
              ).box.roundedFull.clip(Clip.antiAlias).make(),
              10.widthBox,
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  "User".text.fontFamily(semibold).white.make(),
                  5.heightBox,
                  "ankitpandey13579@gmail.com".text.white.make(),
                ],
              )),
              OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(
                      color: whiteColor,
                    ),
                  ),
                  onPressed: () {},
                  child: logout.text.white.fontFamily(semibold).make())
            ],
          ),
        ),

        20.heightBox,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            detailsCard(
                count: "00",
                title: "Cart",
                width: context.screenWidth / 3.4),
            detailsCard(
                count: "01",
                title: "Wishlist",
                width: context.screenWidth / 3.4),
            detailsCard(
                count: "00",
                title: "Orders",
                width: context.screenWidth / 3.4),
          ],
        ),

        //buttons
        ListView.separated(
                shrinkWrap: true,
                separatorBuilder: (context, index) {
                  return const Divider(
                    color: lightGrey,
                  );
                },
                itemCount: profileButtonsList.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    leading: Image.asset(
                      profileButtonsIcon[index],
                      width: 22,
                    ),
                    title: profileButtonsList[index]
                        .text
                        .fontFamily(semibold)
                        .color(darkFontGrey)
                        .make(),
                  );
                })
            .box
            .white
            .rounded
            .margin(const EdgeInsets.all(12))
            .padding(const EdgeInsets.symmetric(horizontal: 16))
            .shadowSm
            .make()
            .box
            .color(redColor)
            .make(),
      ])),
    ));
  }
}
