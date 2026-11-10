import 'package:flutter/material.dart';
import 'package:shop_easy_app/controler/banner_controller.dart';

class BannerView extends StatefulWidget {
  const BannerView({super.key});

  @override
  State<BannerView> createState() => _BannerViewState();
}

class _BannerViewState extends State<BannerView> {
  final BannerController _controller = BannerController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          SizedBox(
            height: 190,
            child: PageView.builder(
              onPageChanged: (index){
                setState(() {
                  _controller.cuttentIndex = index;
                });
              },
              itemCount: _controller.banners.length,
                itemBuilder: (context,index){
                final banner = _controller.banners[index];
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: banner.backgroundColor,
                      borderRadius: BorderRadius.circular(15)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(banner.title,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22,color: Colors.white),),
                                Text("Sale",style: TextStyle(fontSize: 28,color: Colors.white),),
                                Row(
                                  children: [
                                    Text(banner.subtitle,style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.white),),
                                    SizedBox(width: 7,),
                                    Container(
                                      height: 27,
                                      width: 85,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12),
                                        color: Colors.yellow
                                      ),
                                      child: Center(child: Text("50% OFF",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),)),
                                    )
                                  ],
                                ),
                                SizedBox(height: 6,),
                                Padding(
                                  padding: const EdgeInsets.only(left: 0.1),
                                  child: ElevatedButton(onPressed: (){

                                  }, child: Text("Shop Now",style: TextStyle(fontSize: 15),)),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 40),
                            child: Icon(banner.icon,size: 100,),
                          )
                        ],
                      ),
                    ),
                  ),
                );
                setState(() {});
            }
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              _controller.banners.length,
                (index) => AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                  margin: const EdgeInsets.symmetric(horizontal: 2),
                  height: 8,
                  width: _controller.cuttentIndex == index ? 12:8,
                  decoration: BoxDecoration(
                    color: _controller.cuttentIndex == index ? Colors.blue:Colors.grey,
                    borderRadius: BorderRadius.circular(4)
                  ),
                )
            ),
          )
        ],
      ),
    );
  }
}

