-- phpMyAdmin SQL Dump
-- version 3.5.8.1deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 12, 2013 at 05:02 PM
-- Server version: 5.5.34-0ubuntu0.13.04.1
-- PHP Version: 5.4.9-4ubuntu2.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `headyfinder`
--

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE IF NOT EXISTS `locations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `deliveryday` varchar(60) NOT NULL,
  `street` varchar(60) NOT NULL,
  `lat` double DEFAULT NULL,
  `lng` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`,`street`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=516 ;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`id`, `name`, `deliveryday`, `street`, `lat`, `lng`) VALUES
(367, 'TOPNOTCH RESORT', 'Friday', '4000 Mountain Rd, Stowe, VT', 44.49345, -72.73936500000002),
(368, 'GRACIES', 'Friday', '18 Edson Hill Rd, Stowe, VT', 44.489101, -72.72853099999998),
(369, 'STOWE BEVERAGE', 'Friday', '1880 Mountain Rd, Stowe, VT', 44.474682, -72.71441700000003),
(370, 'CACTUS CAFE', 'Friday', '2160 Mountain Rd, Stowe, VT', 44.476335, -72.71877699999999),
(371, 'CROP BISTRO &amp; BREWERY', 'Friday', '1859 Mountain Rd, Stowe, VT', 44.473824, -72.713977),
(372, 'MOUNTAIN CHEESE &amp; WINE', 'Friday', '1799 Mountain Rd, Stowe, VT', 44.473504, -72.71198600000002),
(373, 'PIECASSO (Stowe)', 'Friday', '1899 Mountain Rd, Stowe, VT', 44.473965, -72.714653),
(374, 'BLUE DONKEY', 'Friday', '1669 Mountain Rd, Stowe, VT', 44.47309, -72.71052600000002),
(375, 'STOWEFLAKE', 'Friday', '1746 Mountain Rd, Stowe, VT', 44.4741928, -72.71185830000002),
(376, 'HARVEST MARKET', 'Friday', '1031 Mountain Rd, Stowe, VT', 44.473717, -72.69903599999998),
(377, 'STOWE CINEMA', 'Friday', '454 Mountain Rd, Stowe, VT', 44.4713796, -72.68705560000001),
(378, 'RIMROCKS MOUNTAIN TAVERN', 'Friday', '394 Mountain Rd, Stowe, VT', 44.470852, -72.68656199999998),
(379, 'GREEN MOUNTAIN INN', 'Friday', '18 Main St, Stowe, VT', 44.46529, -72.68712740000001),
(380, 'VT ALE HOUSE', 'Friday', '294 Mountain Rd, Stowe, VT', 44.4695005, -72.68743569999998),
(381, 'COLD HOLLOW CIDER MILL', 'Friday', '3600 Waterbury-Stowe Rd, Waterbury, VT', 44.381268, -72.72017800000003),
(382, 'THE PIZZA JOINT', 'Friday', '383 Moscow Rd, Stowe, VT', 44.44031100000001, -72.7148664),
(383, 'SUNFLOWER NATURAL FOODS', 'Friday', '2934 Waterbury-Stowe Rd, Waterbury, VT', 44.373173, -72.72605899999996),
(384, 'WINDJAMMER', 'Thursday', '1076 Williston Rd, Burlington, VT', 44.470272, -73.17846700000001),
(385, 'CHEESE TRADER', 'Thursday', '1186 Williston Rd, Burlington, VT', 44.468848, -73.176286),
(386, 'HIGHER GROUND', 'Thursday', '1214 Williston Rd, Burlington, VT', 44.468887, -73.17563999999999),
(387, 'USAVE Beverage and Deli', 'Thursday', '1332 Williston Rd, Burlington, VT', 44.4668226, -73.17072559999997),
(388, 'SKINNY PANCAKE (Airport)', 'Thursday', 'Burlington International Airport, Burlington, VT', 44.4691892, -73.154739),
(389, 'HENRY ST DELI', 'Thursday', '11 Henry St, Burlington, VT', 44.4841102, -73.20533180000001),
(390, 'GUILD &amp; CO', 'Thursday', '1633 Williston Rd, Burlington, VT', 44.463777, -73.159896),
(391, 'RADIO BEAN', 'Thursday', '8 N Winooski Ave, Burlington, VT', 44.480856, -73.21108800000002),
(392, 'JUNIPER BAR', 'Thursday', '41 Cherry St, Burlington, VT', 44.4791612, -73.21673179999999),
(393, 'MARRIOT COURTYARD', 'Thursday', '25 Cherry St, Burlington, VT', 44.4789144, -73.21863630000001),
(394, 'SKINNY PANCAKE (Burlington)', 'Thursday', '60 Lake St, Burlington, VT', 44.477485, -73.21992339999997),
(395, 'BURLINGTON BAY MARKET', 'Thursday', '125 Battery St, Burlington, VT', 44.476535, -73.21919100000002),
(396, 'PINE ST DELI', 'Thursday', '316 Flynn Ave, Burlington, VT', 44.455683, -73.21393799999998),
(397, 'ICE HOUSE', 'Thursday', '171 Battery St, Burlington, VT', 44.4748019, -73.21893599999999),
(398, 'PISTOU', 'Thursday', '61 Main St, Burlington, VT', 44.475555, -73.21731699999998),
(399, 'LOGANS', 'Thursday', '30 Main St, Burlington, VT', 44.4758518, -73.21836289999999),
(400, 'SWEETWATERS', 'Thursday', '120 Church St, Burlington, VT', 44.476933, -73.21234299999998),
(401, 'EL GATO', 'Thursday', '169 Church St, Burlington, VT', 44.47549799999999, -73.21265499999998),
(402, '1/2 LOUNGE', 'Thursday', '136 1/2 Church St, Burlington, VT', 44.476526, -73.212309),
(403, 'NIKA', 'Thursday', '83 Church St, Burlington, VT', 44.47800400000001, -73.21283599999998),
(404, 'THE SCUFFER', 'Thursday', '148 Church St, Burlington, VT', 44.476324, -73.21229499999998),
(405, 'DAS BIERHAUS', 'Thursday', '175 Church St, Burlington, VT', 44.475382, -73.21263799999997),
(406, 'RUBEN JAMES', 'Thursday', '159 Main St, Burlington, VT', 44.4757869, -73.21287799999999),
(407, 'MANHATTAN PIZZA', 'Thursday', '167 Main St, Burlington, VT', 44.475824, -73.212628),
(408, 'TRATTORIA DELIA', 'Thursday', '152 St Paul St, Burlington, VT', 44.47546, -73.213819),
(409, 'BLUEBIRD TAVERN', 'Thursday', '86 St Paul St, Burlington, VT', 44.47746799999999, -73.21402499999999),
(410, 'A SINGLE PEBBLE', 'Thursday', '133 Bank St, Burlington, VT', 44.478072, -73.21454399999999),
(411, 'PIZZERIA VERITA', 'Thursday', '156 St Paul St, Burlington, VT', 44.475218, -73.21363400000001),
(412, 'THE FARMHOUSE TAP AND GRILL', 'Thursday', '160 Bank St, Burlington, VT', 44.478403, -73.21330499999999),
(413, 'BUENO Y SANO', 'Thursday', '213 College St, Burlington, VT', 44.47699799999999, -73.21134899999998),
(414, 'DAILY PLANET', 'Thursday', '15 Center St, Burlington, VT', 44.477776, -73.21166900000003),
(415, 'PENNY CLUSE CAFE', 'Thursday', '169 Cherry St, Burlington, VT', 44.479251, -73.21143999999998),
(416, 'EL CORTIJO', 'Thursday', '189 Bank St, Burlington, VT', 44.478077, -73.21197999999998),
(417, 'HEN OF THE WOOD', 'Wednesday', '92 Stowe St, Waterbury, VT', 44.342075, -72.748016),
(418, 'BLUE STONE PIZZA', 'Wednesday', '15 Stowe St, Waterbury, VT', 44.3380014, -72.75595020000003),
(419, 'TANGLEWOODS RESTAURANT', 'Wednesday', '179 Guptil Rd, Waterbury, VT', 44.355286, -72.73214000000002),
(420, 'CORK WINE BAR', 'Wednesday', '1 Stowe St, Waterbury, VT', 44.337689, -72.75613709999999),
(421, 'WATERBURY VILLAGE MARKET', 'Wednesday<span style="color:#fe6635"> CASES AVAILABLE $75</s', '80 S Main St, Waterbury, VT', 44.3352239, -72.75297990000001),
(422, 'THE RESERVOIR', 'Wednesday', '1 S Main St, Waterbury, VT', 44.337606, -72.75660900000003),
(423, 'THE PROHIBITION PIG', 'Wednesday', '23 S Main St, Waterbury, VT', 44.3371855, -72.75602930000002),
(424, 'CROSSROAD BEVERAGE', 'Wednesday', '52 N Main St #1, Waterbury, VT', 44.341734, -72.76014099999998),
(425, 'STAGECOACH INN', 'Wednesday', '18 N Main St, Waterbury, VT', 44.338709, -72.757789),
(426, 'BLUEBIRD BBQ', 'Wednesday', '317 Riverside Ave, Winooski, VT', 44.487894, -73.19536299999999),
(427, 'MONKEY HOUSE', 'Wednesday', '30 Main St, Winooski, VT', 44.4905199, -73.18667490000001),
(428, 'MULE BAR', 'Wednesday', '38 Main St, Winooski, VT', 44.490645, -73.18669190000003),
(429, 'MISERY LOVES COMPANY', 'Wednesday', '46 Main St, Winooski, VT', 44.491015, -73.18671599999999),
(430, 'ESSEX DISCOUNT BEVERAGE', 'Wednesday', '76 Center Rd, Essex, VT', 44.510979, -73.068939),
(431, 'FAIRGROUND BEVERAGE', 'Wednesday', '103 Pearl St (Rte 15), Essex, VT', 44.4905054, -73.11124330000001),
(432, 'WINOOSKI BEVERAGE', 'Tuesday<span style="color:#fe6635"> CASES AVAILABLE $75</spa', '1 East St, Winooski, VT', 44.492283, -73.18183099999999),
(433, 'SWEET CLOVER MARKET', 'Wednesday', '21 Essex Way, Essex, VT', 44.5061813, -73.081097),
(434, 'THE ESSEX', 'Wednesday', '70 Essex Way, Essex, VT', 44.501606, -73.07851399999998),
(435, 'BELTED COW BISTRO', 'Wednesday', '4 Park St, Essex, VT', 44.490038, -73.111088),
(436, 'SHELBURNE MEAT MARKET', 'Wednesday', '40 Tafts Corner, Williston, VT', 44.451031, -73.10913299999999),
(437, 'MEXICALI GRILL &amp; CANTINA', 'Wednesday', '28 Walnut St, Williston, VT', 44.44516400000001, -73.10950100000002),
(438, 'NATURAL PROVISIONS', 'Wednesday', '329 Harvest Lane, Williston, VT', 44.448517, -73.11517300000003),
(439, 'VT MEAT &amp; SEAFOOD', 'Wednesday', '104 Cornerstone Dr, Williston, VT', 44.446915, -73.103747),
(440, 'RED HEN BAKERY', 'Tuesday', '961 US Rte 2, Middlesex, VT', 44.294262, -72.6828309),
(441, 'BRIDGE ST BUTCHER', 'Tuesday', '40 Bridge St, Waitsfield, VT', 44.189633, -72.8239059),
(442, 'MINT RESTAURANT &amp; TEA LOUNGE', 'Tuesday', '4403 Main St, Waitsfield, VT', 44.18979, -72.82454999999999),
(443, 'WAITSFIELD WINE SHOP', 'Tuesday', '4330 Main St, Waitsfield, VT', 44.190861, -72.82379889999999),
(444, 'WAITSFIELD VILLAGE GROCERY', 'Tuesday<span style="color:#fe6635"> CASES AVAILABLE $75</spa', '4348 Main St, Waitsfield, VT', 44.190746, -72.82404300000002),
(445, 'BIG PICTURE THEATER', 'Tuesday', '48 Carroll Rd, Waitsfield, VT', 44.188415, -72.83287200000001),
(446, 'MEHURONS MARKET', 'Tuesday', '5121 Main St #6, Waitsfield, VT', 44.184113, -72.83511699999997),
(447, 'IRASVILLE COUNTRY STORE', 'Tuesday', '5134 Main St, Waitsfield, VT', 44.1841879, -72.83661949999998),
(448, 'HYDE AWAY', 'Tuesday', '1428 Millbrook Rd, Waitsfield, VT', 44.1833262, -72.86983809999998),
(449, 'MAD TACO (Waitsfield)', 'Tuesday', '5101 Main St, Waitsfield, VT', 44.1847992, -72.8357186),
(450, 'MUTHA STUFFERS', 'Tuesday', 'Sugarbush Village, Warren, VT', 44.1374954, -72.90674380000002),
(451, 'PINE TREE PUB', 'Tuesday', '7508 Sugarbush Village, Warren, VT', 44.1400554, -72.8923782),
(452, 'CASTLEROCK PUB', 'Tuesday', '102 Forest Dr, Warren, VT', 44.1365488, -72.8933338),
(453, 'HOSTEL TEVERE', 'Tuesday', '203 Powderhound Rd, Warren, VT', 44.1341633, -72.8479686),
(454, 'WARREN STORE', 'Tuesday', '284 Main St, Warren, VT', 44.114498, -72.85607399999998),
(455, 'E WARREN COMMUNITY MARKET', 'Tuesday', '42 Roxbury Mtn Rd, Warren, VT', 44.108814, -72.81916799999999),
(456, 'THE INN AT THE ROUND BARN', 'Tuesday', '1661 E Warren Rd, Warren, VT', 44.1677428, -72.81147820000001),
(457, 'PEARL ST BEVERAGE', 'Tuesday', '240 Pearl St, Burlington, VT', 44.4807599, -73.209159),
(458, 'RICHMOND BEVERAGE', 'Tuesday', '56 Railroad St, Richmond, VT', 44.4040359, -72.9945227),
(459, 'RICHMOND MOBIL MART', 'Tuesday', '1436 W Main St, Richmond, VT', 44.422421, -73.00576000000001),
(460, 'JERICHO COUNTRY STORE', 'Tuesday', '25 Jercho Center Circle, Jericho, VT', 44.469935, -72.97333200000003),
(461, 'CITY MARKET', 'Tuesday', '82 S Winooski Ave, Burlington, VT', 44.4781819, -73.21023000000002),
(462, 'YANKEE WINE &amp; SPIRITS', 'Monday', '126 Main St, Montpelier, VT', 44.261034, -72.57490789999997),
(463, 'KISMET', 'Monday', '52 State St, Montpelier, VT', 44.2604088, -72.5768157),
(464, 'POSITIVE PIE (Montpelier)', 'Monday', '22 State St, Montpelier, VT', 44.260281, -72.57627300000001),
(465, 'MAD TACO (Montpelier)', 'Monday', '72 Main St, Montpelier, VT', 44.2599626, -72.5757155),
(466, 'SKINNY PANCAKE (Montpelier)', 'Monday', '89 Main St, Montpelier, VT', 44.260344, -72.574545),
(467, 'UNCOMMON MARKET', 'Monday', '1 School St, Montpelier, VT', 44.26164180000001, -72.5754619),
(468, 'MONTPELIER VILLAGE PIZZA', 'Monday', '89 Main St #5, Montpelier, VT', 44.260344, -72.574545),
(469, 'BERLIN ST MOBIL', 'Monday', '3 Berlin St, Montpelier, VT', 44.257118, -72.57777399999998),
(470, 'CORNER STONE PUB &amp; KITCHEN', 'Monday', '47 N Main St, Barre, VT', 44.197575, -72.50150300000001),
(471, 'MONTPELIER DISCOUNT BEVERAGE', 'Monday', '370 S Barre St, VT', 44.177324, -72.50424199999998),
(472, 'BEVERAGE BARON', 'Monday<span style="color:#fe6635"> CASES AVAILABLE $75</span', '411 N Main St, Barre, VT', 44.203846, -72.50849900000003),
(473, 'MULLIGANS', 'Monday', '9 Maple Ave, VT', 44.202782, -72.50694299999998),
(474, 'HUNGER MOUNTAIN COOP', 'Monday<span style="color:#fe6635"> CASES AVAILABLE $75</span', '623 Stone Cutters Way, Montpelier, VT', 44.253137, -72.57169099999999),
(475, 'M &amp; M BEVERAGE', 'Monday', '370 S Barre Rd, VT', 44.177324, -72.50424199999998),
(476, 'ROUTE 7 LIQUOR', 'Monday', '2659 Shelburne Rd, Shelburne, VT', 44.416813, -73.21283),
(477, 'MILL MARKET &amp; DELI', 'Monday', '1580 Dorset St, S Burlington, VT', 44.4232609, -73.17323699999997),
(478, 'SHELBURNE RD VARIETY', 'Monday', '1855 Shelburne Rd, Shelburne, VT', 44.42131699999999, -73.212672),
(479, 'SIMONS SHELBURNE RD', 'Monday', '974 Shelburne Rd, Shelburne, VT', 44.442106, -73.20917399999996),
(480, 'BUONO APPETITO', 'Monday', '3182 Shelburne Rd, Shelburne, VT', 44.4095199, -73.21591669999998),
(481, 'SHELBURNE MEAT MARKET', 'Monday', '2989 Shelburne Rd, Shelburne, VT', 44.41248299999999, -73.21378299999998),
(482, 'SUSHI YOSHI', 'Friday', '1128 Mountain Rd, VT', 44.475055, -72.70102789999999),
(483, 'VILLAGE MOBIL', 'Monday', '8252 Shelburne Rd, Shelburne, VT', 44.35361109999999, -73.23863240000003),
(484, 'STOWE SEAFOOD', 'Friday', '504 Mountain Rd, Stowe, VT', 44.472282, -72.688583),
(485, 'HEALTHY LIVING', 'Monday<span style="color:#fe6635"> CASES AVAILABLE $75</span', '222 Dorset St, S Burlington, VT', 44.4627697, -73.17978140000002),
(486, 'STOWE QUICK MART', 'Friday', '745 Main St, Stowe, VT', 44.456371, -72.694229),
(487, 'BEER PALATE', 'Wednesday', '188 Boxwood St, VT', 44.446032, -73.10989899999998),
(488, 'ALPINE MART', 'Friday', '968 Mountain Rd, Stowe, VT', 44.473896, -72.69731100000001),
(489, 'GREEN TOP MARKET', 'Friday', '639 Morristown Corners, Morrisville, VT', 44.55722170000001, -72.62428520000003),
(490, 'BISTRO AT TEN ACRES', 'Friday', '14 Barrows Rd, Stowe, VT', 44.471791, -72.727036),
(491, 'EDELWEISS MOUNTAIN DELI', 'Friday', '2251 Mountain Rd, Stowe, VT', 44.476414, -72.72071799999998),
(492, 'ARVAD''S GRILL &amp; PUB', 'Wednesday', '3 S Main St, Waterbury, VT', 44.3374735, -72.7563399),
(493, 'BEE''S KNEES', 'Friday', '82 Lower Main St, Morrisville, VT', 44.561758, -72.60008399999998),
(494, 'TOMLINSON''S', 'Friday', '81 Bridge St, Morrisville, VT', 44.5635068, -72.60003740000002),
(495, 'BURT''S PUB', 'Friday', '135 Luce Hill Rd, Stowe, VT', 44.47372, -72.71916499999998),
(496, 'O''GRADY''S', 'Friday', '504 Mountain Rd, Stowe, VT', 44.472282, -72.688583),
(497, 'PICKWICK''S', 'Friday', '433 Mountain Rd, Stowe, VT', 44.4715459, -72.68857600000001),
(498, 'MICHAEL''S ON THE HILL', 'Friday', '4182 Waterbury-Stowe Rd, Waterbury, VT', 44.38983899999999, -72.718437),
(499, 'CHARLIE''S ROTISSERIE &amp; GRILL', 'Thursday', '1160 Williston Rd, Burlington, VT', 44.46871, -73.17755199999999),
(500, 'GRACIE''S LIQUOR', 'Thursday', '26 Hinesburg Rd, Burlington, VT', 44.466248, -73.170796),
(501, 'HALVORSON''S', 'Thursday', '16 Church St, Burlington, VT', 44.48001499999999, -73.2125949),
(502, 'MEROLLA''S MARKET', 'Thursday', '1563 North Ave, Burlington, VT', 44.515663, -73.25713999999999),
(503, 'BESSERY''S QUALITY MARKET', 'Thursday', '1398 North Ave, Burlington, VT', 44.512455, -73.25194799999997),
(504, 'NECTAR''S', 'Thursday', '188 Main St, Burlington, VT', 44.47606, -73.21170000000001),
(505, 'MR MIKE''S PIZZA', 'Thursday', '206 Main St, Burlington, VT', 44.47618300000001, -73.21125699999999),
(506, 'RI RA''S IRISH PUB', 'Thursday', '123 Church St, Burlington, VT', 44.476857, -73.21281199999999),
(507, 'AKE''S PLACE', 'Thursday', '134 Church St, Burlington, VT', 44.4767, -73.2123019),
(508, 'KEN''S PIZZA', 'Thursday', '71 Church St, Burlington, VT', 44.478413, -73.21283799999998),
(509, 'FINNIGAN''S PUB', 'Thursday', '205 College St, Burlington, VT', 44.476999, -73.21168799999998),
(510, 'SAMMY''S QUICK STOP', 'Wednesday', '264 Malletts Bay Ave, Winooski, VT', 44.49733759999999, -73.19485939999998),
(511, 'MONTY''S TAVERN', 'Wednesday', '7921 Williston Rd, Williston, VT', 44.438766, -73.07228099999998),
(512, 'McGILLICUDDY''S (Williston)', 'Wednesday', '28 Walnut St, Williston, VT', 44.44516400000001, -73.10950100000002),
(513, 'NUTTY STEPH''S', 'Tuesday', '961 US Rte 2, Middlesex, VT', 44.294262, -72.6828309),
(514, 'AKE''S DEN', 'Tuesday', '5351 Main St, Waitsfield, VT', 44.182102, -72.83936299999999),
(515, 'MCGILLICUDDY''S (Montpelier)', 'Monday', '14 Langdon St, Montpelier, VT', 44.2606036, -72.57554119999998);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
