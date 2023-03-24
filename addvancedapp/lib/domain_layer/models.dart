class SliderObjsect {
  String title;
  String subtitle;
  String image;

  SliderObjsect(
      {required this.title, required this.image, required this.subtitle});
}
class SlidersViewobject{
  SliderObjsect sliderObjsect;
  int num_slides;
  int currentindex;
  SlidersViewobject({required this.sliderObjsect,required this.currentindex,required this.num_slides});
}