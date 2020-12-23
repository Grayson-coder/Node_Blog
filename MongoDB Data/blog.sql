/*
 Navicat Premium Data Transfer

 Source Server         : localhost_27017
 Source Server Type    : MongoDB
 Source Server Version : 40106
 Source Host           : localhost:27017
 Source Schema         : blog

 Target Server Type    : MongoDB
 Target Server Version : 40106
 File Encoding         : 65001

 Date: 23/12/2020 09:47:08
*/


// ----------------------------
// Collection structure for articles
// ----------------------------
db.getCollection("articles").drop();
db.createCollection("articles");

// ----------------------------
// Documents of articles
// ----------------------------
db.getCollection("articles").insert([ {
    _id: ObjectId("5f211fcedff1972c58b10687"),
    cover: "\\uploads\\upload_84e90c9c5688e89ee08bcb875717b1d9.jpg",
    title: "邂逅HTML",
    author: ObjectId("5f1567e7a614b2441c8d8d9b"),
    publicDate: ISODate("2020-10-21T16:00:00.000Z"),
    content: "<h2>简介</h2><p><a href=\"javascript:;\">编辑</a></p><h3>由来</h3><p>HTML的英文全称是 Hyper Text Markup Language，即超文本标记语言。HTML是由Web的发明者 Tim Berners-Lee和同事 Daniel W. Connolly于1990年创立的一种标记语言，它是标准通用化标记语言SGML的应用。用HTML编写的超文本文档称为HTML文档，它能独立于各种操作系统平台(如UNIX， Windows等)。使用HTML语言，将所需要表达的信息按某种规则写成HTML文件，通过专用的浏览器来识别，并将这些HTML文件“翻译”成可以识别的信息，即现在所见到的网页。 [2]</p><p>自1990年以来，HTML就一直被用作WWW的信息表示语言，使用HTML语言描述的文件需要通过WWW浏览器显示出效果。HTML是一种建立网页文件的语言，通过标记式的指令(Tag)，将影像、声音、图片、文字动画、影视等内容显示出来。事实上，每一个HTML文档都是一种静态的网页文件，这个文件里面包含了HTML指令代码，这些指令代码并不是一种程序语言，只是一种排版网页中资料显示位置的标记结构语言，易学易懂，非常简单。HTML的普遍应用就是带来了超文本的技术―通过单击鼠标从一个主题跳转到另一个主题，从一个页面跳转到另一个页面，与世界各地主机的文件链接超文本传输协议规定了浏览器在运行HTML文档时所遵循的规则和进行的操作。HTTP协议的制定使浏览器在运行超文本时有了统一的规则和标准。 [2]</p><p><a href=\"https://baike.baidu.com/item/%E4%B8%87%E7%BB%B4%E7%BD%91\">万维网</a>（world wide web）上的一个<a href=\"https://baike.baidu.com/item/%E8%B6%85%E5%AA%92%E4%BD%93/1750647\">超媒体</a>文档称之为一个<a href=\"https://baike.baidu.com/item/%E9%A1%B5%E9%9D%A2\">页面</a>（<a href=\"https://baike.baidu.com/item/%E5%A4%96%E8%AF%AD\">外语</a>：page）。作为一个组织或者个人在<a href=\"https://baike.baidu.com/item/%E4%B8%87%E7%BB%B4%E7%BD%91/215515\">万维网</a>上放置开始点的页面称为<a href=\"https://baike.baidu.com/item/%E4%B8%BB%E9%A1%B5\">主页</a>（外语：Homepage）或首页，主页中通常包括有指向其他相关页面或其他节点的<a href=\"https://baike.baidu.com/item/%E6%8C%87%E9%92%88\">指针</a>（<a href=\"https://baike.baidu.com/item/%E8%B6%85%E7%BA%A7%E9%93%BE%E6%8E%A5\">超级链接</a>），所谓超级链接，就是一种<a href=\"https://baike.baidu.com/item/%E7%BB%9F%E4%B8%80%E8%B5%84%E6%BA%90%E5%AE%9A%E4%BD%8D%E5%99%A8\">统一资源定位器</a>（Uniform Resource Locator，<a href=\"https://baike.baidu.com/item/%E5%A4%96%E8%AF%AD\">外语</a><a href=\"https://baike.baidu.com/item/%E7%BC%A9%E5%86%99\">缩写</a>：<a href=\"https://baike.baidu.com/item/URL\">URL</a>）指针，通过激活（点击）它，可使<a href=\"https://baike.baidu.com/item/%E6%B5%8F%E8%A7%88%E5%99%A8\">浏览器</a>方便地获取新的网页。这也是HTML获得广泛应用的最重要的原因之一。在逻辑上将视为一个整体的一系列<a href=\"https://baike.baidu.com/item/%E9%A1%B5%E9%9D%A2\">页面</a>的有机集合称为<a href=\"https://baike.baidu.com/item/%E7%BD%91%E7%AB%99\">网站</a>（<a href=\"https://baike.baidu.com/item/Website\">Website</a>或<a href=\"https://baike.baidu.com/item/Site/10831143\">Site</a>）。超级文本标记语言（英文缩写：HTML）是为“<a href=\"https://baike.baidu.com/item/%E7%BD%91%E9%A1%B5\">网页</a>创建和其它可在<a href=\"https://baike.baidu.com/item/%E7%BD%91%E9%A1%B5%E6%B5%8F%E8%A7%88%E5%99%A8\">网页浏览器</a>中看到的信息”设计的一种<a href=\"https://baike.baidu.com/item/%E6%A0%87%E8%AE%B0%E8%AF%AD%E8%A8%80\">标记语言</a>。 [3]</p><p>网页的本质就是超级文本<a href=\"https://baike.baidu.com/item/%E6%A0%87%E8%AE%B0%E8%AF%AD%E8%A8%80/5964436\">标记语言</a>，通过结合使用其他的<a href=\"https://baike.baidu.com/item/Web%E6%8A%80%E6%9C%AF\">Web技术</a>（如：<a href=\"https://baike.baidu.com/item/%E8%84%9A%E6%9C%AC%E8%AF%AD%E8%A8%80\">脚本语言</a>、<a href=\"https://baike.baidu.com/item/%E5%85%AC%E5%85%B1%E7%BD%91%E5%85%B3%E6%8E%A5%E5%8F%A3\">公共网关接口</a>、<a href=\"https://baike.baidu.com/item/%E7%BB%84%E4%BB%B6\">组件</a>等），可以创造出功能强大的网页。因而，超级文本标记语言是万维网（<a href=\"https://baike.baidu.com/item/Web\">Web</a>）编程的基础，也就是说万维网是建立在<a href=\"https://baike.baidu.com/item/%E8%B6%85%E6%96%87%E6%9C%AC/2832422\">超文本</a>基础之上的。超级文本标记语言之所以称为超文本标记语言，是因为文本中包含了所谓“超级链接”点。 [4]</p><h3>定义</h3><p>超级文本标记语言是<a href=\"https://baike.baidu.com/item/%E6%A0%87%E5%87%86%E9%80%9A%E7%94%A8%E6%A0%87%E8%AE%B0%E8%AF%AD%E8%A8%80\">标准通用标记语言</a>下的一个应用，也是一种规范，一种<a href=\"https://baike.baidu.com/item/%E6%A0%87%E5%87%86\">标准</a>，它通过标记符号来标记要显示的网页中的各个部分。网页文件本身是一种<a href=\"https://baike.baidu.com/item/%E6%96%87%E6%9C%AC%E6%96%87%E4%BB%B6/747597\">文本文件</a>，通过在文本文件中添加标记符，可以告诉浏览器如何显示其中的内容（如：文字如何处理，画面如何安排，图片如何显示等）。浏览器按顺序阅读网页文件，然后根据标记符解释和显示其标记的内容，对书写出错的标记将不指出其错误，且不停止其解释执行过程，编制者只能通过显示效果来分析出错原因和出错部位。但需要注意的是，对于不同的浏览器，对同一标记符可能会有不完全相同的解释，因而可能会有不同的显示效果。 [3]</p><h2>HTML版本</h2><p><a href=\"javascript:;\">编辑</a></p><p>HTML是用来标记Web信息如何展示以及其他特性的一种语法规则，它最初于1989年由CERN的Tim Berners-Lee发明。HTML基于更古老一些的语言SGML定义，并简化了其中的语言元素。这些元素用于告诉浏览器如何在用户的屏幕上展示数据，所以很早就得到各个Web浏览器厂商的支持。 [5]</p><p>HTML历史上有如下版本： [5]</p><p>①HTML 1.0：在1993年6月作为互联网工程工作小组(IETF)工作草案发布。 [5]</p><p>②HTML 2.0：1995年1 1月作为RFC 1866发布，于2000年6月发布之后被宣布已经过时。 [5]</p><p>③HTML 3.2：1997年1月14日，W3C推荐标准。 [5]</p><p>④HTML 4.0：1997年12月18日，W3C推荐标准。 [5]</p><p>⑤HTML 4.01（微小改进）：1999年12月24日，W3C推荐标准。 [5]</p><p>⑥<a href=\"https://baike.baidu.com/item/HTML%205/8762673\">HTML 5</a>：HTML5是公认的下一代Web语言，极大地提升了Web在富媒体、富内容和富应用等方面的能力，被喻为终将改变移动互联网的重要推手。 [6]</p><p>HTML在Web迅猛发展的过程中起着重要作用，有着重要的地位。但随着网络应用的深入，特别是电子商务的应用，HTML过于简单的缺陷很快凸现出来：HTML不可扩展。HTML不允许应用程序开发者为具体的应用环境定义自定义的标记。HTML只能用于信息显示。HTML可以设置文本和图片显示方式，但没有语义结构，即HTML显示数据是按照布局而非语义的。随着网络应用的发展，各行业对信息有着不同的需求，这些不同类型的信息未必都是以网页的形式显示出来。例如。当通过搜索引擎进行数据搜索时，按照语义而非按照布局来显示数据会具有更多的优点。</p><p>总而言之，HTML的缺点使其交互性差，语义模糊，这些缺陷难以适应Internet飞速发展的要求，因此一个标准、简洁、结构严谨以及可高度扩展的XML就产生了。</p><h2>特点</h2><p><a href=\"javascript:;\">编辑</a></p><p>超级文本标记语言文档制作不是很复杂，但功能强大，支持不同<a href=\"https://baike.baidu.com/item/%E6%95%B0%E6%8D%AE%E6%A0%BC%E5%BC%8F/5198733\">数据格式</a>的文件镶入，这也是万维网（<a href=\"https://baike.baidu.com/item/WWW\">WWW</a>）盛行的原因之一，其主要特点如下： [4]</p><p>简易性：超级文本标记语言<a href=\"https://baike.baidu.com/item/%E7%89%88%E6%9C%AC%E5%8D%87%E7%BA%A7\">版本升级</a>采用<a href=\"https://baike.baidu.com/item/%E8%B6%85%E9%9B%86\">超集</a>方式，从而更加灵活方便。 [4]</p><p><a href=\"https://baike.baidu.com/item/%E5%8F%AF%E6%89%A9%E5%B1%95%E6%80%A7\">可扩展性</a>：超级文本标记语言的广泛应用带来了加强功能，增加<a href=\"https://baike.baidu.com/item/%E6%A0%87%E8%AF%86%E7%AC%A6\">标识符</a>等要求，超级文本标记语言采取子类元素的方式，为系统扩展带来保证。 [4]</p><p>平台无关性：虽然<a href=\"https://baike.baidu.com/item/%E4%B8%AA%E4%BA%BA%E8%AE%A1%E7%AE%97%E6%9C%BA\">个人计算机</a>大行其道，但使用<a href=\"https://baike.baidu.com/item/MAC\">MAC</a>等其他机器的大有人在，超级文本标记语言可以使用在广泛的平台上，这也是万维网（WWW）盛行的另一个原因。 [4]</p><p>通用性：另外，HTML是网络的通用语言，一种简单、通用的全置标记语言。它允许网页制作人建立文本与图片相结合的复杂页面，这些页面可以被网上任何其他人浏览到，无论使用的是什么类型的电脑或浏览器。</p>",
    __v: NumberInt("0")
} ]);
db.getCollection("articles").insert([ {
    _id: ObjectId("5f212046dff1972c58b10688"),
    cover: "\\uploads\\upload_adb86c5e1f7ba55903db196827bd628d.jpg",
    title: "cookie与session",
    author: ObjectId("5f1567e7a614b2441c8d8d9b"),
    publicDate: ISODate("2020-07-30T12:14:59.397Z"),
    content: "<p><strong>&lt;!doctype</strong><i><strong>html</strong></i><strong>&gt;</strong></p><p><strong>&lt;html&gt;</strong></p><p><strong>&lt;head&gt;</strong></p><p><strong>&lt;meta</strong><i><strong>charset</strong></i><strong>='UTF-8'&gt;&lt;meta</strong><i><strong>name</strong></i><strong>='viewport'</strong><i><strong>content</strong></i><strong>='width=device-width&nbsp;initial-scale=1'&gt;</strong></p><p><strong>&lt;title&gt;01-项目部署&lt;/title&gt;&lt;/head&gt;</strong></p><p><strong>&lt;body&gt;&lt;h1&gt;一、项目部署&lt;/h1&gt;</strong></p><p><strong>&lt;h2&gt;1.1&nbsp;项目部署的概述&lt;/h2&gt;</strong></p><p><strong>&lt;ul&gt;</strong></p><p><strong>&lt;li&gt;&lt;p&gt;项目完成后，我们需要将&lt;strong&gt;项目部署到服务器&lt;/strong&gt;，这样别人才可以通过访问ip或域名形式，访问到我们的打包后的index.html文件&lt;/p&gt;</strong></p><p><strong>&lt;p&gt;&nbsp;&nbsp;&lt;/p&gt;</strong></p><p><strong>&lt;/li&gt;</strong></p><p><strong>&lt;li&gt;&lt;p&gt;目前我们还没有买&nbsp;&lt;strong&gt;&lt;em&gt;阿里云/腾讯云&lt;/em&gt;&lt;/strong&gt;&nbsp;服务器，所以当前我们只能够将自己电脑当做一台服务器，并且该服务器只允许同一局域网下的设备访问。但是不论是&lt;strong&gt;本地服务器&lt;/strong&gt;还是&lt;strong&gt;远程服务器&lt;/strong&gt;，其部署的方式都是基本一致&lt;/p&gt;</strong></p><p><strong>&lt;p&gt;&nbsp;&nbsp;&nbsp;&nbsp;&lt;/p&gt;</strong></p><p><strong>&lt;/li&gt;</strong></p><p><strong>&lt;li&gt;&lt;p&gt;在之前中，我们可以通过Node.js技术，在自己电脑上搭建一个本地服务器，并且&lt;strong&gt;将打包后的dist文件夹，配置为静态资源文件夹&lt;/strong&gt;。别人则可以通过&lt;strong&gt;本机的ip地址和配置好的端口&lt;/strong&gt;，来进行访问。&lt;/p&gt;</strong></p><p><strong>&lt;p&gt;&nbsp;&nbsp;&lt;/p&gt;</strong></p><p><strong>&lt;/li&gt;</strong><br>&nbsp;</p><p><strong>&lt;/ul&gt;</strong></p><p><strong>&lt;h2&gt;1.2&nbsp;认识Apache&lt;/h2&gt;</strong></p><p><strong>&lt;ul&gt;</strong></p><p><strong>&lt;li&gt;&lt;p&gt;什么是&nbsp;&lt;strong&gt;&lt;em&gt;Apache&lt;/em&gt;&lt;/strong&gt;&nbsp;？&lt;/p&gt;</strong></p><p><strong>&lt;ul&gt;</strong></p><p><strong>&lt;li&gt;&lt;p&gt;&lt;strong&gt;&lt;em&gt;Apache&lt;/em&gt;&lt;/strong&gt;&nbsp;是一款Web服务器软件，也就是电脑上的一个应用程序。&lt;/p&gt;</strong></p><p><strong>&lt;/li&gt;</strong></p><p><strong>&lt;li&gt;&lt;p&gt;&lt;strong&gt;&lt;em&gt;Apache&lt;/em&gt;&lt;/strong&gt;&nbsp;的作用就是将你的电脑变成一台服务器，让你的电脑开放特定的网络端口，用以接收来自网络上发送到这台机器的HTTP请求，对请求的内容进行处理并作出相应的响应。&lt;/p&gt;</strong></p><p><strong>&lt;p&gt;&nbsp;&nbsp;&nbsp;&nbsp;&lt;/p&gt;</strong></p><p><strong>&lt;/li&gt;</strong><br>&nbsp;</p><p><strong>&lt;/ul&gt;</strong></p><p><strong>&lt;/li&gt;</strong><br>&nbsp;</p><p><strong>&lt;/ul&gt;</strong></p><p><strong>&lt;p&gt;&amp;nbsp;&lt;/p&gt;</strong></p><p><strong>&lt;h2&gt;1.3&nbsp;window下使用Apache&lt;/h2&gt;</strong></p><p><strong>&lt;ol</strong><i><strong>start</strong></i><strong>=''&nbsp;&gt;</strong></p><p><strong>&lt;li&gt;&lt;p&gt;&lt;strong&gt;下载Apache&lt;/strong&gt;（下载地址：&lt;a</strong><i><strong>href</strong></i><strong>='https://www.apachehaus.com/cgi-bin/download.plx'</strong><i><strong>target</strong></i><strong>='_blank'</strong><i><strong>class</strong></i><strong>='url'&gt;https://www.apachehaus.com/cgi-bin/download.plx&lt;/a&gt;）&lt;/p&gt;</strong></p><p><strong>&lt;/li&gt;</strong></p><p><strong>&lt;li&gt;&lt;p&gt;下载安装包，然后&lt;strong&gt;解压&lt;/strong&gt;到指定的目录。可以根据自己的要求指定目录&nbsp;&lt;code&gt;（D:\\web\\apache2.4）&lt;/code&gt;&lt;/p&gt;</strong></p><p><strong>&lt;p&gt;&nbsp;&nbsp;&lt;/p&gt;</strong></p><p><strong>&lt;/li&gt;</strong></p><p><strong>&lt;li&gt;&lt;p&gt;进入到&lt;code&gt;D:\\web\\apache2.4/conf&lt;/code&gt;文件夹中，打开&lt;strong&gt;httpd.conf&lt;/strong&gt;文件，查找&nbsp;&lt;code&gt;Define&nbsp;SRVROOT&lt;/code&gt;，&lt;strong&gt;修改Apache路径&lt;/strong&gt;&lt;/p&gt;</strong></p><p><strong>&lt;ul&gt;</strong></p><p><strong>&lt;li&gt;&lt;pre&gt;&lt;code</strong><i><strong>class</strong></i><strong>='language-javascript'</strong><i><strong>lang</strong></i><strong>='javascript'&gt;Define&nbsp;SRVROOT&nbsp;&amp;quot;D:/web/apache2.4&amp;quot;</strong></p><p><strong>&lt;/code&gt;&lt;/pre&gt;</strong></p><p><strong>&lt;p&gt;&amp;nbsp;&lt;/p&gt;</strong></p><p><strong>&lt;/li&gt;</strong><br>&nbsp;</p><p><strong>&lt;/ul&gt;</strong></p><p><strong>&lt;/li&gt;</strong></p><p><strong>&lt;li&gt;&lt;p&gt;打开命令行，在命令行中输入&lt;code&gt;netstat&nbsp;-a&lt;/code&gt;&nbsp;查看80端口是否被占用。&lt;strong&gt;如果被占用&lt;/strong&gt;，打开&lt;strong&gt;httpd.conf&lt;/strong&gt;文件，&lt;strong&gt;修改端口&lt;/strong&gt;&lt;/p&gt;</strong></p><p><strong>&lt;ul&gt;</strong></p><p><strong>&lt;li&gt;&lt;pre&gt;&lt;code</strong><i><strong>class</strong></i><strong>='language-javascript'</strong><i><strong>lang</strong></i><strong>='javascript'&gt;Listen&nbsp;80&nbsp;//&nbsp;如果被占用&nbsp;端口号改其他的</strong></p><p><strong>&lt;/code&gt;&lt;/pre&gt;</strong></p><p><strong>&lt;p&gt;&amp;nbsp;&lt;/p&gt;</strong></p><p><strong>&lt;/li&gt;</strong><br>&nbsp;</p><p><strong>&lt;/ul&gt;</strong></p><p><strong>&lt;/li&gt;</strong></p><p><strong>&lt;li&gt;&lt;p&gt;&lt;strong&gt;安装Apache&lt;/strong&gt;，通过命令行进入到&lt;code&gt;D:/web/apache2.4/bin&lt;/code&gt;目录下，执行如下命令&lt;/p&gt;</strong></p><p><strong>&lt;ul&gt;</strong></p><p><strong>&lt;li&gt;&lt;pre&gt;&lt;code</strong><i><strong>class</strong></i><strong>='language-javascript'</strong><i><strong>lang</strong></i><strong>='javascript'&gt;httpd&nbsp;-k&nbsp;install&nbsp;-n&nbsp;apache2.4</strong></p><p><strong>&lt;/code&gt;&lt;/pre&gt;</strong></p><p><strong>&lt;p&gt;&amp;nbsp;&lt;/p&gt;</strong></p><p><strong>&lt;/li&gt;</strong><br>&nbsp;</p><p><strong>&lt;/ul&gt;</strong></p><p><strong>&lt;/li&gt;</strong></p><p><strong>&lt;li&gt;&lt;p&gt;&lt;strong&gt;启动Apache&lt;/strong&gt;，执行命令&lt;/p&gt;</strong></p><p><strong>&lt;ul&gt;</strong></p><p><strong>&lt;li&gt;&lt;pre&gt;&lt;code</strong><i><strong>class</strong></i><strong>='language-javascript'</strong><i><strong>lang</strong></i><strong>='javascript'&gt;net&nbsp;start&nbsp;Apache2.4</strong></p><p><strong>&lt;/code&gt;&lt;/pre&gt;</strong></p><p><strong>&lt;p&gt;&amp;nbsp;&lt;/p&gt;</strong></p><p><strong>&lt;/li&gt;</strong><br>&nbsp;</p><p><strong>&lt;/ul&gt;</strong></p><p><strong>&lt;/li&gt;</strong></p><p><strong>&lt;li&gt;&lt;p&gt;在浏览器中输入&lt;code&gt;localhost&lt;/code&gt;回车。如果访问到&lt;code&gt;D:\\web\\apache2.4\\htdocs&lt;/code&gt;文件夹中的&lt;strong&gt;index.html&lt;/strong&gt;&nbsp;文件，即安装成功&lt;/p&gt;</strong></p><p><strong>&lt;/li&gt;</strong><br>&nbsp;</p><p><strong>&lt;/ol&gt;</strong></p><p><strong>&lt;p&gt;&amp;nbsp;&lt;/p&gt;</strong></p><p><strong>&lt;ul&gt;</strong></p><p><strong>&lt;li&gt;命令行窗口切换磁盘：&nbsp;&lt;code&gt;D:&lt;/code&gt;&lt;/li&gt;</strong></p><p><strong>&lt;li&gt;命令行窗口切换文件夹路径:&nbsp;&lt;code&gt;cd&nbsp;文件夹/文件夹&lt;/code&gt;&lt;/li&gt;</strong><br>&nbsp;</p><p><strong>&lt;/ul&gt;</strong></p><p><strong>&lt;p&gt;&amp;nbsp;&lt;/p&gt;</strong></p><p><strong>&lt;p&gt;&amp;nbsp;&lt;/p&gt;</strong></p><p><strong>&lt;h2&gt;1.4&nbsp;window下卸载Apache&lt;/h2&gt;</strong></p><p><strong>&lt;ol</strong><i><strong>start</strong></i><strong>=''&nbsp;&gt;</strong></p><p><strong>&lt;li&gt;&lt;p&gt;&lt;strong&gt;停止Apache服务&lt;/strong&gt;，在命令行窗口中执行命令：&lt;/p&gt;</strong></p><p><strong>&lt;ul&gt;</strong></p><p><strong>&lt;li&gt;&lt;pre&gt;&lt;code</strong><i><strong>class</strong></i><strong>='language-javascript'</strong><i><strong>lang</strong></i><strong>='javascript'&gt;net&nbsp;stop&nbsp;Apache2.4</strong></p><p><strong>&lt;/code&gt;&lt;/pre&gt;</strong></p><p><strong>&lt;/li&gt;</strong><br>&nbsp;</p><p><strong>&lt;/ul&gt;</strong></p><p><strong>&lt;/li&gt;</strong></p><p><strong>&lt;li&gt;&lt;p&gt;&lt;strong&gt;卸载Apache服务&lt;/strong&gt;，在命令行窗口中执行命令&lt;/p&gt;</strong></p><p><strong>&lt;ul&gt;</strong></p><p><strong>&lt;li&gt;&lt;pre&gt;&lt;code</strong><i><strong>class</strong></i><strong>='language-javascript'</strong><i><strong>lang</strong></i><strong>='javascript'&gt;sc&nbsp;delete&nbsp;apache2.4</strong></p><p><strong>&lt;/code&gt;&lt;/pre&gt;</strong></p><p><strong>&lt;/li&gt;</strong><br>&nbsp;</p><p><strong>&lt;/ul&gt;</strong></p><p><strong>&lt;/li&gt;</strong></p><p><strong>&lt;li&gt;&lt;p&gt;&lt;strong&gt;删除Apache相关的文件&lt;/strong&gt;&lt;/p&gt;</strong></p><p><strong>&lt;/li&gt;</strong><br>&nbsp;</p><p><strong>&lt;/ol&gt;</strong></p><p><strong>&lt;p&gt;&amp;nbsp;&lt;/p&gt;</strong></p><p><strong>&lt;p&gt;&amp;nbsp;&lt;/p&gt;</strong></p><p><strong>&lt;h2&gt;1.5&nbsp;Apache配置静态资源&lt;/h2&gt;</strong></p><p><strong>&lt;ul&gt;</strong></p><p><strong>&lt;li&gt;静态资源：别人访问服务器&lt;code&gt;ip地址:端口号&lt;/code&gt;时，默认给客户端展示的页面就是静态资源&lt;/li&gt;</strong></p><p><strong>&lt;li&gt;在&lt;code&gt;apache2.4\\htdocs&lt;/code&gt;文件夹中，存放的就是静态资源，并且该文件夹中的&lt;strong&gt;index.html文件&lt;/strong&gt;，将会作为客户端访问时的&lt;strong&gt;入口文件&lt;/strong&gt;&lt;/li&gt;</strong></p><p><strong>&lt;li&gt;如果是&lt;strong&gt;本地服务器&lt;/strong&gt;的话，同一局域网下的设备可以在浏览器中访问&lt;code&gt;私网ip地址:80&lt;/code&gt;，来访问开启了Apache服务器下的静态资源，由于浏览器默认访问80端口，因此端口号80可以不用写&lt;/li&gt;</strong></p><p><strong>&lt;li&gt;如果是&lt;strong&gt;远程服务器&lt;/strong&gt;的话，任意设备都可以通过&lt;code&gt;公网ip地址:80&lt;/code&gt;，来访问开启了Apache服务器下的静态资源&lt;/li&gt;</strong><br>&nbsp;</p><p><strong>&lt;/ul&gt;</strong></p><p><strong>&lt;p&gt;&amp;nbsp;&lt;/p&gt;</strong></p><p><strong>&lt;ul&gt;</strong></p><p><strong>&lt;li&gt;每次修改Apache下的静态资源后，需要重启Apache服务&lt;/li&gt;</strong><br>&nbsp;</p><p><strong>&lt;/ul&gt;</strong></p><p><strong>&lt;p&gt;&amp;nbsp;&lt;/p&gt;</strong></p><p><strong>&lt;h2&gt;1.6&nbsp;Apache清除浏览器缓存&lt;/h2&gt;</strong></p><p><strong>&lt;ul&gt;</strong></p><p><strong>&lt;li&gt;&lt;p&gt;问题概述：&lt;/p&gt;</strong></p><p><strong>&lt;ul&gt;</strong></p><p><strong>&lt;li&gt;当我们更换了&lt;strong&gt;Apache下的静态资源&lt;/strong&gt;时，重启&lt;strong&gt;Apache&lt;/strong&gt;服务后，再次访问服务器时，会发现浏览器会访问更换之前的静态资源，这是因为&lt;strong&gt;浏览器默认会缓存以前浏览过的页面&lt;/strong&gt;&lt;/li&gt;</strong></p><p><strong>&lt;li&gt;如果我们希望&lt;strong&gt;更换&nbsp;Apache&nbsp;下的静态资源时&lt;/strong&gt;，客户端再次访问访问到的是新的静态资源，如何做到？&lt;/li&gt;</strong><br>&nbsp;</p><p><strong>&lt;/ul&gt;</strong></p><p><strong>&lt;/li&gt;</strong><br>&nbsp;</p><p><strong>&lt;/ul&gt;</strong></p><p><strong>&lt;p&gt;&amp;nbsp;&lt;/p&gt;</strong></p><p><strong>&lt;ol</strong><i><strong>start</strong></i><strong>=''&nbsp;&gt;</strong></p><p><strong>&lt;li&gt;&lt;p&gt;打开&lt;code&gt;D:\\web\\apache2.4\\conf&lt;/code&gt;文件夹下的&lt;strong&gt;httpd.conf&lt;/strong&gt;文件，将下方代码的注释打开&lt;/p&gt;</strong></p><p><strong>&lt;ul&gt;</strong></p><p><strong>&lt;li&gt;&lt;pre&gt;&lt;code</strong><i><strong>class</strong></i><strong>='language-html'</strong><i><strong>lang</strong></i><strong>='html'&gt;LoadModule&nbsp;headers_module&nbsp;modules/mod_headers.so</strong></p><p><strong>&lt;/code&gt;&lt;/pre&gt;</strong></p><p><strong>&lt;p&gt;&amp;nbsp;&lt;/p&gt;</strong></p><p><strong>&lt;/li&gt;</strong><br>&nbsp;</p><p><strong>&lt;/ul&gt;</strong></p><p><strong>&lt;/li&gt;</strong></p><p><strong>&lt;li&gt;&lt;p&gt;在&nbsp;&lt;strong&gt;httpd.conf&lt;/strong&gt;&nbsp;文件中，添加以下代码&lt;/p&gt;</strong></p><p><strong>&lt;ul&gt;</strong></p><p><strong>&lt;li&gt;&lt;pre&gt;&lt;code</strong><i><strong>class</strong></i><strong>='language-javascript'</strong><i><strong>lang</strong></i><strong>='javascript'&gt;&amp;lt;FilesMatch&nbsp;&amp;quot;\\.(php|js|css|swf|html)$&amp;quot;&amp;gt;</strong><br>&nbsp;</p><p><strong>Header&nbsp;set&nbsp;Cache-Control&nbsp;&amp;quot;private,&nbsp;no-cache,&nbsp;no-store,&nbsp;proxy-revalidate,&nbsp;no-transform&amp;quot;</strong><br>&nbsp;</p><p><strong>Header&nbsp;set&nbsp;Pragma&nbsp;&amp;quot;no-cache&amp;quot;</strong><br>&nbsp;</p><p><strong>&amp;lt;/FilesMatch&amp;gt;</strong></p><p><strong>&lt;/code&gt;&lt;/pre&gt;</strong></p><p><strong>&lt;p&gt;&amp;nbsp;&lt;/p&gt;</strong></p><p><strong>&lt;/li&gt;</strong><br>&nbsp;</p><p><strong>&lt;/ul&gt;</strong></p><p><strong>&lt;/li&gt;</strong><br>&nbsp;</p><p><strong>&lt;/ol&gt;</strong></p><p><strong>&lt;ul&gt;</strong></p><p><strong>&lt;li&gt;这样就不用每次手动清除浏览器缓存了。&lt;/li&gt;</strong><br>&nbsp;</p><p><strong>&lt;/ul&gt;</strong></p><p><strong>&lt;p&gt;&amp;nbsp;&lt;/p&gt;</strong></p><p><strong>&lt;p&gt;&amp;nbsp;&lt;/p&gt;</strong></p><p><strong>&lt;p&gt;&amp;nbsp;&lt;/p&gt;</strong></p><p><strong>&lt;p&gt;&amp;nbsp;&lt;/p&gt;</strong></p><p><strong>&lt;p&gt;&amp;nbsp;&lt;/p&gt;</strong></p><p><strong>&lt;p&gt;&amp;nbsp;&lt;/p&gt;</strong></p><p><strong>&lt;p&gt;&amp;nbsp;&lt;/p&gt;</strong></p><p><strong>&lt;p&gt;&amp;nbsp;&lt;/p&gt;</strong></p><p><strong>&lt;p&gt;&amp;nbsp;&lt;/p&gt;</strong></p><p><strong>&lt;p&gt;&amp;nbsp;&lt;/p&gt;</strong></p><p><strong>&lt;p&gt;&amp;nbsp;&lt;/p&gt;</strong></p><p><strong>&lt;p&gt;&amp;nbsp;&lt;/p&gt;</strong></p><p><strong>&lt;p&gt;&amp;nbsp;&lt;/p&gt;</strong></p><p><strong>&lt;p&gt;&amp;nbsp;&lt;/p&gt;</strong></p><p><strong>&lt;p&gt;&amp;nbsp;&lt;/p&gt;</strong></p><p><strong>&lt;p&gt;&amp;nbsp;&lt;/p&gt;</strong></p><p><strong>&lt;p&gt;&amp;nbsp;&lt;/p&gt;</strong></p><p><strong>&lt;p&gt;&amp;nbsp;&lt;/p&gt;</strong></p><p><strong>&lt;p&gt;&amp;nbsp;&lt;/p&gt;</strong></p><p><strong>&lt;p&gt;&amp;nbsp;&lt;/p&gt;</strong></p><p><strong>&lt;p&gt;&amp;nbsp;&lt;/p&gt;</strong></p><p><strong>&lt;p&gt;&amp;nbsp;&lt;/p&gt;</strong></p><p><strong>&lt;p&gt;&amp;nbsp;&lt;/p&gt;</strong></p><p><strong>&lt;p&gt;&amp;nbsp;&lt;/p&gt;</strong></p><p><strong>&lt;p&gt;&amp;nbsp;&lt;/p&gt;</strong></p><p><strong>&lt;p&gt;&amp;nbsp;&lt;/p&gt;</strong></p><p><strong>&lt;p&gt;&amp;nbsp;&lt;/p&gt;</strong></p><p><strong>&lt;p&gt;&amp;nbsp;&lt;/p&gt;</strong></p><p><strong>&lt;p&gt;&amp;nbsp;&lt;/p&gt;</strong></p><p><strong>&lt;p&gt;&amp;nbsp;&lt;/p&gt;</strong></p><p><strong>&lt;p&gt;&amp;nbsp;&lt;/p&gt;</strong></p><p><strong>&lt;p&gt;&amp;nbsp;&lt;/p&gt;</strong></p><p><strong>&lt;p&gt;&amp;nbsp;&lt;/p&gt;</strong></p><p><strong>&lt;p&gt;&amp;nbsp;&lt;/p&gt;</strong></p><p><strong>&lt;p&gt;&amp;nbsp;&lt;/p&gt;</strong></p><p><strong>&lt;p&gt;&amp;nbsp;&lt;/p&gt;</strong></p><p><strong>&lt;p&gt;&amp;nbsp;&lt;/p&gt;</strong></p><p><strong>&lt;p&gt;&amp;nbsp;&lt;/p&gt;</strong></p><p><strong>&lt;p&gt;&amp;nbsp;&lt;/p&gt;</strong></p><p><strong>&lt;p&gt;&amp;nbsp;&lt;/p&gt;</strong></p><p><strong>&lt;p&gt;&amp;nbsp;&lt;/p&gt;</strong></p><p><strong>&lt;p&gt;&amp;nbsp;&lt;/p&gt;</strong></p><p><strong>&lt;p&gt;&amp;nbsp;&lt;/p&gt;</strong></p><p><strong>&lt;p&gt;&amp;nbsp;&lt;/p&gt;</strong></p><p><strong>&lt;p&gt;&amp;nbsp;&lt;/p&gt;</strong></p><p><strong>&lt;p&gt;&amp;nbsp;&lt;/p&gt;</strong></p><p><strong>&lt;p&gt;&amp;nbsp;&lt;/p&gt;</strong></p><p><strong>&lt;p&gt;&amp;nbsp;&lt;/p&gt;</strong></p><p><strong>&lt;p&gt;&amp;nbsp;&lt;/p&gt;</strong></p><p><strong>&lt;p&gt;&amp;nbsp;&lt;/p&gt;</strong></p><p><strong>&lt;p&gt;&amp;nbsp;&lt;/p&gt;</strong></p><p><strong>&lt;p&gt;&amp;nbsp;&lt;/p&gt;</strong></p><p><strong>&lt;p&gt;&amp;nbsp;&lt;/p&gt;</strong></p><p><strong>&lt;p&gt;&amp;nbsp;&lt;/p&gt;</strong></p><p><strong>&lt;p&gt;&amp;nbsp;&lt;/p&gt;</strong></p><p><strong>&lt;p&gt;&amp;nbsp;&lt;/p&gt;</strong></p><p><strong>&lt;p&gt;&amp;nbsp;&lt;/p&gt;</strong></p><p><strong>&lt;p&gt;&amp;nbsp;&lt;/p&gt;</strong></p><p><strong>&lt;p&gt;&amp;nbsp;&lt;/p&gt;</strong></p><p><strong>&lt;p&gt;&amp;nbsp;&lt;/p&gt;</strong></p><p><strong>&lt;p&gt;&amp;nbsp;&lt;/p&gt;</strong></p><p><strong>&lt;p&gt;&amp;nbsp;&lt;/p&gt;</strong></p><p><strong>&lt;p&gt;&amp;nbsp;&lt;/p&gt;</strong></p><p><strong>&lt;/body&gt;</strong></p><p><strong>&lt;/html&gt;</strong></p><p>&nbsp;</p>",
    __v: NumberInt("0")
} ]);
db.getCollection("articles").insert([ {
    _id: ObjectId("5f21206cdff1972c58b10689"),
    cover: "\\uploads\\upload_6dd18a691665e7e14804925fd4c8a703.jpg",
    title: "小米项目444",
    author: ObjectId("5f1567e7a614b2441c8d8d9b"),
    publicDate: ISODate("2020-07-30T09:57:36.269Z"),
    content: "<p>福州新闻网7月28日讯（福州日报记者 朱榕 实习生 林怡）记者28日从福州市道运中心获悉，为创新公交服务模式，充分考虑市民出行特点，从7月31日起，开通三条通往文山里软件园的通勤快线，同时开通地铁接驳23号专线。同一天，市道运中心还将开通高峰快线5、6、7等3条线路，当天福州共计开通7条特色公交。</p><p>　　通勤快线是指两点一线连接重点居住区和重点功能区的公交专线，类似班车线，可以解决上班族早晚高峰期的出行问题，可快速疏导乘客，缓解市区尤其是重点功能区的交通拥堵。31日当天开通的3条通勤快线分从荆溪片区、五四北片区、金山片区驶往文山里软件园。同日，市道运中心还将开通5、6、7高峰快线，前往南通、马尾和三江口片区，满足各外围组团的早晚高峰通行需求。</p>",
    __v: NumberInt("0")
} ]);
db.getCollection("articles").insert([ {
    _id: ObjectId("5f212096dff1972c58b1068a"),
    cover: "\\uploads\\upload_d4f830313916be4630428dc068c75a1b.jpg",
    title: "JavaScript进阶",
    author: ObjectId("5f1567e7a614b2441c8d8d9b"),
    publicDate: ISODate("2020-07-28T16:00:00.000Z"),
    content: "<p>此外，福州31日还将开通地铁接驳23号专线，填补晋安区横屿路、竹屿路公交线网空白，方便沿线居民换乘地铁出行，强化与地铁2号线接驳融合。</p><p>　<strong>　又讯 </strong>为优化线路走向，降低线路重复系数，从7月31日起，变更157路公交线路线路走向。</p><p>　　调整后，车辆从大学城福建工程学院站发车，按原线路行驶至尤溪洲桥头站后，改行燎原路、通江路至联建村（财金校）站后恢复原线路行驶，返程改道路段亦同。</p><p>　　增设东南眼科（金山新院）、江南水都中学、燎原路等站点，取消港头(闽江大道)、半道等站点。</p>",
    __v: NumberInt("0")
} ]);
db.getCollection("articles").insert([ {
    _id: ObjectId("5f222cc4f1ddb63eb49dc0b3"),
    cover: "\\uploads\\upload_660f93c0ebdabea5465dbb83c6742107.jpg",
    title: "React",
    author: ObjectId("5f1567e7a614b2441c8d8d9b"),
    publicDate: ISODate("2020-07-29T16:00:00.000Z"),
    content: "<p>福州新闻网7月28日讯（福州日报记者 朱榕 实习生 林怡）记者28日从福州市道运中心获悉，为创新公交服务模式，充分考虑市民出行特点，从7月31日起，开通三条通往文山里软件园的通勤快线，同时开通地铁接驳23号专线。同一天，市道运中心还将开通高峰快线5、6、7等3条线路，当天福州共计开通7条特色公交。</p><p>　　通勤快线是指两点一线连接重点居住区和重点功能区的公交专线，类似班车线，可以解决上班族早晚高峰期的出行问题，可快速疏导乘客，缓解市区尤其是重点功能区的交通拥堵。31日当天开通的3条通勤快线分从荆溪片区、五四北片区、金山片区驶往文山里软件园。同日，市道运中心还将开通5、6、7高峰快线，前往南通、马尾和三江口片区，满足各外围组团的早晚高峰通行需求。</p><p>　　此外，福州31日还将开通地铁接驳23号专线，填补晋安区横屿路、竹屿路公交线网空白，方便沿线居民换乘地铁出行，强化与地铁2号线接驳融合。</p><p>　<strong>　又讯 </strong>为优化线路走向，降低线路重复系数，从7月31日起，变更157路公交线路线路走向。</p><p>　　调整后，车辆从大学城福建工程学院站发车，按原线路行驶至尤溪洲桥头站后，改行燎原路、通江路至联建村（财金校）站后恢复原线路行驶，返程改道路段亦同。</p><p>　　增设东南眼科（金山新院）、江南水都中学、燎原路等站点，取消港头(闽江大道)、半道等站点。</p>",
    __v: NumberInt("0")
} ]);
db.getCollection("articles").insert([ {
    _id: ObjectId("5f22b940a3ef544608443b2a"),
    cover: "\\uploads\\upload_cf04f3927d1113725e04e8f0c2cff573.jpg",
    title: "Express框架",
    author: ObjectId("5f1567e7a614b2441c8d8d9b"),
    publicDate: ISODate("2020-07-29T16:00:00.000Z"),
    content: "<blockquote><h2>1.1 邂逅Express框架</h2><p>express框架开发的服务器，<strong>语法更加简写</strong></p><p>使用Node原生的服务器，需要引入router和serve-static模块，来进行代码的分离，而使用express框架开发的服务器，自带以上两个模块的功能</p><p>总结：</p><p>&nbsp;</p><p>提供了中间件机制有效控制HTTP请求</p><p>提供了简洁的拦截请求方式以及路由定义写法</p><p>对获取HTTP请求参数进行了简化处理</p><p>Express框架搭建的服务器<i><strong>特性</strong></i>：</p><p>&nbsp;</p><p>Express是一个<strong>基于Node平台</strong>的服务器开发框架，同时也是一个第三方模块，通过npm i express下载</p><p>什么是Express框架？</p></blockquote>",
    __v: NumberInt("0")
} ]);
db.getCollection("articles").insert([ {
    _id: ObjectId("5f91300366381c35e463ff4a"),
    cover: null,
    title: "Vue全家桶",
    author: ObjectId("5f156d507b4a3c38e0892c19"),
    content: "小码哥教育技术总监的Vue教程",
    publicDate: ISODate("2020-10-22T07:08:51.69Z"),
    __v: NumberInt("0")
} ]);

// ----------------------------
// Collection structure for comments
// ----------------------------
db.getCollection("comments").drop();
db.createCollection("comments");

// ----------------------------
// Documents of comments
// ----------------------------
db.getCollection("comments").insert([ {
    _id: ObjectId("5f2251eb5315c3430c226e2b"),
    uid: ObjectId("5f223149b3d9b542504ba123"),
    aid: ObjectId("5f20f00e68329f0468cbba13"),
    content: "7777",
    time: ISODate("2020-07-30T04:51:55.017Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("comments").insert([ {
    _id: ObjectId("5f225242478f9a3e547ef226"),
    uid: ObjectId("5f223149b3d9b542504ba123"),
    aid: ObjectId("5f20f00e68329f0468cbba13"),
    content: "aaa",
    time: ISODate("2020-07-30T04:53:22.537Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("comments").insert([ {
    _id: ObjectId("5f225455f4e28f1e5caeb758"),
    uid: ObjectId("5f223149b3d9b542504ba123"),
    aid: ObjectId("5f20f00e68329f0468cbba13"),
    content: "456789",
    time: ISODate("2020-07-30T05:02:13.216Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("comments").insert([ {
    _id: ObjectId("5f2255ba73bb3f0478993b79"),
    uid: ObjectId("5f223149b3d9b542504ba123"),
    aid: ObjectId("5f20f00e68329f0468cbba13"),
    content: "让我来测试一下哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈啊哈",
    time: ISODate("2020-07-30T05:08:10.108Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("comments").insert([ {
    _id: ObjectId("5f22564773bb3f0478993b7a"),
    uid: ObjectId("5f223149b3d9b542504ba123"),
    aid: ObjectId("5f211fcedff1972c58b10687"),
    content: "HTML讲的真棒",
    time: ISODate("2020-07-30T05:10:31.757Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("comments").insert([ {
    _id: ObjectId("5f2257dc218fb82704297b3f"),
    uid: ObjectId("5f223149b3d9b542504ba123"),
    aid: ObjectId("5f20f00e68329f0468cbba13"),
    content: "小马哥教育讲的真的很好啊我草",
    time: ISODate("2020-07-30T05:17:16.641Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("comments").insert([ {
    _id: ObjectId("5f2257f3218fb82704297b40"),
    uid: ObjectId("5f223149b3d9b542504ba123"),
    aid: ObjectId("5f18110791759937dca803f1"),
    content: "你这是什么垃圾Vue",
    time: ISODate("2020-07-30T05:17:39.794Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("comments").insert([ {
    _id: ObjectId("5f2259234697894320d38fcb"),
    uid: ObjectId("5f223149b3d9b542504ba123"),
    aid: ObjectId("5f20f00e68329f0468cbba13"),
    content: "垃圾",
    time: ISODate("2020-07-30T05:22:43.722Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("comments").insert([ {
    _id: ObjectId("5f22b967a3ef544608443b2b"),
    uid: ObjectId("5f223149b3d9b542504ba123"),
    aid: ObjectId("5f22b940a3ef544608443b2a"),
    content: "将的真好",
    time: ISODate("2020-07-30T12:13:27.731Z"),
    __v: NumberInt("0")
} ]);

// ----------------------------
// Collection structure for users
// ----------------------------
db.getCollection("users").drop();
db.createCollection("users");
db.getCollection("users").createIndex({
    email: NumberInt("1")
}, {
    name: "email_1",
    background: true,
    unique: true
});

// ----------------------------
// Documents of users
// ----------------------------
db.getCollection("users").insert([ {
    _id: ObjectId("5f1567e7a614b2441c8d8d9b"),
    state: NumberInt("1"),
    userName: "林必龙",
    email: "999999@qq.com",
    password: "$2a$10$y6No.0T3TwVhObaiSUCt1OHGiCcJqRsT07pBYx7rE5QuTYoYE9Rky",
    role: "admin",
    __v: NumberInt("0")
} ]);
db.getCollection("users").insert([ {
    _id: ObjectId("5f1568abe8c238345040d4b5"),
    state: NumberInt("0"),
    userName: "张5",
    email: "3315874213ss2@qq.com",
    password: "$2a$10$jNVbQeTPyOskdP5rJ7ucx.T16QrE.xnlbg77EliimYFIbGQsmN4w6",
    role: "normal",
    __v: NumberInt("0")
} ]);
db.getCollection("users").insert([ {
    _id: ObjectId("5f1568b6e8c238345040d4b7"),
    state: NumberInt("0"),
    userName: "张5",
    email: "3315874213sabs2@qq.com",
    password: "$2a$10$jNVbQeTPyOskdP5rJ7ucx.T16QrE.xnlbg77EliimYFIbGQsmN4w6",
    role: "normal",
    __v: NumberInt("0")
} ]);
db.getCollection("users").insert([ {
    _id: ObjectId("5f1568bbe8c238345040d4b8"),
    state: NumberInt("0"),
    userName: "张5",
    email: "3315874213sabcs2@qq.com",
    password: "$2a$10$jNVbQeTPyOskdP5rJ7ucx.T16QrE.xnlbg77EliimYFIbGQsmN4w6",
    role: "normal",
    __v: NumberInt("0")
} ]);
db.getCollection("users").insert([ {
    _id: ObjectId("5f1568c3e8c238345040d4ba"),
    state: NumberInt("0"),
    userName: "张5",
    email: "3315874213dsabcs2e@qq.com",
    password: "$2a$10$jNVbQeTPyOskdP5rJ7ucx.T16QrE.xnlbg77EliimYFIbGQsmN4w6",
    role: "normal",
    __v: NumberInt("0")
} ]);
db.getCollection("users").insert([ {
    _id: ObjectId("5f1568c7e8c238345040d4bb"),
    state: NumberInt("0"),
    userName: "张5",
    email: "3315874213dsabfcs2e@qq.com",
    password: "$2a$10$jNVbQeTPyOskdP5rJ7ucx.T16QrE.xnlbg77EliimYFIbGQsmN4w6",
    role: "normal",
    __v: NumberInt("0")
} ]);
db.getCollection("users").insert([ {
    _id: ObjectId("5f156d507b4a3c38e0892c19"),
    state: NumberInt("0"),
    userName: "王元洪",
    email: "44444444@qq.com",
    password: "$2a$10$TeoUTFLdIAVHkrG961jSDuNctYw13qBJD7sfyNXv/U2IFMyJy9x3G",
    role: "normal",
    __v: NumberInt("0")
} ]);
db.getCollection("users").insert([ {
    _id: ObjectId("5f156d697b4a3c38e0892c1a"),
    state: NumberInt("1"),
    userName: "pink",
    email: "88888@qq.com",
    password: "$2a$10$PpRtM3pwGQIGgUk0bPeTPOcmqV4ECADkbP0Bq9pG6hcNSXYsj0wui",
    role: "admin",
    __v: NumberInt("0")
} ]);
db.getCollection("users").insert([ {
    _id: ObjectId("5f1693d0305c173d00461939"),
    state: NumberInt("0"),
    userName: "张三",
    email: "33158742pp@qq.com",
    password: "$2a$10$kn1yCNjrFC5.N7u8J2NDjOAKO7c0deoadK9sd5aX3ra6X1DLiY2yu",
    role: "normal",
    __v: NumberInt("0")
} ]);
db.getCollection("users").insert([ {
    _id: ObjectId("5f1698294e68ee2f08f2f5a5"),
    state: NumberInt("1"),
    userName: "彭于晏",
    email: "5555@qq.com",
    password: "$2a$10$NTnzqse1uyM4YNg7YXaZjOSxts4fXhgBDtQcmiURIWcoZN3pQbSQq",
    role: "admin",
    __v: NumberInt("0")
} ]);
db.getCollection("users").insert([ {
    _id: ObjectId("5f16b04951509a24b4e982b6"),
    state: NumberInt("0"),
    userName: "爸爸",
    email: "1111@qq.com",
    password: "$2a$10$ibf0wQcK5NLbOgoKVkpUoO.opm5viXckjsj2UB4F3quEAsteykjoC",
    role: "normal",
    __v: NumberInt("0")
} ]);
db.getCollection("users").insert([ {
    _id: ObjectId("5f223149b3d9b542504ba123"),
    state: NumberInt("0"),
    userName: "曹操",
    email: "123456@qq.com",
    password: "$2a$10$4JGdWuiwH/dmBGXm4w6YGOYrBqf9QYsk393Wb6j7/GlAMnLkGkTTu",
    role: "normal",
    __v: NumberInt("0")
} ]);
db.getCollection("users").insert([ {
    _id: ObjectId("5f228a271226f43ea85d8eb6"),
    state: NumberInt("0"),
    userName: "coderwhy",
    email: "444@qq.com",
    password: "$2a$10$QADgVQX/fKzr5.UxMC72K.LrYuj9iWA0ucnZfDKZnyjFB4/eX.m0W",
    role: "normal",
    __v: NumberInt("0")
} ]);
db.getCollection("users").insert([ {
    _id: ObjectId("5f91300663dcfc35ec2bf894"),
    state: NumberInt("0"),
    userName: "李四",
    email: "49947276123@qq.com",
    password: "$2a$10$uCLViDtxJ6U1xyQ2WJsiW.THmfGKCWET9XlpMc7nE5bTD1RCf5KDO",
    role: "normal",
    __v: NumberInt("0")
} ]);
db.getCollection("users").insert([ {
    _id: ObjectId("5f91302444d7191208ba2163"),
    state: NumberInt("0"),
    userName: "admin",
    email: "33158742@qq.com",
    password: "$2a$10$2rCQXENAL1tG/NMypURwT.XgcSiq4y4ws2u4mrxZQqMxeaqM99QwO",
    role: "admin",
    __v: NumberInt("0")
} ]);
