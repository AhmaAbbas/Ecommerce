import 'package:addvancedapp/presentation_layer/resources/app_strings.dart';
import 'package:addvancedapp/presentation_layer/resources/color_manger.dart';
import 'package:addvancedapp/presentation_layer/resources/constants_manager.dart';
import 'package:addvancedapp/presentation_layer/resources/route_manager.dart';
import 'package:addvancedapp/presentation_layer/resources/values_manger.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:sizer/sizer.dart';

import '../../../domain_layer/models.dart';
import '../../resources/assets_manager.dart';
import '../viewmodel/view_model.dart';
import 'build_dot.dart';

class OnBoarding_view extends StatefulWidget {
  const OnBoarding_view({Key? key}) : super(key: key);

  @override
  _OnBoarding_viewState createState() => _OnBoarding_viewState();
}

class _OnBoarding_viewState extends State<OnBoarding_view> {
  final PageController pageController = PageController();
  OnBoarding_ViewModel _boarding_viewModel=OnBoarding_ViewModel();
  //List<SliderObjsect> getslider_data() =>
  void bind(){
    _boarding_viewModel.start();
  }
  @override
  void initState() {
    bind();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Color_Manger.white,
        elevation: AppSize.s0,
        systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Color_Manger.white,
            statusBarBrightness: Brightness.dark),
      ),
      body: PageView.builder(
          controller: pageController,
          onPageChanged: (index) {
            setState(() {
              currentindex = index;
            });
          },
          itemCount: list.length,
          itemBuilder: (context, index) {
            return OnBoardding_body(currentindex: currentindex,sliderObjsect: list[index],pageController: pageController,);
          }),
    );
  }
  @override
  void dispose() {
    _boarding_viewModel.dispose();
    super.dispose();
  }
}

class OnBoardding_body extends StatelessWidget {
  OnBoardding_body(
      {Key? key,
      required this.sliderObjsect,
      required this.pageController,
      required this.currentindex})
      : super(key: key);
  SliderObjsect sliderObjsect;
  PageController pageController;
  int currentindex;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(0),
      child: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: AppSize.s40,
            ),
            Text(
              sliderObjsect.title,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.displayLarge,
            ),
            SizedBox(
              height: AppSize.s18,
            ),
            Text(
              sliderObjsect.subtitle,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            SizedBox(
              height: AppSize.s18,
            ),
            Image(
              image: AssetImage(sliderObjsect.image),
            ),
            Spacer(flex: 1,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                    onPressed: () {
                      GoRouter.of(context).push(AppRoutes.loginRoute);
                    },
                    child: Text(
                      "Skip",
                      style: Theme.of(context).textTheme.titleMedium,
                      //textAlign:TextAlign.end,
                    )),
              ),
            ),
            Container(
              color: Color_Manger.primary,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(onPressed: (){
                    pageController.animateToPage(getprev(), duration:
                    Duration(milliseconds: AppConstants.onboardingpage_duration), curve:Curves.bounceInOut);
                  }, icon: Icon(Icons.arrow_back_ios)),
                  const Spacer(flex: 1,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(4,
                          (index1) => buildDot(index1, context, currentindex),
                    ),
                  ),
                  const Spacer(flex: 1,),
                  IconButton(onPressed: (){
                    pageController.animateToPage(getnext(), duration:
                    Duration(milliseconds: AppConstants.onboardingpage_duration), curve:Curves.bounceInOut);
                  }, icon: Icon(Icons.arrow_forward_ios)),
                ]
              ),
            ),
          ],
        ),
      ),
    );
  }

}




