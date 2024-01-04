import 'package:flet/pages/news/news_item.dart';
import 'package:flutter/material.dart';
import 'package:flet/pages/news/news_swipper.dart';
import 'package:flet/common/const.dart';
class NewsPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            // Expanded(
            //   child: Container(
            //     height: 120,
            //     child: NewsSwipper(),
            //   ),
            // ),
            Container(
              margin: EdgeInsets.only(bottom:5),
              child: NewsSwipper(),
            ),
            Expanded(child: Container(
              child: NewsLists(),
            ))

          ],
        ),

      ),

    );
  }
}

class NewsLists extends StatelessWidget {
  final List newsList = [
    {"id": "0", "media": "联合日报", "mediaLogo": "http://e.hiphotos.baidu.com/image/pic/item/a1ec08fa513d2697e542494057fbb2fb4316d81e.jpg", "title": "网友花600万在东莞买房现跌至270万，专家回应：明年超跌房价将回升", "image": "https://img-s.msn.cn/tenant/amp/entityid/AA1jTvbj.img?w=82&h=82&q=90&m=6&f=jpg&u=t"},
    {"id": "1", "media": "产经新闻", "mediaLogo": "http://e.hiphotos.baidu.com/image/pic/item/a1ec08fa513d2697e542494057fbb2fb4316d81e.jpg", "title": "上海一网约车司机自带被褥睡车里5个月！还有人每天跑15小时却攒不下钱", "image": "https://img-s.msn.cn/tenant/amp/entityid/AA1jTvbj.img?w=82&h=82&q=90&m=6&f=jpg&u=t"},
    {"id": "2", "media": "朝日新闻", "mediaLogo": "http://e.hiphotos.baidu.com/image/pic/item/a1ec08fa513d2697e542494057fbb2fb4316d81e.jpg", "title": "iPhone遭遇史上最复杂攻击 iMessage漏洞被发现", "image": "https://img-s.msn.cn/tenant/amp/entityid/AA1mb4PE.img?w=82&h=82&q=90&m=6&f=jpg&u=t"},
    {"id": "3", "media": "华尔街日报", "mediaLogo": "http://e.hiphotos.baidu.com/image/pic/item/a1ec08fa513d2697e542494057fbb2fb4316d81e.jpg", "title": "网友花600万在东莞买房现跌至270万，专家回应：明年超跌房价将回升", "image": "https://img-s.msn.cn/tenant/amp/entityid/AA1jTvbj.img?w=82&h=82&q=90&m=6&f=jpg&u=t"},
    {"id": "4", "media": "每日邮报", "mediaLogo": "http://e.hiphotos.baidu.com/image/pic/item/a1ec08fa513d2697e542494057fbb2fb4316d81e.jpg", "title": "网友花600万在东莞买房现跌至270万，专家回应：明年超跌房价将回升", "image": "https://img-s.msn.cn/tenant/amp/entityid/AA1jTvbj.img?w=82&h=82&q=90&m=6&f=jpg&u=t"},
    {"id": "5", "media": "华盛顿邮报", "mediaLogo": "http://e.hiphotos.baidu.com/image/pic/item/a1ec08fa513d2697e542494057fbb2fb4316d81e.jpg", "title": "网友花600万在东莞买房现跌至270万，专家回应：明年超跌房价将回升", "image": "https://img-s.msn.cn/tenant/amp/entityid/AA1jTvbj.img?w=82&h=82&q=90&m=6&f=jpg&u=t"},
    {"id": "6", "media": "太阳报", "mediaLogo": "http://e.hiphotos.baidu.com/image/pic/item/a1ec08fa513d2697e542494057fbb2fb4316d81e.jpg", "title": "网友花600万在东莞买房现跌至270万，专家回应：明年超跌房价将回升", "image": "https://img-s.msn.cn/tenant/amp/entityid/AA1jTvbj.img?w=82&h=82&q=90&m=6&f=jpg&u=t"},
    {"id": "7", "media": "路透社", "mediaLogo": "http://e.hiphotos.baidu.com/image/pic/item/a1ec08fa513d2697e542494057fbb2fb4316d81e.jpg", "title": "网友花600万在东莞买房现跌至270万，专家回应：明年超跌房价将回升", "image": "https://img-s.msn.cn/tenant/amp/entityid/AA1jTvbj.img?w=82&h=82&q=90&m=6&f=jpg&u=t"},
    {"id": "8", "media": "法新社", "mediaLogo": "http://e.hiphotos.baidu.com/image/pic/item/a1ec08fa513d2697e542494057fbb2fb4316d81e.jpg", "title": "网友花600万在东莞买房现跌至270万，专家回应：明年超跌房价将回升", "image": "https://img-s.msn.cn/tenant/amp/entityid/AA1jTvbj.img?w=82&h=82&q=90&m=6&f=jpg&u=t"},
    {"id": "9", "media": "IT之家", "mediaLogo": "http://e.hiphotos.baidu.com/image/pic/item/a1ec08fa513d2697e542494057fbb2fb4316d81e.jpg", "title": "网友花600万在东莞买房现跌至270万，专家回应：明年超跌房价将回升", "image": "https://img-s.msn.cn/tenant/amp/entityid/AA1jTvbj.img?w=82&h=82&q=90&m=6&f=jpg&u=t"},
    {"id": "10", "media": "南华早报", "mediaLogo": "http://e.hiphotos.baidu.com/image/pic/item/a1ec08fa513d2697e542494057fbb2fb4316d81e.jpg", "title": "网友花600万在东莞买房现跌至270万，专家回应：明年超跌房价将回升", "image": "https://img-s.msn.cn/tenant/amp/entityid/AA1jTvbj.img?w=82&h=82&q=90&m=6&f=jpg&u=t"},
    {"id": "11", "media": "联合日报", "mediaLogo": "http://e.hiphotos.baidu.com/image/pic/item/a1ec08fa513d2697e542494057fbb2fb4316d81e.jpg", "title": "网友花600万在东莞买房现跌至270万，专家回应：明年超跌房价将回升", "image": "https://img-s.msn.cn/tenant/amp/entityid/AA1jTvbj.img?w=82&h=82&q=90&m=6&f=jpg&u=t"},
  ];

  @override
  Widget build(BuildContext context) {
    return GridView(
      // padding: EdgeInsets.only(bottom: bottomTabViewHeight),
      // padding: EdgeInsets.symmetric(vertical: 0),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          childAspectRatio: 3
      ),
      children: newsList.map((item) => NewsItem(item: item)).toList(),
    );
  }
}


