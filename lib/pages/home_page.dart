import 'package:doctor_ui_statis/models/category_model.dart';
import 'package:doctor_ui_statis/models/doctor_model.dart';
import 'package:doctor_ui_statis/theme.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        color: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 28),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
                height: 24,
                width: 24,
                child: Image.asset('assets/ic_home.png')),
            SizedBox(
                height: 24,
                width: 24,
                child: Image.asset('assets/ic_notification.png')),
            SizedBox(
                height: 24,
                width: 24,
                child: Image.asset('assets/ic_bookmarked.png')),
            SizedBox(
                height: 24,
                width: 24,
                child: Image.asset('assets/ic_profile.png')),
          ],
        ),
      ),
      body: Stack(
        children: [
          SizedBox(
              height: double.infinity,
              width: double.infinity,
              child: Image.asset(
                'assets/bg.png',
                fit: BoxFit.cover,
              )),
          SafeArea(
              child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      EdgeInsets.fromLTRB(defaultMargin, 24, defaultMargin, 30),
                  child: Row(
                    children: [
                      Container(
                        height: 52,
                        width: 52,
                        margin: const EdgeInsets.only(right: 12),
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/user_pic.png'))),
                      ),
                      Text('Howdy, Tamara!',
                          style: regulerFontStyle.copyWith(fontSize: 16))
                    ],
                  ),
                ),
                Container(
                  margin:
                      EdgeInsets.fromLTRB(defaultMargin, 0, defaultMargin, 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Find the professional doctor,\nquickly and promising.',
                        style: mediumFontStyle.copyWith(
                            fontSize: 20, color: blackColor),
                      ),
                      Container(
                        height: 40,
                        margin: const EdgeInsets.only(top: 12),
                        padding:
                            EdgeInsets.symmetric(horizontal: defaultMargin),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white),
                        child: TextField(
                          style: regulerFontStyle.copyWith(
                              fontSize: 12, color: blackColor),
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              suffixIcon: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: SizedBox(
                                  height: 15,
                                  width: 15,
                                  child: Image.asset('assets/ic_search.png'),
                                ),
                              ),
                              hintText: 'Search by specialist',
                              hintStyle: regulerFontStyle.copyWith(
                                  fontSize: 12, color: greyColor)),
                        ),
                      ),
                      Container(
                          margin: const EdgeInsets.only(top: 30),
                          padding:
                              EdgeInsets.symmetric(horizontal: defaultMargin),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Browse by Category',
                                  style: regulerFontStyle),
                              const SizedBox(
                                height: 14,
                              ),
                              SizedBox(
                                  height: 250,
                                  width: double.infinity,
                                  child: GridView.builder(
                                      itemCount: listCategory.length,
                                      gridDelegate:
                                          const SliverGridDelegateWithFixedCrossAxisCount(
                                              crossAxisCount: 3,
                                              crossAxisSpacing: 20,
                                              mainAxisSpacing: 20),
                                      physics: const ClampingScrollPhysics(),
                                      itemBuilder: (_, i) {
                                        final x = listCategory[i];
                                        return categoryCard(x);
                                      })),
                            ],
                          )),
                      Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: defaultMargin),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Our top doctors',
                                style: regulerFontStyle,
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.2,
                                width: double.infinity,
                                child: ListView(
                                    physics: const ClampingScrollPhysics(),
                                    children: listDoctor
                                        .map((e) => Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 12),
                                              child: doctorCard(e),
                                            ))
                                        .toList()),
                              )
                            ],
                          ))
                    ],
                  ),
                ),
              ],
            ),
          ))
        ],
      ),
    );
  }

  Widget categoryCard(CategoryModel categoryModel) {
    return Container(
      height: 110,
      width: 100,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                offset: const Offset(0, 15),
                blurRadius: 15,
                spreadRadius: 0,
                color: const Color(0xffE1EDF2).withOpacity(0.5))
          ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 38,
            width: 38,
            child: Image.asset(categoryModel.iconPath!),
          ),
          const SizedBox(
            height: 12,
          ),
          Text(
            categoryModel.nameCategory!,
            style: regulerFontStyle,
          )
        ],
      ),
    );
  }

  Widget doctorCard(DoctorModel doctorModel) {
    return Row(
      children: [
        Container(
          height: 52,
          width: 52,
          margin: const EdgeInsets.only(right: 12),
          decoration: BoxDecoration(
              image:
                  DecorationImage(image: AssetImage(doctorModel.picturePath!))),
        ),
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(doctorModel.name!,
              style: regulerFontStyle.copyWith(fontSize: 16)),
          Text(doctorModel.specialist!,
              style: lightFontStyle.copyWith(fontSize: 12, color: greyColor)),
        ])
      ],
    );
  }
}
