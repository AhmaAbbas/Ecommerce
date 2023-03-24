import 'dart:async';

import 'package:addvancedapp/domain_layer/models.dart';
import 'package:addvancedapp/presentation_layer/baseviewmodel/base_viewmodel.dart';

import '../../resources/app_strings.dart';
import '../../resources/assets_manager.dart';

class OnBoarding_ViewModel extends BaseViewModel with OnBoardingViewModel_Inputs,OnBoardingViewModel_OutPuts{
  StreamController _streamcontroller=StreamController<SlidersViewobject>();
  int currentindex = 0;
  late final List<SliderObjsect> _list ;
  @override
  void dispose() {
    // TODO: implement dispose
    _streamcontroller.close();
  }

  @override
  void start() {
    // TODO: implement start
    _list=_get_sliderobject();
    postdattoview();
  }

  @override
  int getprevarrow()
  {
    int prev=--currentindex;
    if(prev==-1)
    {
      prev=_list.length-1;
    }
    return prev;
  }
  int getnextarrow()
  {
    int next=++currentindex;
    if(next==_list.length)
    {
      next=0;
    }
    return next;
  }

  @override
  void on_pagechanged(int index) {
    currentindex=index;
    postdattoview();
  }

  @override
  Sink get_inputslideviewobject() {
    // TODO: implement get_inputslideviewobject
    return _streamcontroller.sink;
  }

  @override
  Stream<SlidersViewobject> get_outptslideviewobject() {
    // TODO: implement get_outptslideviewobject
    return _streamcontroller.stream.map((SlidersViewobject) => SlidersViewobject);
  }
  List<SliderObjsect> _get_sliderobject(){
    return [
      SliderObjsect(
          title: AppStrings.onboardingtitle1,
          image: ImageAssets.onboarding1,
          subtitle: AppStrings.onboarding_subtitle1),
      SliderObjsect(
          title: AppStrings.onboardingtitle2,
          image: ImageAssets.onboarding2,
          subtitle: AppStrings.onboarding_subtitle2),
      SliderObjsect(
          title: AppStrings.onboardingtitle3,
          image: ImageAssets.onboarding3,
          subtitle: AppStrings.onboarding_subtitle3),
      SliderObjsect(
          title: AppStrings.onboardingtitle4,
          image: ImageAssets.onboarding4,
          subtitle: AppStrings.onboarding_subtitle4)
    ];
  }
  void postdattoview()
  {
    return get_inputslideviewobject().add(SlidersViewobject
      (sliderObjsect:_list[currentindex], currentindex: currentindex, num_slides: _list.length));
  }

}
//receive inputs from use on UI from view
abstract class OnBoardingViewModel_Inputs{
  int getprevarrow();
  int getnextarrow();
  void on_pagechanged(int index);
  Sink get_inputslideviewobject();
}
abstract class OnBoardingViewModel_OutPuts{
  Stream<SlidersViewobject> get_outptslideviewobject();
}