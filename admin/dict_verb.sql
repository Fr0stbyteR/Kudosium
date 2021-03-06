-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2015-04-17 03:34:42
-- 服务器版本： 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `kudos`
--

-- --------------------------------------------------------

--
-- 表的结构 `dict_verb`
--

CREATE TABLE IF NOT EXISTS `dict_verb` (
`id` int(11) NOT NULL,
  `word` text COLLATE utf8_bin
) ENGINE=InnoDB AUTO_INCREMENT=2095 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 转存表中的数据 `dict_verb`
--

INSERT INTO `dict_verb` (`id`, `word`) VALUES
(1, '哀求'),
(2, '挨'),
(4, '爱'),
(5, '爱好'),
(6, '安'),
(7, '安家'),
(8, '安排'),
(9, '安慰'),
(10, '安装'),
(11, '按摩'),
(12, '暗示'),
(13, '暗算'),
(14, '暗想'),
(15, '扒'),
(16, '拔'),
(17, '把'),
(18, '把持'),
(19, '把守'),
(20, '把握'),
(21, '罢工'),
(22, '罢免'),
(23, '白搭'),
(24, '摆动'),
(25, '摆放'),
(26, '摆弄'),
(27, '摆设'),
(28, '摆脱'),
(29, '败'),
(30, '败露'),
(31, '拜访'),
(32, '颁发'),
(33, '搬动'),
(34, '办'),
(35, '办案'),
(36, '办理'),
(37, '拌'),
(38, '帮'),
(39, '帮忙'),
(40, '帮助'),
(41, '包'),
(44, '包含'),
(45, '包括'),
(46, '包围'),
(47, '包装'),
(48, '保持'),
(49, '保管'),
(51, '保护'),
(52, '保留'),
(53, '保密'),
(54, '保卫'),
(55, '保证'),
(56, '报仇'),
(57, '报答'),
(58, '报告'),
(59, '报价'),
(60, '报名'),
(61, '报销'),
(62, '报效'),
(63, '抱'),
(66, '暴动'),
(67, '暴露'),
(68, '爆发'),
(69, '爆炸'),
(70, '备课'),
(71, '备战'),
(72, '背'),
(73, '背叛'),
(74, '背诵'),
(75, '奔赴'),
(76, '奔跑'),
(77, '奔走'),
(78, '迸发'),
(79, '蹦'),
(80, '逼迫'),
(81, '比较'),
(82, '比赛'),
(83, '比试'),
(85, '比喻'),
(86, '笔录'),
(87, '避开'),
(88, '避免'),
(89, '编'),
(90, '编辑'),
(91, '编写'),
(92, '编织'),
(93, '贬低'),
(94, '贬值'),
(95, '变'),
(97, '变革'),
(98, '变化'),
(99, '变形'),
(100, '辨别'),
(101, '辨认'),
(102, '辩论'),
(103, '标'),
(104, '标志'),
(105, '表达'),
(106, '表明'),
(107, '表现'),
(108, '表扬'),
(109, '憋'),
(110, '别'),
(111, '濒临'),
(112, '并联'),
(113, '并吞'),
(114, '病'),
(115, '病休'),
(116, '拨'),
(118, '剥'),
(119, '剥夺'),
(120, '剥落'),
(121, '剥削'),
(122, '播放'),
(123, '播音'),
(124, '播种'),
(126, '博得'),
(127, '搏斗'),
(128, '补'),
(131, '补偿'),
(132, '补充'),
(133, '补发'),
(134, '补给'),
(135, '补贴'),
(136, '哺育'),
(137, '捕捉'),
(138, '布置'),
(139, '部署'),
(140, '擦'),
(141, '猜'),
(142, '猜想'),
(143, '裁'),
(144, '裁决'),
(145, '裁军'),
(146, '采访'),
(147, '采购'),
(148, '采纳'),
(149, '采用'),
(150, '踩'),
(151, '参拜'),
(152, '参观'),
(153, '参加'),
(154, '参考'),
(155, '参与'),
(156, '残杀'),
(157, '操持'),
(158, '操练'),
(159, '操纵'),
(160, '侧重'),
(161, '测量'),
(162, '测验'),
(163, '插手'),
(164, '查'),
(165, '查抄'),
(166, '查对'),
(167, '查获'),
(168, '查看'),
(169, '查问'),
(170, '查询'),
(171, '查阅'),
(172, '拆'),
(173, '拆除'),
(174, '拆散'),
(175, '拆卸'),
(176, '搀假'),
(177, '产生'),
(178, '铲'),
(179, '铲除'),
(180, '阐述'),
(181, '颤动'),
(182, '长'),
(183, '尝'),
(184, '偿还'),
(185, '畅谈'),
(186, '畅销'),
(187, '倡议'),
(188, '唱'),
(189, '抄袭'),
(190, '抄写'),
(191, '超脱'),
(192, '超支'),
(193, '超重'),
(194, '吵'),
(195, '吵闹'),
(196, '炒'),
(197, '扯'),
(198, '撤除'),
(199, '撤换'),
(200, '撤退'),
(201, '撤销'),
(202, '沉淀'),
(203, '沉思'),
(204, '沉醉'),
(205, '陈设'),
(206, '陈述'),
(207, '闯'),
(208, '衬托'),
(209, '称'),
(211, '称呼'),
(212, '称赞'),
(213, '撑腰'),
(214, '成'),
(215, '成交'),
(216, '成立'),
(218, '成为'),
(219, '呈现'),
(220, '承担'),
(221, '承认'),
(222, '乘凉'),
(223, '惩罚'),
(224, '惩治'),
(225, '澄清'),
(227, '吃'),
(228, '吃透'),
(229, '迟到'),
(230, '持家'),
(231, '耻笑'),
(232, '充当'),
(233, '充满'),
(234, '充数'),
(235, '冲'),
(236, '冲锋'),
(237, '冲破'),
(238, '崇拜'),
(239, '宠'),
(240, '宠爱'),
(241, '抽查'),
(242, '抽调'),
(243, '抽签'),
(244, '抽烟'),
(245, '抽样'),
(246, '仇恨'),
(247, '仇视'),
(248, '筹备'),
(249, '酬谢'),
(250, '丑化'),
(251, '出'),
(255, '出版'),
(256, '出产'),
(257, '出场'),
(258, '出动'),
(259, '出发'),
(260, '出国'),
(261, '出击'),
(262, '出来'),
(263, '出力'),
(264, '出卖'),
(265, '出让'),
(266, '出生'),
(267, '出手'),
(268, '出售'),
(269, '出席'),
(270, '出现'),
(271, '出征'),
(272, '出租'),
(273, '除'),
(274, '储藏'),
(276, '处罚'),
(277, '处理'),
(278, '处死'),
(279, '处置'),
(280, '触发'),
(281, '揣摩'),
(282, '穿'),
(284, '穿越'),
(285, '传'),
(287, '传播'),
(288, '传出'),
(289, '传递'),
(290, '传话'),
(291, '传染'),
(292, '传授'),
(293, '传说'),
(294, '传送'),
(295, '喘'),
(296, '喘气'),
(297, '创办'),
(298, '创建'),
(299, '创新'),
(300, '创造'),
(301, '创作'),
(302, '吹'),
(304, '吹捧'),
(305, '吹嘘'),
(306, '垂直'),
(307, '春耕'),
(308, '辞退'),
(309, '辞职'),
(310, '刺'),
(311, '刺探'),
(312, '从事'),
(313, '凑'),
(314, '促进'),
(315, '簇拥'),
(316, '篡改'),
(317, '催'),
(318, '催促'),
(319, '催眠'),
(320, '摧残'),
(321, '存'),
(322, '存储'),
(323, '存放'),
(324, '存款'),
(325, '存在'),
(326, '搓'),
(327, '磋商'),
(328, '挫伤'),
(329, '错怪'),
(330, '搭救'),
(331, '搭配'),
(332, '达到'),
(333, '答辩'),
(334, '答复'),
(335, '答理'),
(336, '答应'),
(337, '打'),
(338, '打扮'),
(339, '打点'),
(341, '打发'),
(342, '打击'),
(343, '打搅'),
(344, '打开'),
(345, '打捞'),
(346, '打量'),
(348, '打破'),
(349, '打扰'),
(350, '打算'),
(351, '打听'),
(352, '打印'),
(353, '打仗'),
(354, '打针'),
(355, '大战'),
(356, '代'),
(357, '代办'),
(358, '代表'),
(360, '代理'),
(361, '代替'),
(362, '代销'),
(363, '带'),
(366, '带动'),
(367, '带领'),
(368, '待业'),
(369, '怠慢'),
(370, '逮'),
(371, '逮捕'),
(372, '担保'),
(373, '担任'),
(374, '担心'),
(375, '耽搁'),
(377, '胆敢'),
(378, '当'),
(381, '当选'),
(382, '当做'),
(383, '挡'),
(384, '导演'),
(385, '导致'),
(386, '倒'),
(390, '倒车'),
(392, '倒换'),
(393, '捣'),
(394, '捣乱'),
(395, '祷告'),
(396, '到'),
(397, '到达'),
(398, '到会'),
(399, '悼念'),
(400, '盗卖'),
(401, '盗窃'),
(402, '道歉'),
(403, '得'),
(404, '得到'),
(405, '得知'),
(406, '得罪'),
(407, '登报'),
(408, '登记'),
(409, '等'),
(411, '等待'),
(412, '等于'),
(414, '低估'),
(415, '滴'),
(416, '抵'),
(417, '抵偿'),
(418, '抵达'),
(419, '抵抗'),
(420, '抵御'),
(421, '抵制'),
(422, '地震'),
(423, '递送'),
(424, '缔造'),
(425, '颠倒'),
(426, '颠覆'),
(427, '点'),
(428, '点破'),
(429, '点燃'),
(430, '点缀'),
(431, '电贺'),
(432, '垫'),
(433, '惦挂'),
(434, '惦记'),
(435, '刁难'),
(436, '雕刻'),
(437, '钓'),
(438, '调'),
(440, '调查'),
(441, '调动'),
(442, '调集'),
(443, '调价'),
(444, '调节'),
(445, '调理'),
(446, '调配'),
(448, '调试'),
(449, '调整'),
(450, '掉'),
(452, '跌'),
(453, '跌倒'),
(454, '叠'),
(455, '叮嘱'),
(456, '盯'),
(457, '钉'),
(460, '顶替'),
(461, '订'),
(462, '订购'),
(463, '订阅'),
(464, '定'),
(465, '定货'),
(466, '定居'),
(467, '定义'),
(468, '丢'),
(469, '丢掉'),
(470, '懂'),
(471, '动'),
(472, '动手'),
(473, '动摇'),
(474, '动员'),
(475, '冻'),
(476, '洞察'),
(477, '斗'),
(478, '斗争'),
(480, '逗'),
(481, '逗乐'),
(482, '督促'),
(483, '读'),
(484, '独创'),
(485, '独占'),
(486, '堵'),
(487, '堵截'),
(488, '妒忌'),
(489, '杜绝'),
(490, '度假'),
(491, '端正'),
(492, '断'),
(493, '断定'),
(494, '断绝'),
(495, '断言'),
(496, '锻炼'),
(497, '堆'),
(498, '堆放'),
(499, '对比'),
(500, '对待'),
(501, '对付'),
(502, '对话'),
(503, '对抗'),
(504, '对照'),
(505, '兑换'),
(506, '蹲'),
(507, '夺'),
(508, '夺取'),
(509, '躲'),
(510, '躲避'),
(511, '讹诈'),
(512, '扼杀'),
(513, '饿'),
(514, '遏制'),
(515, '发'),
(517, '发表'),
(519, '发布'),
(520, '发动'),
(523, '发还'),
(524, '发挥'),
(525, '发觉'),
(526, '发明'),
(527, '发难'),
(528, '发起'),
(529, '发烧'),
(530, '发射'),
(531, '发生'),
(532, '发送'),
(533, '发现'),
(534, '发泄'),
(535, '发行'),
(536, '发言'),
(537, '发扬'),
(538, '发展'),
(539, '罚'),
(540, '罚款'),
(541, '翻'),
(542, '翻修'),
(543, '翻译'),
(544, '翻印'),
(545, '繁殖'),
(546, '反'),
(548, '反对'),
(549, '反抗'),
(550, '反馈'),
(551, '反省'),
(552, '反问'),
(553, '返航'),
(554, '犯'),
(555, '犯法'),
(556, '犯罪'),
(557, '贩卖'),
(558, '防备'),
(559, '防范'),
(560, '防洪'),
(561, '防涝'),
(562, '防守'),
(563, '防御'),
(564, '防止'),
(565, '妨碍'),
(566, '仿效'),
(567, '仿造'),
(568, '访问'),
(569, '纺'),
(570, '放'),
(573, '放弃'),
(574, '放任'),
(575, '放松'),
(576, '放心'),
(577, '放纵'),
(578, '飞'),
(580, '飞越'),
(581, '诽谤'),
(582, '废'),
(583, '废除'),
(584, '费'),
(585, '分'),
(587, '分布'),
(588, '分担'),
(589, '分工'),
(590, '分化'),
(592, '分解'),
(593, '分开'),
(595, '分裂'),
(597, '分配'),
(598, '分散'),
(599, '分析'),
(600, '吩咐'),
(601, '粉碎'),
(602, '奋斗'),
(603, '丰收'),
(604, '风行'),
(605, '封闭'),
(606, '封锁'),
(607, '疯'),
(608, '缝'),
(609, '讽刺'),
(610, '奉告'),
(611, '奉劝'),
(612, '奉献'),
(613, '否定'),
(614, '否认'),
(615, '扶'),
(616, '扶持'),
(617, '服'),
(618, '服侍'),
(619, '服务'),
(620, '服用'),
(621, '浮'),
(622, '浮动'),
(623, '浮现'),
(624, '符合'),
(625, '抚养'),
(626, '俯视'),
(627, '辅导'),
(628, '辅助'),
(629, '腐蚀'),
(630, '付'),
(631, '付出'),
(632, '负担'),
(633, '负责'),
(634, '附带'),
(635, '附加'),
(636, '复辟'),
(637, '复核'),
(638, '复习'),
(639, '复印'),
(640, '复制'),
(641, '富余'),
(642, '赋予'),
(643, '该'),
(644, '改'),
(645, '改变'),
(646, '改动'),
(647, '改革'),
(648, '改换'),
(649, '改进'),
(650, '改良'),
(651, '改善'),
(652, '改选'),
(653, '改造'),
(654, '改正'),
(655, '改装'),
(656, '盖'),
(657, '概括'),
(658, '干'),
(659, '干扰'),
(660, '干预'),
(661, '甘心'),
(662, '甘愿'),
(663, '赶'),
(665, '赶赴'),
(666, '敢'),
(667, '敢于'),
(668, '感到'),
(669, '感动'),
(670, '感觉'),
(671, '感冒'),
(672, '感染'),
(673, '感谢'),
(674, '搞'),
(675, '告辞'),
(676, '告发'),
(677, '告诉'),
(678, '割'),
(679, '割除'),
(680, '割让'),
(681, '歌颂'),
(682, '革命'),
(683, '隔'),
(684, '隔断'),
(685, '给'),
(686, '给以'),
(687, '给予'),
(688, '根治'),
(689, '跟'),
(690, '跟踪'),
(691, '更改'),
(692, '更换'),
(693, '更新'),
(694, '工作'),
(695, '公布'),
(696, '公审'),
(697, '攻击'),
(698, '供'),
(702, '供认'),
(703, '供应'),
(704, '巩固'),
(705, '共鸣'),
(706, '贡献'),
(707, '勾搭'),
(708, '勾引'),
(709, '构成'),
(710, '购买'),
(711, '购置'),
(712, '够'),
(713, '估计'),
(714, '估算'),
(715, '辜负'),
(716, '鼓吹'),
(717, '鼓励'),
(718, '顾忌'),
(719, '瓜分'),
(720, '挂'),
(721, '挂念'),
(722, '拐'),
(724, '拐骗'),
(725, '怪'),
(726, '关'),
(727, '关心'),
(728, '观察'),
(729, '观看'),
(730, '观赏'),
(731, '观望'),
(732, '管'),
(734, '管教'),
(736, '管理'),
(737, '贯彻'),
(738, '惯'),
(739, '灌溉'),
(740, '广播'),
(741, '逛'),
(742, '归还'),
(743, '归属'),
(744, '规定'),
(745, '滚'),
(747, '过'),
(748, '过来'),
(749, '过滤'),
(750, '过去'),
(751, '过问'),
(752, '害'),
(753, '害怕'),
(754, '含'),
(755, '喊'),
(756, '捍卫'),
(757, '好像'),
(758, '号召'),
(759, '耗费'),
(760, '耗资'),
(761, '喝'),
(762, '喝彩'),
(763, '合并'),
(764, '合计'),
(766, '合影'),
(767, '合作'),
(768, '和解'),
(769, '核对'),
(770, '核实'),
(771, '核算'),
(772, '恨'),
(773, '横穿'),
(774, '横扫'),
(775, '衡量'),
(776, '轰动'),
(777, '轰炸'),
(778, '哄抢'),
(779, '烘托'),
(780, '弘扬'),
(781, '后悔'),
(782, '呼唤'),
(783, '呼吸'),
(784, '呼吁'),
(785, '忽视'),
(786, '胡说'),
(787, '糊'),
(788, '互换'),
(789, '护'),
(790, '护理'),
(791, '护送'),
(792, '花'),
(793, '花费'),
(794, '滑'),
(795, '化'),
(796, '化验'),
(797, '化装'),
(798, '划分'),
(799, '划清'),
(800, '怀抱'),
(801, '怀念'),
(802, '怀疑'),
(804, '欢呼'),
(805, '欢送'),
(806, '欢迎'),
(808, '还'),
(809, '还击'),
(810, '缓和'),
(811, '幻想'),
(812, '换'),
(814, '换算'),
(815, '涣散'),
(816, '荒废'),
(817, '晃动'),
(818, '恢复'),
(819, '挥发'),
(820, '挥霍'),
(821, '挥舞'),
(822, '回'),
(825, '回避'),
(826, '回答'),
(827, '回顾'),
(828, '回击'),
(829, '回去'),
(830, '回收'),
(831, '回味'),
(832, '回想'),
(833, '回忆'),
(834, '悔恨'),
(835, '汇报'),
(836, '会'),
(839, '会见'),
(840, '会面'),
(841, '会谈'),
(842, '会晤'),
(843, '会战'),
(844, '绘图'),
(845, '绘制'),
(846, '贿赂'),
(847, '毁'),
(848, '毁灭'),
(849, '昏迷'),
(850, '混淆'),
(851, '混杂'),
(852, '活'),
(853, '活动'),
(855, '活跃'),
(856, '获得'),
(857, '获取'),
(858, '获准'),
(859, '讥笑'),
(860, '击毙'),
(861, '击溃'),
(862, '积累'),
(863, '积攒'),
(864, '激发'),
(865, '激励'),
(866, '急需'),
(867, '集合'),
(868, '集中'),
(869, '嫉妒'),
(870, '挤'),
(871, '计划'),
(872, '计较'),
(874, '记'),
(875, '记功'),
(876, '记录'),
(877, '记叙'),
(878, '记载'),
(879, '纪念'),
(880, '忌讳'),
(881, '继承'),
(882, '寄'),
(884, '寄存'),
(885, '寄托'),
(886, '加'),
(887, '加工'),
(888, '加剧'),
(889, '加强'),
(890, '加入'),
(891, '加以'),
(892, '夹击'),
(893, '驾驶'),
(894, '架设'),
(895, '假定'),
(896, '假冒'),
(897, '假设'),
(898, '坚持'),
(899, '坚守'),
(900, '坚信'),
(901, '歼灭'),
(902, '兼并'),
(903, '兼任'),
(904, '监督'),
(905, '监视'),
(906, '煎'),
(907, '拣'),
(908, '捡'),
(909, '减'),
(910, '减轻'),
(911, '减少'),
(912, '剪'),
(913, '剪辑'),
(914, '检查'),
(915, '检举'),
(916, '检索'),
(917, '检讨'),
(918, '检修'),
(919, '检验'),
(920, '见面'),
(921, '建成'),
(922, '建立'),
(923, '建设'),
(924, '建议'),
(925, '践踏'),
(926, '鉴别'),
(927, '鉴定'),
(928, '讲'),
(930, '讲解'),
(931, '讲究'),
(932, '讲课'),
(933, '讲授'),
(934, '奖'),
(935, '奖励'),
(936, '降低'),
(937, '降落'),
(938, '交待'),
(939, '交锋'),
(940, '交换'),
(941, '交流'),
(942, '交纳'),
(943, '交涉'),
(944, '交往'),
(945, '郊游'),
(946, '浇'),
(947, '矫正'),
(948, '搅'),
(949, '搅拌'),
(950, '缴获'),
(951, '叫'),
(955, '叫喊'),
(956, '叫嚷'),
(957, '教'),
(958, '教导'),
(959, '教训'),
(960, '教育'),
(961, '接'),
(962, '接触'),
(963, '接待'),
(964, '接见'),
(965, '接近'),
(966, '接洽'),
(967, '接受'),
(968, '接送'),
(969, '揭发'),
(970, '揭露'),
(971, '节省'),
(972, '节约'),
(973, '劫持'),
(974, '结合'),
(975, '结交'),
(976, '结束'),
(977, '截获'),
(978, '截击'),
(979, '竭尽'),
(980, '解除'),
(981, '解放'),
(982, '解决'),
(983, '解剖'),
(984, '解说'),
(985, '解脱'),
(986, '解析'),
(987, '介入'),
(988, '介绍'),
(989, '戒严'),
(990, '借'),
(992, '借口'),
(993, '借用'),
(994, '借助'),
(995, '谨防'),
(996, '尽'),
(997, '进攻'),
(998, '进来'),
(999, '进去'),
(1000, '进入'),
(1001, '进行'),
(1002, '浸透'),
(1003, '禁止'),
(1004, '经过'),
(1005, '经受'),
(1006, '惊动'),
(1007, '惊叹'),
(1008, '精通'),
(1009, '警告'),
(1010, '警惕'),
(1011, '竞争'),
(1012, '敬佩'),
(1013, '敬献'),
(1014, '敬重'),
(1015, '纠缠'),
(1016, '纠正'),
(1017, '救'),
(1018, '救济'),
(1019, '救援'),
(1020, '救助'),
(1021, '就业'),
(1022, '居留'),
(1023, '鞠躬'),
(1024, '举'),
(1025, '举办'),
(1026, '举行'),
(1027, '拒绝'),
(1028, '具有'),
(1029, '惧怕'),
(1030, '捐赠'),
(1031, '捐助'),
(1032, '决定'),
(1033, '觉得'),
(1034, '觉悟'),
(1035, '军训'),
(1036, '开'),
(1037, '开辟'),
(1038, '开采'),
(1039, '开除'),
(1040, '开导'),
(1041, '开发'),
(1042, '开赴'),
(1043, '开工'),
(1044, '开会'),
(1045, '开垦'),
(1046, '开阔'),
(1047, '开启'),
(1048, '开始'),
(1049, '开脱'),
(1050, '开学'),
(1051, '开展'),
(1052, '刊登'),
(1053, '刊载'),
(1054, '勘查'),
(1055, '砍'),
(1056, '看'),
(1060, '看待'),
(1061, '看见'),
(1062, '看守'),
(1063, '看重'),
(1064, '扛'),
(1065, '抗衡'),
(1066, '抗拒'),
(1067, '抗议'),
(1068, '考'),
(1069, '考察'),
(1070, '考核'),
(1071, '考虑'),
(1072, '考取'),
(1073, '考验'),
(1074, '靠'),
(1076, '靠近'),
(1077, '咳嗽'),
(1078, '可'),
(1079, '可能'),
(1080, '可以'),
(1081, '渴望'),
(1082, '克服'),
(1083, '克制'),
(1084, '肯'),
(1085, '肯定'),
(1086, '恳求'),
(1087, '空谈'),
(1088, '恐吓'),
(1089, '控告'),
(1090, '控诉'),
(1091, '控制'),
(1092, '扣除'),
(1093, '扣押'),
(1094, '哭'),
(1095, '苦练'),
(1096, '酷爱'),
(1097, '夸奖'),
(1098, '垮'),
(1099, '跨过'),
(1100, '宽恕'),
(1101, '旷工'),
(1102, '亏损'),
(1103, '窥视'),
(1104, '馈赠'),
(1105, '捆'),
(1106, '扩充'),
(1107, '扩散'),
(1108, '扩展'),
(1109, '拉'),
(1110, '来'),
(1114, '来访'),
(1115, '来往'),
(1116, '拦'),
(1117, '浪费'),
(1118, '捞'),
(1119, '劳动'),
(1120, '牢记'),
(1121, '涝'),
(1122, '乐意'),
(1123, '勒索'),
(1124, '类推'),
(1125, '累计'),
(1126, '冷藏'),
(1127, '冷冻'),
(1128, '离开'),
(1129, '犁'),
(1130, '理发'),
(1131, '理解'),
(1132, '力争'),
(1133, '历经'),
(1134, '利用'),
(1135, '利于'),
(1136, '例如'),
(1137, '连结'),
(1138, '联合'),
(1139, '联欢'),
(1140, '联络'),
(1141, '联系'),
(1142, '联想'),
(1143, '练'),
(1144, '练习'),
(1145, '谅解'),
(1146, '量'),
(1147, '聊'),
(1148, '了'),
(1150, '了解'),
(1151, '了却'),
(1152, '料到'),
(1153, '料想'),
(1154, '列入'),
(1155, '裂'),
(1156, '邻近'),
(1157, '吝惜'),
(1158, '零售'),
(1159, '领'),
(1160, '领导'),
(1161, '领会'),
(1162, '领取'),
(1163, '领悟'),
(1164, '溜走'),
(1165, '浏览'),
(1166, '流'),
(1167, '流传'),
(1168, '流动'),
(1169, '流浪'),
(1170, '流落'),
(1171, '流失'),
(1172, '流行'),
(1173, '留'),
(1174, '留给'),
(1175, '留恋'),
(1176, '留心'),
(1177, '垄断'),
(1178, '搂抱'),
(1179, '漏'),
(1180, '露'),
(1182, '露出'),
(1183, '录取'),
(1184, '录音'),
(1185, '路过'),
(1186, '旅行'),
(1187, '旅游'),
(1188, '绿化'),
(1189, '掠夺'),
(1190, '轮换'),
(1191, '轮休'),
(1192, '论述'),
(1193, '落实'),
(1194, '落选'),
(1195, '麻痹'),
(1196, '麻烦'),
(1197, '骂'),
(1198, '埋'),
(1199, '埋伏'),
(1200, '埋怨'),
(1201, '买'),
(1202, '卖'),
(1204, '卖弄'),
(1205, '瞒'),
(1206, '满足'),
(1207, '忙于'),
(1208, '盲从'),
(1209, '冒充'),
(1210, '冒险'),
(1211, '貌似'),
(1212, '没'),
(1213, '没收'),
(1214, '美化'),
(1215, '萌发'),
(1216, '猛攻'),
(1217, '蒙受'),
(1218, '梦想'),
(1219, '弥补'),
(1220, '迷'),
(1221, '迷惑'),
(1222, '迷信'),
(1223, '密封'),
(1224, '密谋'),
(1225, '勉励'),
(1226, '面临'),
(1227, '描绘'),
(1228, '描述'),
(1229, '瞄准'),
(1230, '藐视'),
(1231, '灭'),
(1232, '明白'),
(1233, '明确'),
(1234, '命令'),
(1235, '摸'),
(1236, '摸索'),
(1237, '摸透'),
(1238, '模仿'),
(1239, '模拟'),
(1240, '摩擦'),
(1241, '磨练'),
(1242, '默认'),
(1243, '默写'),
(1244, '谋划'),
(1245, '谋求'),
(1246, '目送'),
(1247, '拿'),
(1249, '内销'),
(1250, '能'),
(1251, '能够'),
(1252, '拟定'),
(1253, '念叨'),
(1254, '酿成'),
(1255, '捏造'),
(1256, '凝聚'),
(1257, '凝视'),
(1258, '扭转'),
(1259, '弄清'),
(1260, '怒斥'),
(1261, '虐待'),
(1262, '挪用'),
(1263, '殴打'),
(1264, '爬'),
(1265, '怕'),
(1266, '拍卖'),
(1267, '拍摄'),
(1268, '拍照'),
(1270, '徘徊'),
(1271, '排除'),
(1272, '排练'),
(1273, '排泄'),
(1274, '派'),
(1275, '派出'),
(1276, '攀比'),
(1277, '盘算'),
(1278, '盘问'),
(1279, '判断'),
(1280, '盼'),
(1281, '盼望'),
(1282, '旁听'),
(1283, '抛弃'),
(1284, '跑'),
(1287, '泡'),
(1288, '陪'),
(1289, '陪伴'),
(1290, '陪同'),
(1291, '培训'),
(1292, '培养'),
(1293, '赔偿'),
(1294, '赔款'),
(1295, '佩服'),
(1296, '配合'),
(1297, '配音'),
(1298, '抨击'),
(1299, '捧'),
(1301, '碰'),
(1302, '碰见'),
(1303, '碰撞'),
(1304, '批驳'),
(1305, '批评'),
(1306, '批示'),
(1307, '批准'),
(1308, '偏爱'),
(1309, '偏向'),
(1310, '骗'),
(1311, '骗取'),
(1312, '漂泊'),
(1313, '飘'),
(1314, '飘扬'),
(1315, '拼搏'),
(1316, '拼写'),
(1317, '聘任'),
(1318, '平息'),
(1320, '评'),
(1321, '评估'),
(1322, '评价'),
(1323, '评论'),
(1324, '评选'),
(1325, '评议'),
(1326, '泼'),
(1327, '迫害'),
(1328, '迫使'),
(1329, '破坏'),
(1330, '扑'),
(1331, '期待'),
(1332, '期望'),
(1333, '欺负'),
(1334, '欺骗'),
(1335, '欺压'),
(1336, '歧视'),
(1337, '祈祷'),
(1338, '骑'),
(1339, '企图'),
(1340, '启程'),
(1341, '启发'),
(1342, '启用'),
(1343, '起草'),
(1344, '起伏'),
(1345, '起来'),
(1346, '起诉'),
(1347, '起用'),
(1348, '气'),
(1349, '洽谈'),
(1350, '牵'),
(1351, '牵扯'),
(1352, '牵制'),
(1353, '签署'),
(1354, '前进'),
(1355, '潜伏'),
(1356, '遣返'),
(1357, '欠'),
(1360, '强调'),
(1361, '强迫'),
(1362, '抢'),
(1363, '抢劫'),
(1364, '抢修'),
(1365, '敲'),
(1366, '敲诈'),
(1367, '撬'),
(1368, '切除'),
(1369, '切断'),
(1370, '窃取'),
(1371, '亲临'),
(1372, '侵略'),
(1373, '轻视'),
(1374, '倾听'),
(1375, '清查'),
(1376, '清除'),
(1377, '清楚'),
(1378, '清理'),
(1379, '清洗'),
(1380, '请'),
(1382, '请教'),
(1383, '请求'),
(1384, '请示'),
(1385, '庆祝'),
(1386, '求'),
(1388, '求教'),
(1389, '区分'),
(1390, '驱逐'),
(1391, '趋向'),
(1392, '取得'),
(1393, '取缔'),
(1394, '取消'),
(1395, '去'),
(1396, '权衡'),
(1397, '劝'),
(1398, '劝说'),
(1399, '缺乏'),
(1400, '缺少'),
(1401, '确保'),
(1402, '确定'),
(1403, '确信'),
(1404, '燃烧'),
(1405, '让'),
(1407, '饶恕'),
(1408, '扰乱'),
(1409, '热爱'),
(1410, '热衷'),
(1411, '忍'),
(1412, '忍受'),
(1413, '认'),
(1415, '认识'),
(1416, '任命'),
(1417, '荣获'),
(1418, '容许'),
(1419, '熔化'),
(1420, '揉'),
(1421, '如同'),
(1422, '入场'),
(1423, '入侵'),
(1424, '入学'),
(1425, '撒谎'),
(1426, '塞'),
(1427, '赛'),
(1429, '散'),
(1431, '散步'),
(1432, '扫'),
(1434, '杀'),
(1435, '杀伤'),
(1436, '筛选'),
(1437, '晒'),
(1438, '删'),
(1439, '煽动'),
(1440, '闪开'),
(1441, '善于'),
(1442, '擅长'),
(1443, '伤'),
(1444, '伤亡'),
(1445, '商量'),
(1446, '上'),
(1448, '上报'),
(1450, '上当'),
(1451, '上交'),
(1452, '上来'),
(1453, '上去'),
(1454, '上演'),
(1455, '烧毁'),
(1456, '舍得'),
(1457, '设'),
(1459, '设法'),
(1460, '设计'),
(1461, '涉及'),
(1462, '摄制'),
(1463, '申报'),
(1464, '申请'),
(1465, '伸'),
(1466, '伸缩'),
(1467, '深知'),
(1468, '审'),
(1469, '审查'),
(1470, '审核'),
(1471, '审理'),
(1472, '审批'),
(1473, '审讯'),
(1474, '渗透'),
(1475, '升'),
(1476, '升华'),
(1477, '生'),
(1479, '生产'),
(1480, '生活'),
(1481, '声明'),
(1482, '胜'),
(1483, '胜利'),
(1484, '胜任'),
(1485, '省'),
(1487, '省略'),
(1488, '盛行'),
(1489, '剩'),
(1490, '失败'),
(1491, '失掉'),
(1492, '失去'),
(1493, '失误'),
(1494, '失踪'),
(1495, '施工'),
(1496, '施加'),
(1497, '施展'),
(1498, '时兴'),
(1499, '识别'),
(1500, '实现'),
(1501, '实行'),
(1502, '拾'),
(1503, '使'),
(1505, '使唤'),
(1506, '示意'),
(1507, '视察'),
(1508, '试探'),
(1509, '试图'),
(1510, '试问'),
(1511, '试验'),
(1512, '是'),
(1513, '适合'),
(1514, '适应'),
(1515, '释放'),
(1516, '收'),
(1518, '收藏'),
(1519, '收获'),
(1520, '收集'),
(1521, '收买'),
(1522, '收入'),
(1523, '收养'),
(1524, '守护'),
(1525, '受'),
(1526, '授予'),
(1527, '书写'),
(1528, '抒发'),
(1529, '疏导'),
(1530, '输出'),
(1531, '输送'),
(1532, '熟悉'),
(1533, '束缚'),
(1534, '数'),
(1536, '刷新'),
(1537, '摔'),
(1539, '甩掉'),
(1540, '拴'),
(1541, '睡'),
(1542, '睡觉'),
(1543, '顺从'),
(1544, '说'),
(1545, '说服'),
(1546, '说明'),
(1548, '思考'),
(1549, '思念'),
(1550, '撕'),
(1551, '撕毁'),
(1552, '死'),
(1553, '饲养'),
(1554, '松开'),
(1555, '送'),
(1557, '送给'),
(1558, '搜查'),
(1559, '搜集'),
(1560, '诉说'),
(1561, '塑造'),
(1562, '算'),
(1564, '算作'),
(1565, '损害'),
(1566, '损失'),
(1567, '缩小'),
(1568, '锁'),
(1569, '塌'),
(1570, '抬'),
(1571, '贪污'),
(1572, '摊派'),
(1573, '谈'),
(1574, '谈话'),
(1575, '谈判'),
(1576, '坦白'),
(1577, '叹气'),
(1578, '探明'),
(1579, '探讨'),
(1580, '躺'),
(1581, '烫'),
(1582, '掏'),
(1583, '逃避'),
(1584, '逃跑'),
(1585, '陶醉'),
(1586, '淘汰'),
(1587, '讨论'),
(1588, '疼爱'),
(1589, '腾飞'),
(1590, '剔除'),
(1591, '踢'),
(1592, '提拔'),
(1593, '提倡'),
(1594, '提出'),
(1595, '提高'),
(1596, '提名'),
(1597, '提示'),
(1598, '提醒'),
(1599, '提议'),
(1600, '体谅'),
(1601, '体贴'),
(1602, '体现'),
(1603, '体验'),
(1604, '替换'),
(1605, '添'),
(1606, '添设'),
(1607, '填补'),
(1608, '挑拨'),
(1609, '挑逗'),
(1610, '挑衅'),
(1611, '挑选'),
(1612, '跳舞'),
(1613, '贴近'),
(1614, '听'),
(1615, '听从'),
(1616, '听见'),
(1617, '听说'),
(1618, '停顿'),
(1619, '停放'),
(1620, '停留'),
(1621, '停止'),
(1622, '通称'),
(1623, '通电'),
(1625, '通缉'),
(1626, '通知'),
(1627, '同情'),
(1628, '同意'),
(1629, '统称'),
(1630, '统计'),
(1631, '统一'),
(1632, '统治'),
(1633, '偷窃'),
(1634, '偷听'),
(1635, '偷袭'),
(1636, '投奔'),
(1637, '投递'),
(1638, '投靠'),
(1639, '投入'),
(1640, '投身'),
(1641, '透露'),
(1642, '突出'),
(1643, '突破'),
(1644, '图谋'),
(1645, '涂改'),
(1646, '团结'),
(1647, '推'),
(1650, '推测'),
(1651, '推迟'),
(1652, '推动'),
(1653, '推翻'),
(1654, '推广'),
(1655, '推荐'),
(1656, '推举'),
(1657, '推敲'),
(1658, '推想'),
(1659, '推销'),
(1660, '推选'),
(1661, '退'),
(1662, '退还'),
(1663, '退换'),
(1664, '退缩'),
(1665, '退伍'),
(1666, '退休'),
(1667, '吞'),
(1668, '吞并'),
(1669, '托付'),
(1670, '拖欠'),
(1671, '脱离'),
(1672, '脱落'),
(1673, '妥协'),
(1674, '挖'),
(1675, '挖苦'),
(1676, '完'),
(1677, '完成'),
(1678, '完善'),
(1679, '玩'),
(1680, '挽回'),
(1681, '挽留'),
(1682, '忘'),
(1683, '忘掉'),
(1684, '忘记'),
(1685, '望见'),
(1686, '危害'),
(1687, '威胁'),
(1688, '为'),
(1689, '围攻'),
(1690, '违抗'),
(1691, '唯恐'),
(1692, '维持'),
(1693, '维护'),
(1694, '维修'),
(1695, '委托'),
(1696, '喂'),
(1697, '慰问'),
(1698, '问'),
(1699, '问候'),
(1700, '握'),
(1701, '握手'),
(1702, '污蔑'),
(1703, '污染'),
(1704, '污辱'),
(1705, '诬蔑'),
(1706, '无视'),
(1707, '务求'),
(1708, '误传'),
(1709, '误会'),
(1710, '误解'),
(1711, '吸'),
(1712, '吸收'),
(1713, '吸引'),
(1714, '希望'),
(1715, '习惯'),
(1716, '袭击'),
(1717, '洗'),
(1718, '洗澡'),
(1719, '喜爱'),
(1720, '喜欢'),
(1722, '下降'),
(1723, '下去'),
(1724, '吓唬'),
(1725, '掀起'),
(1726, '嫌'),
(1727, '嫌弃'),
(1728, '显得'),
(1729, '显示'),
(1730, '限制'),
(1731, '陷害'),
(1732, '陷入'),
(1733, '羡慕'),
(1734, '献给'),
(1735, '献身'),
(1736, '相反'),
(1737, '相隔'),
(1738, '相识'),
(1739, '相信'),
(1740, '享受'),
(1741, '想'),
(1745, '想念'),
(1746, '想像'),
(1747, '向往'),
(1748, '象征'),
(1749, '像'),
(1750, '削减'),
(1751, '消耗'),
(1752, '消灭'),
(1753, '消失'),
(1754, '校对'),
(1755, '笑'),
(1757, '协调'),
(1758, '协商'),
(1759, '协助'),
(1760, '携带'),
(1761, '写'),
(1763, '写作'),
(1764, '泄露'),
(1765, '卸'),
(1766, '谢'),
(1768, '谢绝'),
(1769, '欣赏'),
(1771, '信'),
(1773, '信任'),
(1774, '兴办'),
(1775, '兴建'),
(1776, '兴起'),
(1777, '醒'),
(1778, '休息'),
(1779, '休想'),
(1780, '休养'),
(1781, '修'),
(1782, '修补'),
(1783, '修改'),
(1784, '修理'),
(1785, '修饰'),
(1787, '修造'),
(1788, '修筑'),
(1789, '绣'),
(1790, '虚报'),
(1791, '虚设'),
(1792, '需要'),
(1793, '叙述'),
(1794, '宣布'),
(1795, '宣传'),
(1796, '宣读'),
(1797, '宣告'),
(1798, '悬挂'),
(1799, '选'),
(1800, '选拔'),
(1801, '选举'),
(1802, '选择'),
(1803, '渲染'),
(1804, '学'),
(1805, '学会'),
(1806, '学习'),
(1807, '寻求'),
(1808, '巡逻'),
(1809, '询问'),
(1810, '训练'),
(1811, '压迫'),
(1812, '压缩'),
(1813, '压制'),
(1814, '押送'),
(1815, '淹'),
(1816, '延缓'),
(1817, '严惩'),
(1818, '研究'),
(1819, '研制'),
(1820, '掩护'),
(1821, '掩饰'),
(1822, '演'),
(1823, '演出'),
(1824, '演示'),
(1825, '演习'),
(1826, '验证'),
(1827, '央求'),
(1828, '佯攻'),
(1829, '仰慕'),
(1830, '养'),
(1831, '养殖'),
(1832, '邀请'),
(1833, '摇'),
(1834, '摇动'),
(1835, '舀'),
(1836, '要'),
(1839, '要求'),
(1840, '依靠'),
(1841, '依赖'),
(1842, '移交'),
(1843, '遗漏'),
(1844, '议论'),
(1845, '抑制'),
(1846, '引导'),
(1847, '引起'),
(1848, '引诱'),
(1849, '隐藏'),
(1850, '隐瞒'),
(1851, '印刷'),
(1852, '应当'),
(1853, '应付'),
(1854, '应用'),
(1855, '迎候'),
(1856, '营造'),
(1857, '赢'),
(1858, '赢得'),
(1859, '影响'),
(1860, '拥抱'),
(1861, '拥护'),
(1862, '用'),
(1863, '用于'),
(1864, '邮购'),
(1865, '游'),
(1866, '游览'),
(1867, '游行'),
(1868, '有'),
(1872, '有关'),
(1873, '有心'),
(1874, '诱导'),
(1875, '诱惑'),
(1876, '诱骗'),
(1877, '予以'),
(1878, '愚弄'),
(1879, '预备'),
(1880, '预测'),
(1881, '预定'),
(1882, '预防'),
(1883, '预计'),
(1884, '预谋'),
(1885, '预言'),
(1886, '预祝'),
(1887, '遇到'),
(1888, '遇见'),
(1889, '援助'),
(1890, '怨'),
(1891, '怨恨'),
(1892, '愿'),
(1893, '愿意'),
(1894, '约定'),
(1895, '约束'),
(1896, '阅读'),
(1897, '允许'),
(1898, '运'),
(1899, '运动'),
(1900, '运输'),
(1901, '运用'),
(1902, '运载'),
(1903, '酝酿'),
(1904, '蕴藏'),
(1905, '杂交'),
(1906, '栽培'),
(1907, '栽种'),
(1908, '宰'),
(1909, '在意'),
(1910, '暂定'),
(1911, '暂停'),
(1912, '赞成'),
(1913, '赞赏'),
(1914, '赞助'),
(1915, '遭到'),
(1916, '遭受'),
(1917, '遭遇'),
(1918, '糟蹋'),
(1919, '造'),
(1920, '造成'),
(1921, '造谣'),
(1922, '责备'),
(1923, '责问'),
(1924, '增补'),
(1925, '增长'),
(1926, '增加'),
(1927, '增进'),
(1928, '增强'),
(1929, '憎恨'),
(1930, '赠送'),
(1931, '诈骗'),
(1932, '炸'),
(1934, '榨取'),
(1935, '摘除'),
(1936, '摘录'),
(1937, '瞻仰'),
(1938, '展出'),
(1939, '展开'),
(1940, '展览'),
(1941, '展示'),
(1942, '展望'),
(1943, '展销'),
(1944, '占领'),
(1945, '战斗'),
(1946, '站'),
(1948, '张'),
(1949, '张贴'),
(1950, '掌握'),
(1951, '招待'),
(1952, '招呼'),
(1953, '找'),
(1955, '召集'),
(1956, '照'),
(1957, '照搬'),
(1958, '照顾'),
(1960, '照看'),
(1961, '遮盖'),
(1962, '折磨'),
(1963, '折中'),
(1964, '针对'),
(1965, '侦察'),
(1966, '珍惜'),
(1967, '诊断'),
(1968, '镇压'),
(1969, '争'),
(1970, '争辩'),
(1971, '争夺'),
(1972, '争取'),
(1974, '争执'),
(1975, '征服'),
(1976, '征求'),
(1977, '挣'),
(1979, '挣脱'),
(1980, '挣扎'),
(1981, '拯救'),
(1982, '整顿'),
(1983, '整理'),
(1984, '整修'),
(1985, '正视'),
(1986, '证明'),
(1987, '证实'),
(1988, '支持'),
(1990, '支配'),
(1991, '支援'),
(1992, '知道'),
(1993, '执笔'),
(1994, '执行'),
(1995, '值得'),
(1996, '指出'),
(1997, '指导'),
(1998, '指挥'),
(1999, '指控'),
(2000, '指示'),
(2001, '指引'),
(2002, '指责'),
(2003, '制'),
(2004, '制裁'),
(2005, '制定'),
(2006, '制服'),
(2007, '制约'),
(2008, '制止'),
(2009, '治'),
(2010, '治理'),
(2011, '质问'),
(2012, '致使'),
(2013, '致以'),
(2014, '中断'),
(2015, '中止'),
(2016, '终止'),
(2017, '肿'),
(2018, '种'),
(2019, '重复'),
(2020, '重视'),
(2021, '咒骂'),
(2022, '株连'),
(2023, '主持'),
(2024, '主管'),
(2025, '主张'),
(2026, '属'),
(2027, '属于'),
(2028, '煮'),
(2029, '嘱咐'),
(2030, '助长'),
(2031, '注定'),
(2032, '注解'),
(2033, '注明'),
(2034, '注视'),
(2035, '注释'),
(2036, '注意'),
(2037, '注重'),
(2038, '祝贺'),
(2039, '祝愿'),
(2040, '抓紧'),
(2041, '转播'),
(2042, '转告'),
(2043, '转换'),
(2044, '转交'),
(2045, '转让'),
(2046, '转送'),
(2047, '转移'),
(2048, '转赠'),
(2049, '赚'),
(2050, '撰写'),
(2051, '装饰'),
(2052, '装卸'),
(2053, '装修'),
(2054, '装做'),
(2055, '撞见'),
(2056, '追'),
(2057, '追赶'),
(2058, '追究'),
(2059, '追认'),
(2060, '追随'),
(2061, '追问'),
(2062, '准备'),
(2063, '准许'),
(2064, '捉'),
(2065, '着手'),
(2066, '琢磨'),
(2067, '资助'),
(2068, '滋长'),
(2069, '自称'),
(2070, '自勉'),
(2071, '自信'),
(2072, '自学'),
(2073, '自愿'),
(2074, '总结'),
(2075, '纵容'),
(2076, '走'),
(2078, '走私'),
(2079, '租借'),
(2080, '阻碍'),
(2081, '阻止'),
(2082, '组织'),
(2083, '醉'),
(2084, '尊敬'),
(2085, '尊重'),
(2086, '遵守'),
(2087, '作出'),
(2088, '作废'),
(2089, '作为'),
(2090, '坐'),
(2091, '座谈'),
(2092, '做');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dict_verb`
--
ALTER TABLE `dict_verb`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dict_verb`
--
ALTER TABLE `dict_verb`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2095;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
