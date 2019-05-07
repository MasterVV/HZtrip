SET NAMES UTF8;
DROP DATABASE IF EXISTS HZ;
CREATE DATABASE hz CHARSET=UTF8;
USE HZ;

/*创建用户登录注册表*/
CREATE TABLE hz_user(   #用户信息表
    uid INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    uname VARCHAR(32),
    upwd VARCHAR(32),
    email VARCHAR(64),
    phone VARCHAR(16),
    avatar VARCHAR(128),         #头像图片路径
    user_name   VARCHAR(32),     #用户名 如王小明
    gender  INT                  #性别  0-女  1-男

);
INSERT INTO hz_user VALUES(1,'王小明','123456','602784558@qq.com','15858465820','#','Allen','1');
INSERT INTO hz_user VALUES(2,'楼小言','123456','585984665@qq.com','15879865845','#','Pat','2');
INSERT INTO hz_user VALUES(3,'叶猫猫','123456','457895632@qq.com','15878956854','#','HELL','1');
INSERT INTO hz_user VALUES(4,'包子会飞','123456','478786545@qq.com','15878458789','#','pao','2');
INSERT INTO hz_user VALUES(5,'yyc','123456','478786545@qq.com','15878458789','#','ye','2');


CREATE TABLE hz_index(
    uid INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    tname VARCHAR(32),
    tduce VARCHAR(2500),
    turl VARCHAR(128),
    tother VARCHAR(128)
);

INSERT INTO hz_index VALUES(1,"杭州概况",'杭州是中国八大古都之一，浙江省的省会。这里，江流襟带，山色藏幽，湖光翠秀；这里，史脉悠远，文风炽盛，名流辈出；这里，自古至今被公认为是古老神州的东南名都、鱼米之乡 、丝绸之府、文物之邦，一直以物质财富丰饶繁盛和文化艺术源远流长而享有“人间天堂”的美誉。经过2000多年的保护、开发、建设，杭州从一个山中小县，出落成自然环境和人文底蕴相映生辉的国家历史文化名城、著名山水旅游胜地、东南沿海地区现代化的政治经济中心、交通枢纽和文化都会。','./taset-img/syVideoImg2.jpg','');
INSERT INTO hz_index VALUES(2,"樱桃小院",'杭州市西湖风景区白乐桥282号、69号','./taset-img/W020150817593733647543.png',"");
INSERT INTO hz_index VALUES(3,"杭州半亩方塘客栈",'杭州西湖区灵隐支路白乐桥272号','./taset-img/W020150817591528124879.png',"");
INSERT INTO hz_index VALUES(4,"杭州西湖莫蕾娜古堡",'杭州市西湖区上满觉陇路杨家山6号','taset-img/W020150817589452693100.png',"");
INSERT INTO hz_index VALUES(5,'2018"杭州优质旅游计划"','2018"杭州优质旅游计划"
                            为了树立杭州优质旅游品牌，打造"放心旅游在杭州"的总体形象，全市开展了为时半...','./taset-img/W020190118634954444069.png',"");
INSERT INTO hz_index VALUES(6,'最杭州，醉秋天！','何季最公？秋，明察秋毫； 何季最智？秋，一叶知秋； 何季最长？秋，如隔三秋； 何...','./taset-img/W020181024387883998983.png',"");
INSERT INTO hz_index VALUES(7,'纵享激情,这座杭城夏...','七月仲夏,江南透蓝的天空,悬着火球似的太阳,云彩好似被太阳烧化了,也消失影无踪,走...','./taset-img/W020180827548524769813.png',"");
INSERT INTO hz_index VALUES(8,'盛夏弦游来杭州','郁夏的江南杭城风景出了名的宜人,知名景点周边的购物圣地,聚集着潮人玩味。夏风中...','./taset-img/W020180827546831070887.png',"");
INSERT INTO hz_index VALUES(9,'','      <div class="mb-4" id="d1" >
                        <div class="mb-4"><a href="#" class="h3 ">淳安县</a></div>
                        <div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;淳安县位于浙江西部，钱塘江上游,是著名国家级风景区千岛湖所在地，又是浙江省政府批准的革命老根据地县。淳安历史悠久，古为新安郡治，严州首邑。近几年淳安旅游事业快速发展，旅游业已成为淳安县支柱产业和主导产业。总面积982平方公里的...</div>
                        <h5 class="mt-4 mb-3">旅游景点</h5>
                        <ul class="list-unstyled nav w-75 ">
                            <li class="border p-2 mr-2 mb-2"><a class="text-white"  href="#" title="千岛湖">千岛湖</a></li>
                            <li class="border p-2 mr-2 mb-2"><a class="text-white" href="#"
                                                                title="千岛湖石林">千岛湖石林</a></li>
                            <li class="border p-2 mr-2 mb-2"><a class="text-white" href="#"
                                                                title="千岛湖龙川湾">千岛湖龙川湾</a></li>
                            <li class="border p-2 mr-2 mb-2"><a class="text-white" href="#"
                                                                title="森林氧吧">森林氧吧</a></li>
                            <li class="border p-2 mr-2 mb-2"><a class="text-white" href="#"
                                                                title="九咆界">九咆界</a></li>
                            <li class="border p-2 mr-2 mb-2"><a class="text-white" href="#"
                                                                title="农夫山泉工业旅游示范点">农夫山泉工业旅游示范点</a></li>
                            <li class="border p-2 mr-2 mb-2"><a class="text-white" href="#"
                                                                title="白云溪">白云溪</a></li>
                            <li class="border p-2 mr-2 mb-2"><a class="text-white" href="#"
                                                                title="上溪村">上溪村</a></li>
                        </ul>
                    </div>','','');
INSERT INTO hz_index VALUES(10,"",' <div class="mb-4" id="d2" >
                        <div class="mb-4"><a href="#" class="h3 ">建德市</a></div>
                        <div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;建德历史悠久，是浙江人类历史的发源地。据从建德李家镇新桥村乌龟洞内发现的“建德人牙”化石鉴定，早在10万年前，就有人类在这里繁衍生息。西周时期，建德属“扬州之域”，春秋战国时期属越国，秦汉归会稽郡富春县，三国魏黄初二年（公元...</div>
                        <h5 class="mt-4 mb-3">旅游景点</h5>
                        <ul class="list-unstyled nav w-75 ">
                            <li class="border p-2 mr-2 mb-2"><a class="text-white"  href="#" title="西溪国家湿地公园(西区)">西溪国家湿地公园(西区)</a></li>
                            <li class="border p-2 mr-2 mb-2"><a class="text-white" href="#"
                                                                title="杭州双溪漂流景区">杭州双溪漂流景区</a></li>
                            <li class="border p-2 mr-2 mb-2"><a class="text-white" href="#"
                                                                title="山沟沟风景旅游区">山沟沟风景旅游区</a></li>
                            <li class="border p-2 mr-2 mb-2"><a class="text-white" href="#"
                                                                title="农夫乐园">农夫乐园</a></li>
                            <li class="border p-2 mr-2 mb-2"><a class="text-white" href="#"
                                                                title="径山风景名胜区">径山风景名胜区</a></li>
                            <li class="border p-2 mr-2 mb-2"><a class="text-white" href="#"
                                                                title="超山风景名胜区">超山风景名胜区</a></li>
                            <li class="border p-2 mr-2 mb-2"><a class="text-white" href="#"
                                                                title="杭州东明山深林公园">杭州东明山深林公园</a></li>
                            <li class="border p-2 mr-2 mb-2"><a class="text-white" href="#"
                                                                title="良渚博物院">良渚博物院</a></li>
                        </ul>
                    </div>',"","");

INSERT INTO hz_index VALUES(11,"",'                    <div class="mb-4 " id="d3" >
                        <div class="mb-4"><a href="#" class="h3 ">临安市</a></div>
                        <div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;临安市总面积3126.8平方千米，是浙江省陆地面积最大的县级市。地处浙江省西北部天目山区，东邻杭州市余杭区，南连富阳市和桐庐县、淳安县，西接安徽省歙县，北界安吉县及安徽省绩溪县、宁国市。市境东西宽约100千米，南北长约50千米；中心...</div>
                        <h5 class="mt-4 mb-3">旅游景点</h5>
                        <ul class="list-unstyled nav w-75 ">
                            <li class="border p-2 mr-2 mb-2"><a class="text-white"  href="#" title="西溪国家湿地公园(西区)">西溪国家湿地公园(西区)</a></li>
                            <li class="border p-2 mr-2 mb-2"><a class="text-white" href="#"
                                                                title="天目山">天目山</a></li>
                            <li class="border p-2 mr-2 mb-2"><a class="text-white" href="#"
                                                                title="大明山">大明山</a></li>
                            <li class="border p-2 mr-2 mb-2"><a class="text-white" href="#"
                                                                title="东天目山">东天目山</a></li>
                            <li class="border p-2 mr-2 mb-2"><a class="text-white" href="#"
                                                                title="神龙川">神龙川</a></li>
                            <li class="border p-2 mr-2 mb-2"><a class="text-white" href="#"
                                                                title="天幕大峡谷">天幕大峡谷</a></li>
                            <li class="border p-2 mr-2 mb-2"><a class="text-white" href="#"
                                                                title="浙西大峡谷">浙西大峡谷</a></li>
                            <li class="border p-2 mr-2 mb-2"><a class="text-white" href="#"
                                                                title="瑞晶石花洞">瑞晶石花洞</a></li>
                            <li class="border p-2 mr-2 mb-2"><a class="text-white" href="#"
                                                                title="柳溪江景区">柳溪江景区</a></li>
                        </ul>
                    </div>',"","");

INSERT INTO hz_index VALUES(12,"",'<div class="mb-4 " id="d4" >
    <div class="mb-4"><a href="#" class="h3 ">桐庐县</a></div>
    <div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;桐庐位于浙江西北部富春江畔，距杭州75公里，西接黄山、千岛湖，东连钱塘江、西湖，属于国家重点风景名胜区。桐庐境内峰峻岭秀，洞奇石美，更有“天下独绝”的富春江、天目溪如碧玉飘带萦绕县境，真是山清水秀，胜迹遍布。古今中外众多的文...</div>
    <h5 class="mt-4 mb-3">旅游景点</h5>
    <ul class="list-unstyled nav w-75 ">
        <li class="border p-2 mr-2 mb-2"><a class="text-white"  href="#" title="大奇山国家深林公园">大奇山国家深林公园</a></li>
        <li class="border p-2 mr-2 mb-2"><a class="text-white" href="#"
                                            title="瑶玲仙境">瑶玲仙境</a></li>
        <li class="border p-2 mr-2 mb-2"><a class="text-white" href="#"
                                            title="桐庐垂云通天河景区">桐庐垂云通天河景区</a></li>
        <li class="border p-2 mr-2 mb-2"><a class="text-white" href="#"
                                            title="红灯笼乡村家园">红灯笼乡村家园</a></li>
        <li class="border p-2 mr-2 mb-2"><a class="text-white" href="#"
                                            title="天目溪漂流">天目溪漂流</a></li>
        <li class="border p-2 mr-2 mb-2"><a class="text-white" href="#"
                                            title="深奥古镇">深奥古镇</a></li>
        <li class="border p-2 mr-2 mb-2"><a class="text-white" href="#"
                                            title="卢茨村">卢茨村</a></li>
        <li class="border p-2 mr-2 mb-2"><a class="text-white" href="#"
                                            title="印象富春江">印象富春江</a></li>
        
    </ul>
</div>',"","");
INSERT INTO hz_index VALUES(13,"",'<div class="mb-4 " id="d5" >
    <div class="mb-4"><a href="#" class="h3 ">富阳市</a></div>
    <div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;富阳地处杭州西南，总面积1831平方公里，人口64万余，素有“鱼米之乡、造纸之乡、竹茶之乡、文化之邦”等美誉。现已成为长三角经济圈的重要组成部分，是“西湖－富春江－千岛湖－黄山”国家黄金旅游线上的一个关键节点。</div>
    <h5 class="mt-4 mb-3">旅游景点</h5>
    <ul class="list-unstyled nav w-75 ">
        <li class="border p-2 mr-2 mb-2"><a class="text-white"  href="#" title="杭州野生动物世界">杭州野生动物世界</a></li>
        <li class="border p-2 mr-2 mb-2"><a class="text-white" href="#"
                                            title="富春桃园风景区">富春桃园风景区</a></li>
        <li class="border p-2 mr-2 mb-2"><a class="text-white" href="#"
                                            title="杭州龙门古镇">杭州龙门古镇</a></li>
        <li class="border p-2 mr-2 mb-2"><a class="text-white" href="#"
                                            title="新沙岛">新沙岛</a></li>
        <li class="border p-2 mr-2 mb-2"><a class="text-white" href="#"
                                            title="黄公望隐居地">黄公望隐居地</a></li>
        <li class="border p-2 mr-2 mb-2"><a class="text-white" href="#"
                                            title="中国古代造纸印刷文化村">中国古代造纸印刷文化村</a></li>
        <li class="border p-2 mr-2 mb-2"><a class="text-white" href="#"
                                            title="卢茨村">卢茨村</a></li>
        <li class="border p-2 mr-2 mb-2"><a class="text-white" href="#"
                                            title="通天飞瀑">通天飞瀑</a></li>       
    </ul>
</div>',"","");
INSERT INTO hz_index VALUES(14,"",'<div class="mb-4 " id="d6" >
    <div class="mb-4"><a href="#" class="h3 ">余杭区</a></div>
    <div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;余杭是一座深邃渊博的城市，数千年文明成就了她的平和内敛、满腹经纶。亘古开天的良渚文化、源远流长的运河文化、蜚声海外的禅茶文化，共同构筑了余杭深厚的历史文化底蕴和丰富的文化积淀。 中国五千年文明史在这里得以证实，江南水乡文化...</div>
    <h5 class="mt-4 mb-3">旅游景点</h5>
    <ul class="list-unstyled nav w-75 ">
        <li class="border p-2 mr-2 mb-2"><a class="text-white"  href="#" title="西溪国家湿地公园(西区)">西溪国家湿地公园(西区)</a></li>
        <li class="border p-2 mr-2 mb-2"><a class="text-white" href="#"
                                            title="杭州双溪漂流景区">杭州双溪漂流景区</a></li>
        <li class="border p-2 mr-2 mb-2"><a class="text-white" href="#"
                                            title="山沟沟风景旅游区">山沟沟风景旅游区</a></li>
        <li class="border p-2 mr-2 mb-2"><a class="text-white" href="#"
                                            title="农夫乐园">农夫乐园</a></li>
        <li class="border p-2 mr-2 mb-2"><a class="text-white" href="#"
                                            title="径山风景名胜区">径山风景名胜区</a></li>
        <li class="border p-2 mr-2 mb-2"><a class="text-white" href="#"
                                            title="杭州东明山深林公园">杭州东明山深林公园</a></li>
        <li class="border p-2 mr-2 mb-2"><a class="text-white" href="#"
                                            title="超山风景名胜区">超山风景名胜区</a></li>
        <li class="border p-2 mr-2 mb-2"><a class="text-white" href="#"
                                            title="良渚博物院">良渚博物院</a></li>       
    </ul>
</div>',"","");
INSERT INTO hz_index VALUES(15,"",'<div class="mb-4 " id="d7" >
    <div class="mb-4"><a href="#" class="h3 ">萧山区</a></div>
    <div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;萧山是杭州的南大门，历史悠久，境内的“跨湖桥文化”距今有8000年。公元2年始建县，始称余暨，唐代天宝元年(公元742年)改现名，一直沿用至今。经国务院批准，1988年撤县设市，2001年3月25日，撤市设区。萧山地处钱塘江南岸，为杭州南大门，...</div>
    <h5 class="mt-4 mb-3">旅游景点</h5>
    <ul class="list-unstyled nav w-75 ">
        <li class="border p-2 mr-2 mb-2"><a class="text-white"  href="#" title="浙江湘湖旅游度假区">浙江湘湖旅游度假区</a></li>
        <li class="border p-2 mr-2 mb-2"><a class="text-white" href="#"
                                            title="杭州乐园">杭州乐园</a></li>
        <li class="border p-2 mr-2 mb-2"><a class="text-white" href="#"
                                            title="杭州极地海洋公园">杭州极地海洋公园</a></li>
        <li class="border p-2 mr-2 mb-2"><a class="text-white" href="#"
                                            title="东方文化园">东方文化园</a></li>
        <li class="border p-2 mr-2 mb-2"><a class="text-white" href="#"
                                            title="萧山区少儿公园">萧山区少儿公园</a></li>
        <li class="border p-2 mr-2 mb-2"><a class="text-white" href="#"
                                            title="湘湖鸟语林">湘湖鸟语林</a></li>
        <li class="border p-2 mr-2 mb-2"><a class="text-white" href="#"
                                            title="浙江(中国)花木城">浙江(中国)花木城</a></li>
        <li class="border p-2 mr-2 mb-2"><a class="text-white" href="#"
                                            title="杭州萧山南宋官窑艺术馆">杭州萧山南宋官窑艺术馆</a></li>       
    </ul>
</div>',"","");

CREATE TABLE hz_taster(
    uid INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    tname VARCHAR(32),
    title VARCHAR(256),
    tduce VARCHAR(256),
    turl VARCHAR(128),
    tother VARCHAR(2056)
);

INSERT INTO hz_taster VALUES(1,"杭州概况",'',"　　杭州是中国八大古都之一，
浙江省的省会。这里，江流襟带，山色藏幽，湖光翠秀；这里，史脉悠远，文风炽盛，名流辈出；这里，
自古至今被公认为是古老神州的东南名都、鱼米之乡 、丝绸之府、文物之邦，一直以物质财富丰饶繁盛和文化..."
,"./taset-img/aboutMainConPic_1_08.jpg",'<li><a href="javascript:;">城市介绍</a></li>
                    <li><a href="javascript:;">历史沿革</a></li>
                    <li><a href="javascript:;">气候特点</a></li>
                    <li><a href="javascript:;">中国古都</a></li>
                    <li><a href="javascript:;">中国茶都</a></li>
                    <li><a href="javascript:;">丝绸之府</a></li>
                    <li><a href="javascript:;">东南佛都</a></li>
                    <li><a href="javascript:;">动漫之都</a></li>
                    <li><a href="javascript:;">爱情之都</a></li>
                    <li><a href="javascript:;">女装之都</a></li>');

INSERT INTO hz_taster VALUES(2,"地方文化",'南宋御街',"　　杭州凤凰山曾是旧时五代吴越王钱王宫。公元1138年，南宋康王赵构定都杭州，决定在城南凤凰山东麓宋城路一带修建宫城禁苑，遂在隋、唐杭州州治和五代吴越王钱缪修建的“子城”(宫城)、“罗城”(都城)基础上扩建宫殿..."
,"./taset-img/aboutMainConPic_2_08.jpg",
                    '<li><a href="javascript:;">南宋文化</a></li>
                    <li><a href="javascript:;">旅游诗词</a></li>
                    <li><a href="javascript:;">杭州茶文化</a></li>
                    <li><a href="javascript:;">丝绸文化</a></li>
                    <li><a href="javascript:;">中药文化</a></li>
                    <li><a href="javascript:;">陶瓷文化</a></li>
                    <li><a href="javascript:;">吴越文化</a></li>
                    <li><a href="javascript:;">书画篆刻</a></li>
                    <li><a href="javascript:;">印刷文化</a></li>
                    <li><a href="javascript:;">运河文化</a></li>
                    <li><a href="javascript:;">宗教文化</a></li>
                    <li><a href="javascript:;">博物馆</a></li>');

INSERT INTO hz_taster VALUES(3,"民俗风情",'　　年初一到年初四，除茶坊、酒肆、杂货店等俗称“长生店”的商号照常开业外，一般都要到年初五接过财神，才开门营业。',
'　　年初五为“财神日”，亦叫“五谷财神日”。此日祭仪隆重，祭品习惯用猪、羊、鸡、鹅、鱼等。猪用猪头，称...'
,"./taset-img/aboutMainConPic_3_08.jpg",
                    '<li><a href="javascript:;">喜接财神</a></li>
                    <li><a href="javascript:;">娘娘庙会</a></li>
                    <li><a href="javascript:;">育婴堂</a></li>
                    <li><a href="javascript:;">玉皇山香会</a></li>
                    <li><a href="javascript:;">八寺香会</a></li>
                    <li><a href="javascript:;">中药六大家</a></li>
                    <li><a href="javascript:;">清节堂</a></li>
                    <li><a href="javascript:;">青龙招牌</a></li>
                    <li><a href="javascript:;">杭州庙会</a></li>
                    <li><a href="javascript:;">于庙祈梦</a></li>
                    <li><a href="javascript:;">杭州大姓</a></li>
                    <li><a href="javascript:;">青龙吉利</a></li>
		    <li><a href="javascript:;">胡公庙会</a></li>
                    <li><a href="javascript:;">西湖香市</a></li>
                    <li><a href="javascript:;">送春牛图</a></li>
                    <li><a href="javascript:;">投龙祈雨</a></li>
		');

INSERT INTO hz_taster VALUES(4,"历史名人",'',
'　　魏源（1794～1857）名远达，字默深。著名学者，中国近代启蒙思想家。（1794年4月23日）生于湖南邵阳，咸丰七年三月一日（1857年3月26日）殁于杭州。湖南邵阳人。嘉庆二十五年（1820）全家迁居江苏扬州新城。道光进士，官至知州。...'
,"./taset-img/aboutMainConPic_4_08.jpg",
                    '<li><a href="javascript:;">李叔同</a></li>
                    <li><a href="javascript:;">秋 瑾</a></li>
                    <li><a href="javascript:;">茅以升</a></li>
                    <li><a href="javascript:;">徐志摩</a></li>
                    <li><a href="javascript:;">钱学森</a></li>
                    <li><a href="javascript:;">金 庸</a></li>
                    <li><a href="javascript:;">葛　洪</a></li>
                    <li><a href="javascript:;">白居易</a></li>
                    <li><a href="javascript:;">钱弘俶</a></li>
                    <li><a href="javascript:;">苏 轼</a></li>
                    <li><a href="javascript:;">柳　永</a></li>
                    <li><a href="javascript:;">沈 括</a></li>
		    <li><a href="javascript:;">周邦彦</a></li>
                    <li><a href="javascript:;">岳 飞</a></li>
                    <li><a href="javascript:;">陆　游</a></li>
                    <li><a href="javascript:;">苏小小</a></li>
		    <li><a href="javascript:;">赵孟頫</a></li>
		    <li><a href="javascript:;">丁 敬</a></li>
                    <li><a href="javascript:;">阮 元</a></li>
                    <li><a href="javascript:;">龚自珍</a></li>
                    <li><a href="javascript:;">胡雪岩</a></li>
		');

INSERT INTO hz_taster VALUES(5,"史说杭州",'　　杭州的历史可以上溯到新石器时代，其中又以新石器时代末期的良渚文化最受瞩目。',
'　　杭州的历史可以上溯到新石器时代，其中又以新石器时代末期的良渚文化最受瞩目。'
,"./taset-img/aboutMainConPic_5_08.jpg",
                    '<li><a href="javascript:;">史前时代</a></li>
                    <li><a href="javascript:;">东晋</a></li>
                    <li><a href="javascript:;">隋</a></li>
                    <li><a href="javascript:;">唐</a></li>
                    <li><a href="javascript:;">五代十国</a></li>
                    <li><a href="javascript:;">北宋</a></li>
                    <li><a href="javascript:;">南宋</a></li>
                    <li><a href="javascript:;">元</a></li>
                    <li><a href="javascript:;">明</a></li>
                    <li><a href="javascript:;">清</a></li>
                    <li><a href="javascript:;">近代</a></li>
		');



CREATE TABLE hz_comment(
    uid INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    tname VARCHAR(32),
    tduce VARCHAR(256),
    time  VARCHAR(62)
);
INSERT INTO hz_comment VALUES(1,"yyc","西湖景色很好，就是人太多!","2019/4/8 下午7:11:09");