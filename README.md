# webshop java基础练习项目-仿照雷蛇商城

javaweb 基础部分，没有涉及框架，基本实现，浏览商品，查看商品，购物车，查看订单，分页显示。
可以作为毕设，练习demo等
这是之前上学时期练习的一个demo，看有朋友需要就上传上来了。更多资源关注:[耿子blog](http://open.weixin.qq.com/qr/code?username=gh_00fc0ac9f94b)
![效果图](https://github.com/gengzi/webshop/blob/master/docandsql/img/9.png)


## 1 项目简介
用户登录：客户通过注册后，若已注册，直接登录键鼠特卖商城，进行购买心仪的鼠标或键盘或电脑配件等，点击购买后，到购物车进行查看购买商品的详细信息，填写收货地址等详细个人信息，订单提交成功后，可以到个人中心查看，支付成功发货，未支付不支持发货。
管理员登录：登录成功后，可以查看交易管理里的查看订单和处理订单，进行商品管理，查看所有的商品，查看库存，添加或删除商品。

## 2	采用的开发技术
JSP: JSP 是java Server Page 的缩写，是由Sun公司倡导、许多公司参加，于1999年推出的一种动态网页技术标准。JSP是基于Java Servlet 以及整个Java 体系的Web 开发技术，利用这一技术可以建立安全的、跨平台的先进动态网站。
JavaBean: JavaBean体系结构是第一个全面基于组件的标准模型之一。JavaBean最大的优点是能够一次编写,多次使用,而且能够运行在任何Java虚拟机能运行的地方,另外,其代码相对来说也比较容易编写。
  Servlet：JSP的基础——Servlet技术Java Servlet是JSP技术的基础，JSP本身就是预先被编译成Servlet，然后再运行的，而且大型的Web应用程序的开发需要Java Servlet和JSP配合才能完成。
JDBC：Java语言作为一种安全,健壮,易于使用并可以从网页上下载的编程语言,为开发数据库应用提供了良好的语言基础.JDBC扩展了Java的功能,它是Java语言和数据库互连的接口,即执行SQL语句的Java API.它由一系列的用Java语言编写的类和接口组成。
.

## 3  系统的总体分析设计
### 3.1  系统需求分析
对于典型的数据库管理系统，尤其是像网上商城这样数据流量特别大的网络管理系统，必须要满足使用方便、操作灵活等设计需求。网上商城系统的目标如下：
1.	满足广大电脑爱好者，游戏爱好者对于电脑及其配件的需要。
2.	本网站界面简单，时尚，炫酷，符合青年朋友的兴趣。
3.	 网站主页有推荐产品，以及各种产品的分类。
4.	对用户提交的订单，根据情况进行阶段处理。
5.	能够判断订单支付状况，支付送货，未支付不发货。
6.	对管理员信息、网站公告信息及友情链接信息进行维护管理。
7.	管理员能够查询客户的订单以及对订单进项管理。可以往数据库添加商品信息，同时能够对商品进行编辑和删除管理。

### 3.2  系统功能描述
根据系统需求分析中的内容，系统的主要功能及各部分的功能描述如下：
1.	商品信息查询：当用户进入商城时，可以通过首页的商品展台查看最新商品信息，可以通过对鼠标，键盘，笔记本，推荐商品等不同栏目的点击可以查看对应的商品信息。
2.	订单管理：在用户选择个人中心后， 可以查看对应的订单记录， 同时用户也可以随时进入订单管理页面，查询与自己相关的订单信息。用户也可以对自己的订单进行删除管理。
3.	购物车管理：当用户选择购买某种商品时，应该能够将对应的商品信息记录到购物车中，并允许返回到其他商品信息查询页面，继续选择商品。在购物车中添加新商品，删除所购商品及清空购物车的操作等。
4.	用户信息管理：为了能够实现商品的购买，用户需要注册并正确登录，也可修改资料 。
5.	在用户页面上方可以点击退出系统，退出本官网。
6.	商品分类管理：通过商品的分类来查看商品，管理员可以根据需要修改、添加、删除、查询商品的类别。
7.	商品基本信息管理：管理员可以在该模块下添加、删除、查询 商品。
8.	订单处理：管理员在该模块查询订单信息，通过对支付信息的查询，依据订单信息进行后续的出货处理。

### 3.3  功能模块划分
根据电子商城前台特点的分析，可以将前台划分为4个模块，划分如下：
（1）	商品查询：通过官网首页的信息提示，对商品信息进行查询。
（2）	购物车：添加商品至购物车、查看购物车 可以对购物车进行编辑，修改，删除操作 。
（3）	个人中心：可以对我的订单，订单详情，收货地址，个人资料进行操作。
（4）	退出本系统跳转到主页。

### 3.4根据电子商城后台特点的分析，可以将后台划分为4个模块，划分如下：
（1）	 查看订单：查询顾客的订单，并且能够查询到订单详情。
（2）	 处理订单：可以根据用户是否支付判定是否发货。
（3）	 商品详情：可以通过数据库查询到商品的详细信息。
（4）	 添加商品：可以分类对商品进行上传。
（5）	退出后台
### 3.5  数据库设计
本系统采用MySQL作为后台开发工具，并利用其强大的数据库管理功能建立了在毕业设计选题系统数据库，其中表包括：用户表、商品信息表、订单表、订单详情表。

1、用户表

![用户表](https://github.com/gengzi/webshop/blob/master/docandsql/img/1.png)

2、商品信息表

![商品信息表](https://github.com/gengzi/webshop/blob/master/docandsql/img/2.png)

3、订单表
 
 ![订单表](https://github.com/gengzi/webshop/blob/master/docandsql/img/3.png)

4、订单详情表
 
 ![订单详情表](https://github.com/gengzi/webshop/blob/master/docandsql/img/4.png)
  
## 4网上商城系统的实现
### 4.1	 前台页面

前台页面主要有11个JSP页面组成，现列出如下：
1.官网欢迎页面（index.jsp）：
  ![官网欢迎页面](https://github.com/gengzi/webshop/blob/master/docandsql/img/5.png)
 
2.注册页面（register.jsp）：
  ![注册页面](https://github.com/gengzi/webshop/blob/master/docandsql/img/6.png)
 
3.登录界面（login.jsp）:
  ![登录界面](https://github.com/gengzi/webshop/blob/master/docandsql/img/7.png)
 
4.官网首页：
![官网首页](https://github.com/gengzi/webshop/blob/master/docandsql/img/8.png)
![官网首页](https://github.com/gengzi/webshop/blob/master/docandsql/img/9.png)

5.鼠标页面：
![鼠标页面](https://github.com/gengzi/webshop/blob/master/docandsql/img/10.png)
 
6.键盘页面：

![键盘页面](https://github.com/gengzi/webshop/blob/master/docandsql/img/11.png)
7．笔记本电脑：
![笔记本电脑](https://github.com/gengzi/webshop/blob/master/docandsql/img/12.png) 

8．个人中心---我的订单：
![笔记本电脑](https://github.com/gengzi/webshop/blob/master/docandsql/img/13.png) 
 
9.我的购物车：
![笔记本电脑](https://github.com/gengzi/webshop/blob/master/docandsql/img/14.png) 

10.确认订单信息（提交订单）：
 ![确认订单信息](https://github.com/gengzi/webshop/blob/master/docandsql/img/15.png) 

11.订单详情
 ![订单详情](https://github.com/gengzi/webshop/blob/master/docandsql/img/16.png) 
 
### 4.2	后台页面
后台管理员页面主要有7个JSP页面组成，具体如下：
1.管理员主页面：
 ![管理员主页面](https://github.com/gengzi/webshop/blob/master/docandsql/img/17.png) 
 

2.查看订单： 
 	 ![查看订单](https://github.com/gengzi/webshop/blob/master/docandsql/img/18.png) 

3.订单详情：
 ![订单详情](https://github.com/gengzi/webshop/blob/master/docandsql/img/19.png) 
 

4.处理订单：
 ![处理订单](https://github.com/gengzi/webshop/blob/master/docandsql/img/20.png) 
 

5.查看商品信息：
 ![查看商品信息](https://github.com/gengzi/webshop/blob/master/docandsql/img/21.png) 
 

6．编辑商品信息：
 ![编辑商品信息](https://github.com/gengzi/webshop/blob/master/docandsql/img/22.png) 
 


7.添加商品信息：
 ![添加商品信息](https://github.com/gengzi/webshop/blob/master/docandsql/img/23.png) 
 
