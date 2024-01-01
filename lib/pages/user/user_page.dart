import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class UserPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: Text("sds"),
        actions: [
          SvgPicture.asset(
            "assets/icons/common/scan.svg",
            height: 30,
          ),
          SvgPicture.asset(
            "assets/icons/common/code.svg",
            height: 30,
          ),
          SvgPicture.asset(
            "assets/icons/common/setting.svg",
            height: 30,
          ),
          SvgPicture.asset(
            "assets/icons/common/light.svg",
            height: 30,
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            UserInfo(),
            Datas(),
            Services(),
          ],
        ),
      ),
    );
  }
}

class UserInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 0, right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Row(
                children: [
                  Avator(),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Sutter",
                    style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700),
                  ),
                  Text(
                    "这个人很懒，什么也没有留下",
                    style: TextStyle(fontSize: 14),
                      maxLines: 1,overflow: TextOverflow.ellipsis
                  )
                ],
              )
            ],
          ),
          Row(
            children: [
              SvgPicture.asset(
                "assets/icons/common/edit.svg",
                height: 20,
              ),
            ],
          )
        ],
      ),
    );
  }
}

class Avator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Container(
      width: 60.0,
      height: 60.0,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
              "http://e.hiphotos.baidu.com/image/pic/item/a1ec08fa513d2697e542494057fbb2fb4316d81e.jpg"),
          //从Assets加载图片
          fit: BoxFit.cover,
        ),
        shape: BoxShape.circle,
      ),
    ));
  }
}

class Datas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            child: Column(
              children: [
                SvgPicture.asset(
                  "assets/icons/common/history.svg",
                  height: 20,
                ),
                Text("历史记录")
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                SvgPicture.asset(
                  "assets/icons/common/start.svg",
                  height: 20,
                ),
                Text("我的收藏")
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                SvgPicture.asset(
                  "assets/icons/common/start.svg",
                  height: 20,
                ),
                Text("我的收藏")
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                SvgPicture.asset(
                  "assets/icons/common/start.svg",
                  height: 20,
                ),
                Text("我的收藏")
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Services extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      // crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text("更多服务"),
          ],
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SvgPicture.asset(
                    "assets/icons/common/kefu.svg",
                    height: 22,
                  ),
                  Text("联系客服")
                ],
              ),
              Row(
                children: [
                  SvgPicture.asset(
                    "assets/icons/common/goto.svg",
                    height: 22,
                  ),
                ],
              )
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          // color: Colors.green,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SvgPicture.asset(
                    "assets/icons/common/yinsi.svg",
                    height: 22,
                  ),
                  Text("隐私协议")
                ],
              ),
              Row(
                children: [
                  SvgPicture.asset(
                    "assets/icons/common/goto.svg",
                    height: 22,
                  ),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
