-- phpMyAdmin SQL Dump
-- version 4.9.11
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 13, 2023 at 02:25 PM
-- Server version: 10.3.38-MariaDB-log-cll-lve
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webservices_webservices_colour`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_bank`
--

CREATE TABLE `admin_bank` (
  `id` int(255) NOT NULL,
  `upi1` varchar(255) NOT NULL,
  `upi2` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin_bank`
--

INSERT INTO `admin_bank` (`id`, `upi1`, `upi2`) VALUES
(1, '0000000000@upi', '1111111111@upi');

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `banner_title` varchar(500) NOT NULL,
  `material` varchar(255) NOT NULL,
  `status` smallint(6) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `child_menu`
--

CREATE TABLE `child_menu` (
  `id` int(11) NOT NULL,
  `p_id` varchar(255) NOT NULL,
  `child` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `status` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `child_menu`
--

INSERT INTO `child_menu` (`id`, `p_id`, `child`, `url`, `status`) VALUES
(1, '13', 'Manage Banner', 'manage_banner.php', 2),
(4, '13', 'Manage Product', 'manage_product.php', 1),
(5, '2', 'Manage Staf', 'manage_adminuser.php', 1),
(6, '2', 'Manage Role', 'manage_role.php', 1),
(7, '2', 'Manage Task', 'manage_task.php', 1),
(8, '2', 'Manage User', 'manage_user.php', 1),
(9, '7', 'Withdrawal Request', 'manage_withdraw.php', 1),
(10, '7', 'Withdrawal Accept', 'manage_withdrawAccept.php', 1),
(11, '7', 'Withdrawal Reject', 'manage_withdrawReject.php', 1),
(12, '3', 'Manage Winner Result', 'manage_winresult.php', 1),
(13, '9', 'History For Parity', 'manage_parityhistory.php', 1),
(14, '9', 'History For Sapre', 'manage_saprehistory.php', 1),
(15, '9', 'History For Bcone', 'manage_bconehistory.php', 1),
(16, '9', 'History For Emerd', 'manage_emerdhistory.php', 1),
(17, '10', 'Manage Trade History', 'manage_tradehistory.php', 1),
(18, '5', 'Reward System', 'reward_system.php', 1),
(19, '5', 'Manage Amount', 'manage_amount.php', 1),
(20, '5', 'Manage Recharge', 'manage_recharge.php', 2),
(21, '3', 'Current Game Reports', 'current_game_report.php', 1),
(22, '3', 'Game Mode', 'manage_gamewinnersetting.php', 1),
(23, '5', 'Manage Deposit', 'depositupdate.php', 1),
(24, '5', 'UPI Setup', 'manage_admin_upi.php', 1),
(25, '4', 'All Queries', 'all_queries.php', 1),
(26, '3', 'Game Transactions', 'manage_transaction.php', 1);

-- --------------------------------------------------------

--
-- Table structure for table `complaint`
--

CREATE TABLE `complaint` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `complaint_id` int(11) NOT NULL,
  `complaint_for` varchar(222) NOT NULL,
  `complaint_subject` longtext NOT NULL,
  `complaint_text` longtext NOT NULL,
  `complaint_reply` longtext NOT NULL,
  `complaint_reply_time` mediumtext NOT NULL,
  `complaint_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `complaint_status` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `content`
--

CREATE TABLE `content` (
  `id` int(10) NOT NULL DEFAULT 1,
  `riskagreement` text NOT NULL,
  `privacy` text NOT NULL,
  `rule` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `content`
--

INSERT INTO `content` (`id`, `riskagreement`, `privacy`, `rule`) VALUES
(1, '<p>Publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for lorem ipsum will uncover many web sites still in their infance. Publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for lorem ipsum will uncover many web sites still in their infance. Publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for lorem ipsum will uncover many web sites still in their infance. Publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for lorem ipsum will uncover many web sites still in their infance.</p>\r\n', '<h3><strong><span style=\"color:#e74c3c\">Privacy</span> Policy </strong><span style=\"color:#c0392b\">for</span> <strong><span style=\"color:#2980b9\">2</span><em>&nbsp;<span style=\"color:#e74c3c\">X</span><span style=\"color:#9b59b6\">Club</span></em></strong></h3>\r\n\r\n<h4>At 2xclub.shop, accessible from 2xclub.shop, one of our main priorities is the privacy of our visitors. This Privacy Policy document contains types of information that are collected and recorded by 2XClub.SHOP and how we use it</h4>\r\n\r\n<p>Ifyou have additional questions or require more information about our Privacy Policy, do not hesitate to contact us.</p>\r\n\r\n<p>This Privacy Policy applies only to our online activities and is valid for visitors to our website with regards to the information that they shared and/or collect in Cyber team support. This policy is not applicable to any information collected offline or via channels other than this website. Our Privacy Policy was created with the help of the Privacy Policy Generator and the Free Privacy Policy Generator.</p>\r\n\r\n<p><strong>Consent</strong><br />\r\nBy using our website, you hereby consent to our Privacy Policy and agree to its terms. For our Terms and Conditions, please visit the Terms &amp; Conditions Generator.</p>\r\n\r\n<p>Information we collect<br />\r\nThe personal information that you are asked to provide, and the reasons why you are asked to provide it, will be made clear to you at the point we ask you to provide your personal information.</p>\r\n\r\n<p>If you contact us directly, we may receive additional information about you such as your name, email address, phone number, the contents of the message and/or attachments you may send us, and any other information you may choose to provide.</p>\r\n\r\n<p>When you register for an Account, we may ask for your contact information, including items such as name, company name, address, email address, and telephone number.</p>\r\n\r\n<p>How we use your information<br />\r\nWe use the information we collect in various ways, including to:</p>\r\n\r\n<p style=\"text-align:center\">Provide, operate, and maintain our website<br />\r\nImprove, personalize, and expand our website<br />\r\nUnderstand and analyze how you use our website<br />\r\nDevelop new products, services, features, and functionality<br />\r\nCommunicate with you, either directly or through one of our partners, including for customer service, to provide you with updates and other information relating to the website, and for marketing and promotional purposes<br />\r\nSend you emails<br />\r\nFind and prevent fraud<br />\r\nLog Files<br />\r\n2xclub.shop follows a standard procedure of using log files. These files log visitors when they visit websites. All hosting companies do this and a part of hosting services&#39; analytics. The information collected by log files includes internet protocol (IP) addresses, browser type, Internet Service Provider (ISP), date and time stamp, referring/exit pages, and possibly the number of clicks. These are not linked to any information that is personally identifiable. The purpose of the information is for analyzing trends, administering the site, tracking users&#39; movement on the website, and gathering demographic information.</p>\r\n\r\n<p>Cookies and Web Beacons<br />\r\nLike any other website, meesho uses &#39;cookies&#39;. These cookies are used to store information including visitors&#39; preferences, and the pages on the website that the visitor accessed or visited. The information is used to optimize the users&#39; experience by customizing our web page content based on visitors&#39; browser type and/or other information.</p>\r\n\r\n<p>For more general information on cookies, please read &quot;What Are Cookies&quot; from Cookie Consent.</p>\r\n\r\n<p>Google DoubleClick DART Cookie<br />\r\nGoogle is one of the third-party vendors on our site. It also uses cookies, known as DART cookies, to serve ads to our site visitors based upon their visit to www.website.com and other sites on the internet. However, visitors may choose to decline the use of DART cookies by visiting the Google ad and content network Privacy Policy at the following URL &ndash; https://policies.google.com/technologies/ads</p>\r\n\r\n<p>Our Advertising Partners<br />\r\nSome of the advertisers on our site may use cookies and web beacons. Our advertising partners are listed below. Each of our advertising partners has their own Privacy Policy for their policies on user data. For easier access, we hyperlinked to their Privacy Policies below.</p>\r\n\r\n<p>Google</p>\r\n\r\n<p>https://policies.google.com/technologies/ads</p>\r\n\r\n<p>Advertising Partners Privacy Policies<br />\r\nYou may consult this list to find the Privacy Policy for each of the advertising partners of 2xclub.shop.</p>\r\n\r\n<p>Third-party ad servers or ad networks uses technologies like cookies, JavaScript, or Web Beacons that are used in their respective advertisements and links that appear on 2xclub.shop, which are sent directly to users&#39; browser. They automatically receive your IP address when this occurs. These technologies are used to measure the effectiveness of their advertising campaigns and/or to personalize the advertising content that you see on websites that you visit.</p>\r\n\r\n<p>Note that 2xclub.shop has no access to or control over these cookies that are used by third-party advertisers.</p>\r\n\r\n<p>Third-Party Privacy Policies<br />\r\n2xclub.shop Privacy Policy does not apply to other advertisers or websites. Thus, we are advising you to consult the respective Privacy Policies of these third-party ad servers for more detailed information. It may include their practices and instructions about how to opt-out of certain options.</p>\r\n\r\n<p>You can choose to disable cookies through your individual browser options. To know more detailed information about cookie management with specific web browsers, it can be found at the browsers&#39; respective websites.</p>\r\n\r\n<p>CCPA Privacy Rights (Do Not Sell My Personal Information)<br />\r\nUnder the CCPA, among other rights, California consumers have the right to:</p>\r\n\r\n<p>Request that a business that collects a consumer&#39;s personal data disclose the categories and specific pieces of personal data that a business has collected about consumers.</p>\r\n\r\n<p>Request that a business deletes any personal data about the consumer that a business has collected.</p>\r\n\r\n<p>Request that a business that sells a consumer&#39;s personal data, not sell the consumer&#39;s personal data.</p>\r\n\r\n<p>If you make a request, we have one month to respond to you. If you would like to exercise any of these rights, please contact us.</p>\r\n\r\n<p>GDPR Data Protection Rights<br />\r\nWe would like to make sure you are fully aware of all of your data protection rights. Every user is entitled to the following:</p>\r\n\r\n<p>The right to access &ndash; You have the right to request copies of your personal data. We may charge you a small fee for this service.</p>\r\n\r\n<p>The right to rectification &ndash; You have the right to request that we correct any information you believe is inaccurate. You also have the right to request that we complete the information you believe is incomplete.</p>\r\n\r\n<p>The right to erasure &ndash; You have the right to request that we erase your personal data, under certain conditions.</p>\r\n\r\n<p>The right to restrict processing &ndash; You have the right to request that we restrict the processing of your personal data, under certain conditions.</p>\r\n\r\n<p>The right to object to processing &ndash; You have the right to object to our processing of your personal data, under certain conditions.</p>\r\n\r\n<p>The right to data portability &ndash; You have the right to request that we transfer the data that we have collected to another organization, or directly to you, under certain conditions.</p>\r\n\r\n<p>If you make a request, we have one month to respond to you. If you would like to exercise any of these rights, please contact us.</p>\r\n\r\n<p>Children&#39;s Information<br />\r\nAnother part of our priority is adding protection for children while using the internet. We encourage parents and guardians to observe, participate in, and/or monitor and guide their online activity.</p>\r\n\r\n<p>2xclub.shop does not knowingly collect any Personal Identifiable Information from children under the age of 13. If you think that your child provided this kind of information on our website, we strongly encourage you to contact us immediately and we will do our best efforts to promptly remove such information from our records.</p>\r\n', '<p style=\"font-size:10px\">3 minutes 1 issue, 2 minutes and 30 seconds to order, 30 seconds to show the lottery result. It opens all day. The total number of trade is 480 issues</p>\r\n\r\n<p style=\"font-size:10px\">If you spend 100 to trade, after deducting 2 service fee, your contract amount is 98:</p>\r\n\r\n<p style=\"font-size:10px\">1. JOIN GREEN: if the result shows 1,3,7,9, you will get (98*2) 196</p>\r\n\r\n<p style=\"font-size:10px\">If the result shows 5, you will get (98*1.5) 147</p>\r\n\r\n<p style=\"font-size:10px\">2. JOIN RED: if the result shows 2,4,6,8, you will get (98*2) 196; If the result shows 0, you will get (98*1.5) 147</p>\r\n\r\n<p style=\"font-size:10px\">3. JOIN VIOLET: if the result shows 0 or 5, you will get (98*4.5) 441</p>\r\n\r\n<p style=\"font-size:10px\">4. SELECT NUMBER: if the result is the same as the number you selected, you will get (98*9) 882</p>');

-- --------------------------------------------------------

--
-- Table structure for table `deposits`
--

CREATE TABLE `deposits` (
  `id` int(11) NOT NULL,
  `ref_num` varchar(200) NOT NULL,
  `amount` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL,
  `uid` varchar(200) NOT NULL,
  `date` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `role` varchar(255) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `role`, `created_date`, `status`) VALUES
(1, 'SuperAdmin', '2014-12-23 20:04:37', 1),
(2, 'Support', '2017-01-26 17:23:05', 1),
(13, 'serverRoot', '2021-10-09 12:49:15', 1),
(14, 'Assistant', '2022-01-26 19:57:56', 1),
(15, 'Agent', '2022-01-26 19:58:37', 1);

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `services` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `services`, `url`, `status`) VALUES
(1, 'Dashboard', 'desktop.php', '1'),
(2, 'Staf & Users', '#', '1'),
(3, 'Game Management', '#', '1'),
(4, 'User Queries', '#', '1'),
(5, 'Payments', '#', '1'),
(7, 'Withdrawal Management ', '#', '1'),
(9, 'Game History', '#', '1'),
(10, 'Trade History', '#', '1'),
(13, 'Site Settings', '#', '1');

-- --------------------------------------------------------

--
-- Table structure for table `site_setting`
--

CREATE TABLE `site_setting` (
  `id` int(11) NOT NULL,
  `address` text NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `fblink` text NOT NULL,
  `twlink` text NOT NULL,
  `ln` text NOT NULL,
  `insta` varchar(500) NOT NULL,
  `fbcount` varchar(100) NOT NULL,
  `twcount` varchar(100) NOT NULL,
  `youtubecount` varchar(100) NOT NULL,
  `instacount` varchar(100) NOT NULL,
  `status` smallint(6) NOT NULL,
  `updt_time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `site_setting`
--

INSERT INTO `site_setting` (`id`, `address`, `email`, `mobile`, `fblink`, `twlink`, `ln`, `insta`, `fbcount`, `twcount`, `youtubecount`, `instacount`, `status`, `updt_time`) VALUES
(1, 'Stock Building, 125 Main Street 1st Lane, San Francisco, USA', 'info@gmail.com', '+91 9090909090', '#', '#', '#', '#', '985', '529', '888', '100', 1, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `task`
--

CREATE TABLE `task` (
  `id` int(11) NOT NULL,
  `role_id` varchar(255) NOT NULL,
  `task` varchar(255) NOT NULL,
  `status` smallint(6) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `task`
--

INSERT INTO `task` (`id`, `role_id`, `task`, `status`, `created_date`) VALUES
(1, '1', '1,2,3,4,5,6,7,8,9,10,11,12,13', 1, '2021-09-25 10:51:32'),
(2, '2', '1,3,4,5,9,10', 1, '2019-09-18 07:17:58'),
(9, '13', '1,2,3,4,5,6,7,8,9,10,11,12,13,16', 1, '2021-10-09 12:49:50'),
(10, '15', '1,3,4,5,13', 1, '2022-01-26 20:01:28'),
(11, '14', '8', 1, '2022-01-26 20:02:33');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `admin_name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `expiry_date` varchar(255) NOT NULL,
  `status` smallint(6) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `name`, `admin_name`, `password`, `role`, `expiry_date`, `status`, `date`) VALUES
(1, 'admin', 'admin', '3354045a397621cd92406f1f98cde292', '13', 'no', 1, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bankdetail`
--

CREATE TABLE `tbl_bankdetail` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `ifsc` varchar(255) NOT NULL,
  `bankname` varchar(255) NOT NULL,
  `account` varchar(255) NOT NULL,
  `mobile` varchar(300) NOT NULL,
  `email` varchar(300) NOT NULL,
  `type` varchar(50) NOT NULL,
  `status` smallint(6) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_betting`
--

CREATE TABLE `tbl_betting` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `periodid` varchar(255) NOT NULL,
  `type` varchar(100) NOT NULL,
  `value` varchar(100) NOT NULL,
  `amount` float NOT NULL,
  `tab` varchar(50) NOT NULL,
  `acceptrule` varchar(50) NOT NULL,
  `createdate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bonus`
--

CREATE TABLE `tbl_bonus` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `amount` varchar(300) NOT NULL,
  `level1` varchar(300) NOT NULL,
  `level2` varchar(300) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bonussummery`
--

CREATE TABLE `tbl_bonussummery` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `periodid` varchar(300) NOT NULL,
  `level1id` varchar(255) NOT NULL,
  `level2id` varchar(255) NOT NULL,
  `level1amount` varchar(255) NOT NULL,
  `level2amount` varchar(255) NOT NULL,
  `tradeamount` varchar(255) NOT NULL,
  `createdate` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bonuswithdrawal`
--

CREATE TABLE `tbl_bonuswithdrawal` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `amount` varchar(255) NOT NULL,
  `createdate` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_envelop`
--

CREATE TABLE `tbl_envelop` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `name` varchar(300) NOT NULL,
  `email` varchar(300) NOT NULL,
  `mobile` varchar(300) NOT NULL,
  `amount` float NOT NULL,
  `status` smallint(6) NOT NULL,
  `rechargestatus` smallint(6) NOT NULL,
  `createdate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_gameid`
--

CREATE TABLE `tbl_gameid` (
  `id` int(11) NOT NULL,
  `gameid` varchar(500) NOT NULL,
  `createdate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_gamesettings`
--

CREATE TABLE `tbl_gamesettings` (
  `id` int(11) NOT NULL,
  `settingtype` varchar(255) NOT NULL,
  `createdate` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_gamesettings`
--

INSERT INTO `tbl_gamesettings` (`id`, `settingtype`, `createdate`) VALUES
(1, 'low', '2023-05-06 20:19:27');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_manualresult`
--

CREATE TABLE `tbl_manualresult` (
  `id` int(11) NOT NULL,
  `color` varchar(300) NOT NULL,
  `value` varchar(300) NOT NULL,
  `number` int(11) NOT NULL,
  `status` smallint(6) NOT NULL,
  `createdate` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_manualresult`
--

INSERT INTO `tbl_manualresult` (`id`, `color`, `value`, `number`, `status`, `createdate`) VALUES
(1, '<span style=\"color:#f00;\">Red</span> + <span style=\"color:#C71585;\">Violet</span>', 'red+violet', 0, 0, '2021-02-01 00:00:00'),
(2, '<span style=\"color:#090;\">Green</span>', 'green', 1, 0, '2021-02-01 00:00:00'),
(3, '<span style=\"color:#f00;\">Red</span>', 'red', 2, 0, '2021-02-01 00:00:00'),
(4, '<span style=\"color:#090;\">Green</span>', 'green', 3, 0, '2021-02-01 00:00:00'),
(5, '<span style=\"color:#f00;\">Red</span>', 'red', 4, 0, '2021-02-01 00:00:00'),
(6, '<span style=\"color:#090;\">Green</span> + <span style=\"color:#C71585;\">Violet</span>', 'green+violet', 5, 0, '2021-02-01 00:00:00'),
(7, '<span style=\"color:#f00;\">Red</span>', 'red', 6, 0, '2021-02-01 00:00:00'),
(8, '<span style=\"color:#090;\">Green</span>', 'green', 7, 0, '2021-02-01 00:00:00'),
(9, '<span style=\"color:#f00;\">Red</span>', 'red', 8, 0, '2021-02-01 00:00:00'),
(10, '<span style=\"color:#090;\">Green</span>', 'green', 9, 0, '2021-02-01 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_manualresultswitch`
--

CREATE TABLE `tbl_manualresultswitch` (
  `id` int(11) NOT NULL,
  `switch` varchar(50) NOT NULL,
  `tab` varchar(50) NOT NULL,
  `createdate` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_manualresultswitch`
--

INSERT INTO `tbl_manualresultswitch` (`id`, `switch`, `tab`, `createdate`) VALUES
(1, 'no', '', '2023-05-13 21:06:35');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `transactionid` varchar(300) NOT NULL,
  `amount` varchar(300) NOT NULL,
  `status` smallint(6) NOT NULL,
  `createdate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_paymentsetting`
--

CREATE TABLE `tbl_paymentsetting` (
  `id` int(11) NOT NULL,
  `rechargeamount` varchar(500) NOT NULL,
  `withdrawalamount` varchar(500) NOT NULL,
  `bonusamount` varchar(500) NOT NULL,
  `rechargebonus` varchar(500) NOT NULL COMMENT 'in%age',
  `level1` varchar(300) NOT NULL COMMENT 'In%age',
  `level2` varchar(300) NOT NULL COMMENT 'In%age'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_paymentsetting`
--

INSERT INTO `tbl_paymentsetting` (`id`, `rechargeamount`, `withdrawalamount`, `bonusamount`, `rechargebonus`, `level1`, `level2`) VALUES
(1, '100', '500', '10', '20%', '5', '2');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `price` varchar(255) NOT NULL,
  `images` varchar(300) NOT NULL,
  `status` smallint(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`id`, `name`, `price`, `images`, `status`) VALUES
(14, 'Jewels Galaxy Designer American Diamond Gold Plated Bangles for Women/Girls', '1999', 'product/bk8n45.jpg', 1),
(15, 'Om Jewells Rhodium Plated Blue Crystal Jewellery Combo of Designer Drop Pendant Set with Adjustable Bangle Kada and Adjustable Solitaire Finger Ring for Girls and Women CO1000209', '1599', 'product/3w0ehv.png', 1),
(16, 'chandrika pearls gems & jewellers Sania Mirza Style Without Piercing Clip on Pressing Type Nose Ring for Women & Girls', '278', 'product/4rgp4b.jpg', 1),
(17, 'Joyalukkas 18k (750) Rose Gold and Solitaire Pendant for Girls', '38576', 'product/xgcs7m.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_productfeature`
--

CREATE TABLE `tbl_productfeature` (
  `id` int(11) NOT NULL,
  `productid` int(11) NOT NULL,
  `title` varchar(500) NOT NULL,
  `feature` varchar(500) NOT NULL,
  `status` smallint(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_productfeature`
--

INSERT INTO `tbl_productfeature` (`id`, `productid`, `title`, `feature`, `status`) VALUES
(3, 1, 'Stone', 'American Diamond', 1),
(4, 1, 'Item Width', '0.5 Centimeters', 1),
(5, 1, 'Item Length', '1.5 Centimeters', 1),
(6, 1, 'Material', 'Gold Plated', 1),
(7, 1, 'Metal', 'Copper', 1),
(8, 1, 'Model Number', 'YCTJNP-08AD-C-GL', 1),
(9, 1, 'Packaging', 'Elegant Jewellery Box/ Jewellery Pouch', 1),
(10, 1, 'Ring Size', 'Free Size', 1),
(11, 1, 'Warranty Type', 'Seller', 1),
(12, 14, 'Limited Time Offer', 'Nice', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_randomdata`
--

CREATE TABLE `tbl_randomdata` (
  `id` int(11) NOT NULL,
  `price` float NOT NULL,
  `result` int(11) NOT NULL,
  `color` varchar(100) NOT NULL,
  `timer` int(11) NOT NULL,
  `dayofweek` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_randomdata`
--

INSERT INTO `tbl_randomdata` (`id`, `price`, `result`, `color`, `timer`, `dayofweek`) VALUES
(1, 31069, 9, 'GREEN', 1, 'Day 1'),
(2, 31041, 1, 'GREEN', 2, 'Day 1'),
(3, 31026, 6, 'RED', 3, 'Day 1'),
(4, 30937, 7, 'GREEN', 4, 'Day 1'),
(5, 31024, 4, 'RED', 5, 'Day 1'),
(6, 30952, 2, 'RED', 6, 'Day 1'),
(7, 30863, 3, 'GREEN', 7, 'Day 1'),
(8, 30808, 8, 'RED', 8, 'Day 1'),
(9, 30795, 5, 'GREEN & VIOLET', 9, 'Day 1'),
(10, 30710, 0, 'RED & VIOLET', 10, 'Day 1'),
(11, 30706, 6, 'RED', 11, 'Day 1'),
(12, 30702, 2, 'RED', 12, 'Day 1'),
(13, 30769, 9, 'GREEN', 13, 'Day 1'),
(14, 30809, 9, 'GREEN', 14, 'Day 1'),
(15, 30782, 2, 'RED', 15, 'Day 1'),
(16, 30879, 9, 'GREEN', 16, 'Day 1'),
(17, 30810, 0, 'RED & VIOLET', 17, 'Day 1'),
(18, 30891, 1, 'GREEN', 18, 'Day 1'),
(19, 30973, 3, 'GREEN', 19, 'Day 1'),
(20, 30871, 1, 'GREEN', 20, 'Day 1'),
(21, 30846, 6, 'RED', 21, 'Day 1'),
(22, 30885, 5, 'GREEN & VIOLET', 22, 'Day 1'),
(23, 30951, 1, 'GREEN', 23, 'Day 1'),
(24, 31000, 0, 'RED & VIOLET', 24, 'Day 1'),
(25, 31011, 1, 'GREEN', 25, 'Day 1'),
(26, 30922, 2, 'RED', 26, 'Day 1'),
(27, 30967, 7, 'GREEN', 27, 'Day 1'),
(28, 30881, 1, 'GREEN', 28, 'Day 1'),
(29, 30857, 7, 'GREEN', 29, 'Day 1'),
(30, 30786, 6, 'RED', 30, 'Day 1'),
(31, 30761, 1, 'GREEN', 31, 'Day 1'),
(32, 30724, 4, 'RED', 32, 'Day 1'),
(33, 30778, 8, 'RED', 33, 'Day 1'),
(34, 30863, 3, 'GREEN', 34, 'Day 1'),
(35, 30940, 0, 'RED & VIOLET', 35, 'Day 1'),
(36, 30844, 4, 'RED', 36, 'Day 1'),
(37, 30803, 3, 'GREEN', 37, 'Day 1'),
(38, 30852, 2, 'RED', 38, 'Day 1'),
(39, 30945, 5, 'GREEN & VIOLET', 39, 'Day 1'),
(40, 30882, 2, 'RED', 40, 'Day 1'),
(41, 30853, 3, 'GREEN', 41, 'Day 1'),
(42, 30931, 1, 'GREEN', 42, 'Day 1'),
(43, 30901, 1, 'GREEN', 43, 'Day 1'),
(44, 30821, 1, 'GREEN', 44, 'Day 1'),
(45, 30784, 4, 'RED', 45, 'Day 1'),
(46, 30754, 4, 'RED', 46, 'Day 1'),
(47, 30816, 6, 'RED', 47, 'Day 1'),
(48, 30912, 2, 'RED', 48, 'Day 1'),
(49, 30836, 6, 'RED', 49, 'Day 1'),
(50, 30807, 7, 'GREEN', 50, 'Day 1'),
(51, 30800, 0, 'RED & VIOLET', 51, 'Day 1'),
(52, 30811, 1, 'GREEN', 52, 'Day 1'),
(53, 30859, 9, 'GREEN', 53, 'Day 1'),
(54, 30840, 0, 'RED & VIOLET', 54, 'Day 1'),
(55, 30934, 4, 'RED', 55, 'Day 1'),
(56, 30853, 3, 'GREEN', 56, 'Day 1'),
(57, 30802, 2, 'RED', 57, 'Day 1'),
(58, 30812, 2, 'RED', 58, 'Day 1'),
(59, 30845, 5, 'GREEN & VIOLET', 59, 'Day 1'),
(60, 30873, 3, 'GREEN', 60, 'Day 1'),
(61, 30799, 9, 'GREEN', 61, 'Day 1'),
(62, 30803, 3, 'GREEN', 62, 'Day 1'),
(63, 30858, 8, 'RED', 63, 'Day 1'),
(64, 30903, 3, 'GREEN', 64, 'Day 1'),
(65, 30872, 2, 'RED', 65, 'Day 1'),
(66, 30774, 4, 'RED', 66, 'Day 1'),
(67, 30856, 6, 'RED', 67, 'Day 1'),
(68, 30823, 3, 'GREEN', 68, 'Day 1'),
(69, 30826, 6, 'RED', 69, 'Day 1'),
(70, 30789, 9, 'GREEN', 70, 'Day 1'),
(71, 30748, 8, 'RED', 71, 'Day 1'),
(72, 30834, 4, 'RED', 72, 'Day 1'),
(73, 30785, 5, 'GREEN & VIOLET', 73, 'Day 1'),
(74, 30830, 0, 'RED & VIOLET', 74, 'Day 1'),
(75, 30792, 2, 'RED', 75, 'Day 1'),
(76, 30792, 2, 'RED', 76, 'Day 1'),
(77, 30874, 4, 'RED', 77, 'Day 1'),
(78, 30817, 7, 'GREEN', 78, 'Day 1'),
(79, 30776, 6, 'RED', 79, 'Day 1'),
(80, 30873, 3, 'GREEN', 80, 'Day 1'),
(81, 30905, 5, 'GREEN & VIOLET', 81, 'Day 1'),
(82, 31001, 1, 'GREEN', 82, 'Day 1'),
(83, 31032, 2, 'RED', 83, 'Day 1'),
(84, 31071, 1, 'GREEN', 84, 'Day 1'),
(85, 31067, 7, 'GREEN', 85, 'Day 1'),
(86, 31072, 2, 'RED', 86, 'Day 1'),
(87, 31157, 7, 'GREEN', 87, 'Day 1'),
(88, 31197, 7, 'GREEN', 88, 'Day 1'),
(89, 31200, 0, 'RED & VIOLET', 89, 'Day 1'),
(90, 31113, 3, 'GREEN', 90, 'Day 1'),
(91, 31112, 2, 'RED', 91, 'Day 1'),
(92, 31198, 8, 'RED', 92, 'Day 1'),
(93, 31130, 0, 'RED & VIOLET', 93, 'Day 1'),
(94, 31109, 9, 'GREEN', 94, 'Day 1'),
(95, 31142, 2, 'RED', 95, 'Day 1'),
(96, 31223, 3, 'GREEN', 96, 'Day 1'),
(97, 31270, 0, 'RED & VIOLET', 97, 'Day 1'),
(98, 31297, 7, 'GREEN', 98, 'Day 1'),
(99, 31208, 8, 'RED', 99, 'Day 1'),
(100, 31152, 2, 'RED', 100, 'Day 1'),
(101, 31232, 2, 'RED', 101, 'Day 1'),
(102, 31299, 9, 'GREEN', 102, 'Day 1'),
(103, 31388, 8, 'RED', 103, 'Day 1'),
(104, 31337, 7, 'GREEN', 104, 'Day 1'),
(105, 31360, 0, 'RED & VIOLET', 105, 'Day 1'),
(106, 31417, 7, 'GREEN', 106, 'Day 1'),
(107, 31394, 4, 'RED', 107, 'Day 1'),
(108, 31486, 6, 'RED', 108, 'Day 1'),
(109, 31450, 0, 'RED & VIOLET', 109, 'Day 1'),
(110, 31482, 2, 'RED', 110, 'Day 1'),
(111, 31512, 2, 'RED', 111, 'Day 1'),
(112, 31483, 3, 'GREEN', 112, 'Day 1'),
(113, 31532, 2, 'RED', 113, 'Day 1'),
(114, 31549, 9, 'GREEN', 114, 'Day 1'),
(115, 31458, 8, 'RED', 115, 'Day 1'),
(116, 31528, 8, 'RED', 116, 'Day 1'),
(117, 31612, 2, 'RED', 117, 'Day 1'),
(118, 31553, 3, 'GREEN', 118, 'Day 1'),
(119, 31553, 3, 'GREEN', 119, 'Day 1'),
(120, 31514, 4, 'RED', 120, 'Day 1'),
(121, 31551, 1, 'GREEN', 121, 'Day 1'),
(122, 31568, 8, 'RED', 122, 'Day 1'),
(123, 31577, 7, 'GREEN', 123, 'Day 1'),
(124, 31486, 6, 'RED', 124, 'Day 1'),
(125, 31498, 8, 'RED', 125, 'Day 1'),
(126, 31457, 7, 'GREEN', 126, 'Day 1'),
(127, 31394, 4, 'RED', 127, 'Day 1'),
(128, 31416, 6, 'RED', 128, 'Day 1'),
(129, 31426, 6, 'RED', 129, 'Day 1'),
(130, 31480, 0, 'RED & VIOLET', 130, 'Day 1'),
(131, 31424, 4, 'RED', 131, 'Day 1'),
(132, 31414, 4, 'RED', 132, 'Day 1'),
(133, 31398, 8, 'RED', 133, 'Day 1'),
(134, 31417, 7, 'GREEN', 134, 'Day 1'),
(135, 31443, 3, 'GREEN', 135, 'Day 1'),
(136, 31483, 3, 'GREEN', 136, 'Day 1'),
(137, 31551, 1, 'GREEN', 137, 'Day 1'),
(138, 31466, 6, 'RED', 138, 'Day 1'),
(139, 31371, 1, 'GREEN', 139, 'Day 1'),
(140, 31447, 7, 'GREEN', 140, 'Day 1'),
(141, 31449, 9, 'GREEN', 141, 'Day 1'),
(142, 31499, 9, 'GREEN', 142, 'Day 1'),
(143, 31574, 4, 'RED', 143, 'Day 1'),
(144, 31610, 0, 'RED & VIOLET', 144, 'Day 1'),
(145, 31616, 6, 'RED', 145, 'Day 1'),
(146, 31689, 9, 'GREEN', 146, 'Day 1'),
(147, 31630, 0, 'RED & VIOLET', 147, 'Day 1'),
(148, 31636, 6, 'RED', 148, 'Day 1'),
(149, 31630, 0, 'RED & VIOLET', 149, 'Day 1'),
(150, 31657, 7, 'GREEN', 150, 'Day 1'),
(151, 31745, 5, 'GREEN & VIOLET', 151, 'Day 1'),
(152, 31821, 1, 'GREEN', 152, 'Day 1'),
(153, 31763, 3, 'GREEN', 153, 'Day 1'),
(154, 31680, 0, 'RED & VIOLET', 154, 'Day 1'),
(155, 31668, 8, 'RED', 155, 'Day 1'),
(156, 31638, 8, 'RED', 156, 'Day 1'),
(157, 31641, 1, 'GREEN', 157, 'Day 1'),
(158, 31709, 9, 'GREEN', 158, 'Day 1'),
(159, 31701, 1, 'GREEN', 159, 'Day 1'),
(160, 31646, 6, 'RED', 160, 'Day 1'),
(161, 31647, 7, 'GREEN', 161, 'Day 1'),
(162, 31713, 3, 'GREEN', 162, 'Day 1'),
(163, 31770, 0, 'RED & VIOLET', 163, 'Day 1'),
(164, 31866, 6, 'RED', 164, 'Day 1'),
(165, 31812, 2, 'RED', 165, 'Day 1'),
(166, 31863, 3, 'GREEN', 166, 'Day 1'),
(167, 31802, 2, 'RED', 167, 'Day 1'),
(168, 31893, 3, 'GREEN', 168, 'Day 1'),
(169, 31970, 0, 'RED & VIOLET', 169, 'Day 1'),
(170, 31921, 1, 'GREEN', 170, 'Day 1'),
(171, 31983, 3, 'GREEN', 171, 'Day 1'),
(172, 31887, 7, 'GREEN', 172, 'Day 1'),
(173, 31841, 1, 'GREEN', 173, 'Day 1'),
(174, 31910, 0, 'RED & VIOLET', 174, 'Day 1'),
(175, 31817, 7, 'GREEN', 175, 'Day 1'),
(176, 31734, 4, 'RED', 176, 'Day 1'),
(177, 31749, 9, 'GREEN', 177, 'Day 1'),
(178, 31812, 2, 'RED', 178, 'Day 1'),
(179, 31827, 7, 'GREEN', 179, 'Day 1'),
(180, 31857, 7, 'GREEN', 180, 'Day 1'),
(181, 31769, 9, 'GREEN', 181, 'Day 1'),
(182, 31863, 3, 'GREEN', 182, 'Day 1'),
(183, 31794, 4, 'RED', 183, 'Day 1'),
(184, 31695, 5, 'GREEN & VIOLET', 184, 'Day 1'),
(185, 31766, 6, 'RED', 185, 'Day 1'),
(186, 31741, 1, 'GREEN', 186, 'Day 1'),
(187, 31676, 6, 'RED', 187, 'Day 1'),
(188, 31745, 5, 'GREEN & VIOLET', 188, 'Day 1'),
(189, 31838, 8, 'RED', 189, 'Day 1'),
(190, 31879, 9, 'GREEN', 190, 'Day 1'),
(191, 31935, 5, 'GREEN & VIOLET', 191, 'Day 1'),
(192, 31982, 2, 'RED', 192, 'Day 1'),
(193, 32034, 4, 'RED', 193, 'Day 1'),
(194, 31957, 7, 'GREEN', 194, 'Day 1'),
(195, 32053, 3, 'GREEN', 195, 'Day 1'),
(196, 32056, 6, 'RED', 196, 'Day 1'),
(197, 32087, 7, 'GREEN', 197, 'Day 1'),
(198, 31995, 5, 'GREEN & VIOLET', 198, 'Day 1'),
(199, 32008, 8, 'RED', 199, 'Day 1'),
(200, 31917, 7, 'GREEN', 200, 'Day 1'),
(201, 31835, 5, 'GREEN & VIOLET', 201, 'Day 1'),
(202, 31759, 9, 'GREEN', 202, 'Day 1'),
(203, 31817, 7, 'GREEN', 203, 'Day 1'),
(204, 31883, 3, 'GREEN', 204, 'Day 1'),
(205, 31972, 2, 'RED', 205, 'Day 1'),
(206, 31900, 0, 'RED & VIOLET', 206, 'Day 1'),
(207, 31891, 1, 'GREEN', 207, 'Day 1'),
(208, 31941, 1, 'GREEN', 208, 'Day 1'),
(209, 31927, 7, 'GREEN', 209, 'Day 1'),
(210, 31931, 1, 'GREEN', 210, 'Day 1'),
(211, 31969, 9, 'GREEN', 211, 'Day 1'),
(212, 31979, 9, 'GREEN', 212, 'Day 1'),
(213, 31919, 9, 'GREEN', 213, 'Day 1'),
(214, 31962, 2, 'RED', 214, 'Day 1'),
(215, 31897, 7, 'GREEN', 215, 'Day 1'),
(216, 31873, 3, 'GREEN', 216, 'Day 1'),
(217, 31863, 3, 'GREEN', 217, 'Day 1'),
(218, 31889, 9, 'GREEN', 218, 'Day 1'),
(219, 31800, 0, 'RED & VIOLET', 219, 'Day 1'),
(220, 31832, 2, 'RED', 220, 'Day 1'),
(221, 31793, 3, 'GREEN', 221, 'Day 1'),
(222, 31704, 4, 'RED', 222, 'Day 1'),
(223, 31623, 3, 'GREEN', 223, 'Day 1'),
(224, 31579, 9, 'GREEN', 224, 'Day 1'),
(225, 31546, 6, 'RED', 225, 'Day 1'),
(226, 31550, 0, 'RED & VIOLET', 226, 'Day 1'),
(227, 31586, 6, 'RED', 227, 'Day 1'),
(228, 31539, 9, 'GREEN', 228, 'Day 1'),
(229, 31550, 0, 'RED & VIOLET', 229, 'Day 1'),
(230, 31564, 4, 'RED', 230, 'Day 1'),
(231, 31476, 6, 'RED', 231, 'Day 1'),
(232, 31528, 8, 'RED', 232, 'Day 1'),
(233, 31556, 6, 'RED', 233, 'Day 1'),
(234, 31609, 9, 'GREEN', 234, 'Day 1'),
(235, 31644, 4, 'RED', 235, 'Day 1'),
(236, 31574, 4, 'RED', 236, 'Day 1'),
(237, 31566, 6, 'RED', 237, 'Day 1'),
(238, 31614, 4, 'RED', 238, 'Day 1'),
(239, 31578, 8, 'RED', 239, 'Day 1'),
(240, 31668, 8, 'RED', 240, 'Day 1'),
(241, 31736, 6, 'RED', 241, 'Day 1'),
(242, 31642, 2, 'RED', 242, 'Day 1'),
(243, 31634, 4, 'RED', 243, 'Day 1'),
(244, 31572, 2, 'RED', 244, 'Day 1'),
(245, 31586, 6, 'RED', 245, 'Day 1'),
(246, 31672, 2, 'RED', 246, 'Day 1'),
(247, 31676, 6, 'RED', 247, 'Day 1'),
(248, 31699, 9, 'GREEN', 248, 'Day 1'),
(249, 31604, 4, 'RED', 249, 'Day 1'),
(250, 31555, 5, 'GREEN & VIOLET', 250, 'Day 1'),
(251, 31487, 7, 'GREEN', 251, 'Day 1'),
(252, 31439, 9, 'GREEN', 252, 'Day 1'),
(253, 31423, 3, 'GREEN', 253, 'Day 1'),
(254, 31353, 3, 'GREEN', 254, 'Day 1'),
(255, 31261, 1, 'GREEN', 255, 'Day 1'),
(256, 31233, 3, 'GREEN', 256, 'Day 1'),
(257, 31225, 5, 'GREEN & VIOLET', 257, 'Day 1'),
(258, 31251, 1, 'GREEN', 258, 'Day 1'),
(259, 31204, 4, 'RED', 259, 'Day 1'),
(260, 31193, 3, 'GREEN', 260, 'Day 1'),
(261, 31216, 6, 'RED', 261, 'Day 1'),
(262, 31182, 2, 'RED', 262, 'Day 1'),
(263, 31237, 7, 'GREEN', 263, 'Day 1'),
(264, 31169, 9, 'GREEN', 264, 'Day 1'),
(265, 31188, 8, 'RED', 265, 'Day 1'),
(266, 31105, 5, 'GREEN & VIOLET', 266, 'Day 1'),
(267, 31091, 1, 'GREEN', 267, 'Day 1'),
(268, 31181, 1, 'GREEN', 268, 'Day 1'),
(269, 31090, 0, 'RED & VIOLET', 269, 'Day 1'),
(270, 31026, 6, 'RED', 270, 'Day 1'),
(271, 30940, 0, 'RED & VIOLET', 271, 'Day 1'),
(272, 31006, 6, 'RED', 272, 'Day 1'),
(273, 31026, 6, 'RED', 273, 'Day 1'),
(274, 31017, 7, 'GREEN', 274, 'Day 1'),
(275, 31004, 4, 'RED', 275, 'Day 1'),
(276, 30919, 9, 'GREEN', 276, 'Day 1'),
(277, 31013, 3, 'GREEN', 277, 'Day 1'),
(278, 30967, 7, 'GREEN', 278, 'Day 1'),
(279, 31067, 7, 'GREEN', 279, 'Day 1'),
(280, 31123, 3, 'GREEN', 280, 'Day 1'),
(281, 31145, 5, 'GREEN & VIOLET', 281, 'Day 1'),
(282, 31060, 0, 'RED & VIOLET', 282, 'Day 1'),
(283, 31113, 3, 'GREEN', 283, 'Day 1'),
(284, 31181, 1, 'GREEN', 284, 'Day 1'),
(285, 31217, 7, 'GREEN', 285, 'Day 1'),
(286, 31314, 4, 'RED', 286, 'Day 1'),
(287, 31350, 0, 'RED & VIOLET', 287, 'Day 1'),
(288, 31377, 7, 'GREEN', 288, 'Day 1'),
(289, 31409, 9, 'GREEN', 289, 'Day 1'),
(290, 31504, 4, 'RED', 290, 'Day 1'),
(291, 31467, 7, 'GREEN', 291, 'Day 1'),
(292, 31514, 4, 'RED', 292, 'Day 1'),
(293, 31445, 5, 'GREEN & VIOLET', 293, 'Day 1'),
(294, 31506, 6, 'RED', 294, 'Day 1'),
(295, 31415, 5, 'GREEN & VIOLET', 295, 'Day 1'),
(296, 31410, 0, 'RED & VIOLET', 296, 'Day 1'),
(297, 31445, 5, 'GREEN & VIOLET', 297, 'Day 1'),
(298, 31489, 9, 'GREEN', 298, 'Day 1'),
(299, 31575, 5, 'GREEN & VIOLET', 299, 'Day 1'),
(300, 31677, 7, 'GREEN', 300, 'Day 1'),
(301, 31724, 4, 'RED', 301, 'Day 1'),
(302, 31685, 5, 'GREEN & VIOLET', 302, 'Day 1'),
(303, 31610, 0, 'RED & VIOLET', 303, 'Day 1'),
(304, 31679, 9, 'GREEN', 304, 'Day 1'),
(305, 31609, 9, 'GREEN', 305, 'Day 1'),
(306, 31640, 0, 'RED & VIOLET', 306, 'Day 1'),
(307, 31611, 1, 'GREEN', 307, 'Day 1'),
(308, 31618, 8, 'RED', 308, 'Day 1'),
(309, 31684, 4, 'RED', 309, 'Day 1'),
(310, 31614, 4, 'RED', 310, 'Day 1'),
(311, 31587, 7, 'GREEN', 311, 'Day 1'),
(312, 31561, 1, 'GREEN', 312, 'Day 1'),
(313, 31574, 4, 'RED', 313, 'Day 1'),
(314, 31614, 4, 'RED', 314, 'Day 1'),
(315, 31637, 7, 'GREEN', 315, 'Day 1'),
(316, 31716, 6, 'RED', 316, 'Day 1'),
(317, 31662, 2, 'RED', 317, 'Day 1'),
(318, 31723, 3, 'GREEN', 318, 'Day 1'),
(319, 31754, 4, 'RED', 319, 'Day 1'),
(320, 31707, 7, 'GREEN', 320, 'Day 1'),
(321, 31615, 5, 'GREEN & VIOLET', 321, 'Day 1'),
(322, 31571, 1, 'GREEN', 322, 'Day 1'),
(323, 31638, 8, 'RED', 323, 'Day 1'),
(324, 31629, 9, 'GREEN', 324, 'Day 1'),
(325, 31608, 8, 'RED', 325, 'Day 1'),
(326, 31530, 0, 'RED & VIOLET', 326, 'Day 1'),
(327, 31481, 1, 'GREEN', 327, 'Day 1'),
(328, 31395, 5, 'GREEN & VIOLET', 328, 'Day 1'),
(329, 31477, 7, 'GREEN', 329, 'Day 1'),
(330, 31470, 0, 'RED & VIOLET', 330, 'Day 1'),
(331, 31427, 7, 'GREEN', 331, 'Day 1'),
(332, 31478, 8, 'RED', 332, 'Day 1'),
(333, 31440, 0, 'RED & VIOLET', 333, 'Day 1'),
(334, 31438, 8, 'RED', 334, 'Day 1'),
(335, 31400, 0, 'RED & VIOLET', 335, 'Day 1'),
(336, 31322, 2, 'RED', 336, 'Day 1'),
(337, 31386, 6, 'RED', 337, 'Day 1'),
(338, 31337, 7, 'GREEN', 338, 'Day 1'),
(339, 31284, 4, 'RED', 339, 'Day 1'),
(340, 31277, 7, 'GREEN', 340, 'Day 1'),
(341, 31206, 6, 'RED', 341, 'Day 1'),
(342, 31156, 6, 'RED', 342, 'Day 1'),
(343, 31204, 4, 'RED', 343, 'Day 1'),
(344, 31214, 4, 'RED', 344, 'Day 1'),
(345, 31283, 3, 'GREEN', 345, 'Day 1'),
(346, 31376, 6, 'RED', 346, 'Day 1'),
(347, 31473, 3, 'GREEN', 347, 'Day 1'),
(348, 31431, 1, 'GREEN', 348, 'Day 1'),
(349, 31398, 8, 'RED', 349, 'Day 1'),
(350, 31360, 0, 'RED & VIOLET', 350, 'Day 1'),
(351, 31312, 2, 'RED', 351, 'Day 1'),
(352, 31419, 9, 'GREEN', 352, 'Day 1'),
(353, 31467, 7, 'GREEN', 353, 'Day 1'),
(354, 31414, 4, 'RED', 354, 'Day 1'),
(355, 31350, 0, 'RED & VIOLET', 355, 'Day 1'),
(356, 31290, 0, 'RED & VIOLET', 356, 'Day 1'),
(357, 31362, 2, 'RED', 357, 'Day 1'),
(358, 31368, 8, 'RED', 358, 'Day 1'),
(359, 31398, 8, 'RED', 359, 'Day 1'),
(360, 31477, 7, 'GREEN', 360, 'Day 1'),
(361, 31429, 9, 'GREEN', 361, 'Day 1'),
(362, 31367, 7, 'GREEN', 362, 'Day 1'),
(363, 31379, 9, 'GREEN', 363, 'Day 1'),
(364, 31324, 4, 'RED', 364, 'Day 1'),
(365, 31346, 6, 'RED', 365, 'Day 1'),
(366, 31281, 1, 'GREEN', 366, 'Day 1'),
(367, 31344, 4, 'RED', 367, 'Day 1'),
(368, 31431, 1, 'GREEN', 368, 'Day 1'),
(369, 31467, 7, 'GREEN', 369, 'Day 1'),
(370, 31540, 0, 'RED & VIOLET', 370, 'Day 1'),
(371, 31567, 7, 'GREEN', 371, 'Day 1'),
(372, 31554, 4, 'RED', 372, 'Day 1'),
(373, 31600, 0, 'RED & VIOLET', 373, 'Day 1'),
(374, 31589, 9, 'GREEN', 374, 'Day 1'),
(375, 31644, 4, 'RED', 375, 'Day 1'),
(376, 31708, 8, 'RED', 376, 'Day 1'),
(377, 31682, 2, 'RED', 377, 'Day 1'),
(378, 31671, 1, 'GREEN', 378, 'Day 1'),
(379, 31575, 5, 'GREEN & VIOLET', 379, 'Day 1'),
(380, 31625, 5, 'GREEN & VIOLET', 380, 'Day 1'),
(381, 31536, 6, 'RED', 381, 'Day 1'),
(382, 31567, 7, 'GREEN', 382, 'Day 1'),
(383, 31541, 1, 'GREEN', 383, 'Day 1'),
(384, 31543, 3, 'GREEN', 384, 'Day 1'),
(385, 31498, 8, 'RED', 385, 'Day 1'),
(386, 31424, 4, 'RED', 386, 'Day 1'),
(387, 31331, 1, 'GREEN', 387, 'Day 1'),
(388, 31284, 4, 'RED', 388, 'Day 1'),
(389, 31183, 3, 'GREEN', 389, 'Day 1'),
(390, 31270, 0, 'RED & VIOLET', 390, 'Day 1'),
(391, 31185, 5, 'GREEN & VIOLET', 391, 'Day 1'),
(392, 31227, 7, 'GREEN', 392, 'Day 1'),
(393, 31171, 1, 'GREEN', 393, 'Day 1'),
(394, 31115, 5, 'GREEN & VIOLET', 394, 'Day 1'),
(395, 31177, 7, 'GREEN', 395, 'Day 1'),
(396, 31277, 7, 'GREEN', 396, 'Day 1'),
(397, 31185, 5, 'GREEN & VIOLET', 397, 'Day 1'),
(398, 31189, 9, 'GREEN', 398, 'Day 1'),
(399, 31137, 7, 'GREEN', 399, 'Day 1'),
(400, 31086, 6, 'RED', 400, 'Day 1'),
(401, 31176, 6, 'RED', 401, 'Day 1'),
(402, 31129, 9, 'GREEN', 402, 'Day 1'),
(403, 31136, 6, 'RED', 403, 'Day 1'),
(404, 31167, 7, 'GREEN', 404, 'Day 1'),
(405, 31156, 6, 'RED', 405, 'Day 1'),
(406, 31222, 2, 'RED', 406, 'Day 1'),
(407, 31262, 2, 'RED', 407, 'Day 1'),
(408, 31326, 6, 'RED', 408, 'Day 1'),
(409, 31388, 8, 'RED', 409, 'Day 1'),
(410, 31489, 9, 'GREEN', 410, 'Day 1'),
(411, 31576, 6, 'RED', 411, 'Day 1'),
(412, 31583, 3, 'GREEN', 412, 'Day 1'),
(413, 31633, 3, 'GREEN', 413, 'Day 1'),
(414, 31721, 1, 'GREEN', 414, 'Day 1'),
(415, 31757, 7, 'GREEN', 415, 'Day 1'),
(416, 31731, 1, 'GREEN', 416, 'Day 1'),
(417, 31721, 1, 'GREEN', 417, 'Day 1'),
(418, 31633, 3, 'GREEN', 418, 'Day 1'),
(419, 31640, 0, 'RED & VIOLET', 419, 'Day 1'),
(420, 31582, 2, 'RED', 420, 'Day 1'),
(421, 31508, 8, 'RED', 421, 'Day 1'),
(422, 31557, 7, 'GREEN', 422, 'Day 1'),
(423, 31514, 4, 'RED', 423, 'Day 1'),
(424, 31435, 5, 'GREEN & VIOLET', 424, 'Day 1'),
(425, 31345, 5, 'GREEN & VIOLET', 425, 'Day 1'),
(426, 31347, 7, 'GREEN', 426, 'Day 1'),
(427, 31316, 6, 'RED', 427, 'Day 1'),
(428, 31287, 7, 'GREEN', 428, 'Day 1'),
(429, 31194, 4, 'RED', 429, 'Day 1'),
(430, 31193, 3, 'GREEN', 430, 'Day 1'),
(431, 31178, 8, 'RED', 431, 'Day 1'),
(432, 31112, 2, 'RED', 432, 'Day 1'),
(433, 31129, 9, 'GREEN', 433, 'Day 1'),
(434, 31163, 3, 'GREEN', 434, 'Day 1'),
(435, 31220, 0, 'RED & VIOLET', 435, 'Day 1'),
(436, 31223, 3, 'GREEN', 436, 'Day 1'),
(437, 31208, 8, 'RED', 437, 'Day 1'),
(438, 31211, 1, 'GREEN', 438, 'Day 1'),
(439, 31160, 0, 'RED & VIOLET', 439, 'Day 1'),
(440, 31235, 5, 'GREEN & VIOLET', 440, 'Day 1'),
(441, 31173, 3, 'GREEN', 441, 'Day 1'),
(442, 31239, 9, 'GREEN', 442, 'Day 1'),
(443, 31146, 6, 'RED', 443, 'Day 1'),
(444, 31117, 7, 'GREEN', 444, 'Day 1'),
(445, 31116, 6, 'RED', 445, 'Day 1'),
(446, 31133, 3, 'GREEN', 446, 'Day 1'),
(447, 31131, 1, 'GREEN', 447, 'Day 1'),
(448, 31169, 9, 'GREEN', 448, 'Day 1'),
(449, 31129, 9, 'GREEN', 449, 'Day 1'),
(450, 31053, 3, 'GREEN', 450, 'Day 1'),
(451, 31122, 2, 'RED', 451, 'Day 1'),
(452, 31198, 8, 'RED', 452, 'Day 1'),
(453, 31175, 5, 'GREEN & VIOLET', 453, 'Day 1'),
(454, 31236, 6, 'RED', 454, 'Day 1'),
(455, 31301, 1, 'GREEN', 455, 'Day 1'),
(456, 31293, 3, 'GREEN', 456, 'Day 1'),
(457, 31269, 9, 'GREEN', 457, 'Day 1'),
(458, 31185, 5, 'GREEN & VIOLET', 458, 'Day 1'),
(459, 31121, 1, 'GREEN', 459, 'Day 1'),
(460, 31108, 8, 'RED', 460, 'Day 1'),
(461, 31127, 7, 'GREEN', 461, 'Day 1'),
(462, 31119, 9, 'GREEN', 462, 'Day 1'),
(463, 31071, 1, 'GREEN', 463, 'Day 1'),
(464, 31131, 1, 'GREEN', 464, 'Day 1'),
(465, 31223, 3, 'GREEN', 465, 'Day 1'),
(466, 31280, 0, 'RED & VIOLET', 466, 'Day 1'),
(467, 31229, 9, 'GREEN', 467, 'Day 1'),
(468, 31261, 1, 'GREEN', 468, 'Day 1'),
(469, 31203, 3, 'GREEN', 469, 'Day 1'),
(470, 31185, 5, 'GREEN & VIOLET', 470, 'Day 1'),
(471, 31164, 4, 'RED', 471, 'Day 1'),
(472, 31254, 4, 'RED', 472, 'Day 1'),
(473, 31274, 4, 'RED', 473, 'Day 1'),
(474, 31211, 1, 'GREEN', 474, 'Day 1'),
(475, 31144, 4, 'RED', 475, 'Day 1'),
(476, 31123, 3, 'GREEN', 476, 'Day 1'),
(477, 31079, 9, 'GREEN', 477, 'Day 1'),
(478, 31162, 2, 'RED', 478, 'Day 1'),
(479, 31219, 9, 'GREEN', 479, 'Day 1'),
(480, 29691, 1, 'GREEN', 480, 'Day 1');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_recharge`
--

CREATE TABLE `tbl_recharge` (
  `id` int(11) NOT NULL,
  `userid` varchar(255) NOT NULL,
  `amount` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `createdate` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `txn` varchar(255) NOT NULL,
  `paymentMethod` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_result`
--

CREATE TABLE `tbl_result` (
  `id` int(11) NOT NULL,
  `periodid` varchar(300) NOT NULL,
  `price` float NOT NULL,
  `randomprice` float NOT NULL,
  `result` int(11) NOT NULL,
  `randomresult` int(11) NOT NULL,
  `color` varchar(100) NOT NULL,
  `randomcolor` varchar(100) NOT NULL,
  `resulttype` varchar(50) NOT NULL,
  `tabtype` varchar(50) NOT NULL,
  `createdate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_reward`
--

CREATE TABLE `tbl_reward` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `amount` float NOT NULL,
  `createdate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tempwinner`
--

CREATE TABLE `tbl_tempwinner` (
  `id` int(11) NOT NULL,
  `periodid` varchar(300) NOT NULL,
  `number` int(11) NOT NULL,
  `color` varchar(100) NOT NULL,
  `total` float NOT NULL,
  `type` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_test`
--

CREATE TABLE `tbl_test` (
  `id` int(11) NOT NULL,
  `test` varchar(200) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL,
  `mobile` varchar(500) NOT NULL,
  `email` varchar(500) NOT NULL,
  `password` varchar(300) NOT NULL,
  `code` varchar(255) NOT NULL,
  `owncode` varchar(255) NOT NULL,
  `privacy` varchar(50) NOT NULL,
  `status` smallint(6) NOT NULL,
  `createdate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `mobile`, `email`, `password`, `code`, `owncode`, `privacy`, `status`, `createdate`) VALUES
(1234560, '1234567890', 'user@site.com', '25d55ad283aa400af464c76d713c07ad', '121398', '129846', 'on', 1, '2023-05-13 18:25:10');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_userresult`
--

CREATE TABLE `tbl_userresult` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `periodid` varchar(300) NOT NULL,
  `type` varchar(100) NOT NULL,
  `value` varchar(100) NOT NULL,
  `amount` float NOT NULL,
  `openprice` float NOT NULL,
  `tab` varchar(50) NOT NULL,
  `paidamount` float NOT NULL,
  `fee` float NOT NULL,
  `status` varchar(50) NOT NULL,
  `createdate` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_wallet`
--

CREATE TABLE `tbl_wallet` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `amount` varchar(500) NOT NULL,
  `envelopestatus` smallint(6) NOT NULL,
  `createdate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_walletsummery`
--

CREATE TABLE `tbl_walletsummery` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `orderid` int(11) NOT NULL,
  `amount` float NOT NULL,
  `type` varchar(50) NOT NULL,
  `actiontype` varchar(50) NOT NULL,
  `createdate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_withdrawal`
--

CREATE TABLE `tbl_withdrawal` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `amount` float NOT NULL,
  `payout` varchar(50) NOT NULL,
  `payid` int(11) NOT NULL,
  `status` smallint(6) NOT NULL,
  `createdate` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wager_amount`
--

CREATE TABLE `wager_amount` (
  `id` int(11) NOT NULL,
  `tot_deposit` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `wager_amt` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `uid` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `date` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wallet`
--

CREATE TABLE `wallet` (
  `id` int(11) NOT NULL,
  `uid` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `amount` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_bank`
--
ALTER TABLE `admin_bank`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `child_menu`
--
ALTER TABLE `child_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `content`
--
ALTER TABLE `content`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deposits`
--
ALTER TABLE `deposits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `site_setting`
--
ALTER TABLE `site_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `task`
--
ALTER TABLE `task`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_bankdetail`
--
ALTER TABLE `tbl_bankdetail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_betting`
--
ALTER TABLE `tbl_betting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_bonus`
--
ALTER TABLE `tbl_bonus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_bonussummery`
--
ALTER TABLE `tbl_bonussummery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_bonuswithdrawal`
--
ALTER TABLE `tbl_bonuswithdrawal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_envelop`
--
ALTER TABLE `tbl_envelop`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_gameid`
--
ALTER TABLE `tbl_gameid`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_gamesettings`
--
ALTER TABLE `tbl_gamesettings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_manualresult`
--
ALTER TABLE `tbl_manualresult`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_manualresultswitch`
--
ALTER TABLE `tbl_manualresultswitch`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_paymentsetting`
--
ALTER TABLE `tbl_paymentsetting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_productfeature`
--
ALTER TABLE `tbl_productfeature`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_randomdata`
--
ALTER TABLE `tbl_randomdata`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_recharge`
--
ALTER TABLE `tbl_recharge`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_result`
--
ALTER TABLE `tbl_result`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_reward`
--
ALTER TABLE `tbl_reward`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_tempwinner`
--
ALTER TABLE `tbl_tempwinner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_test`
--
ALTER TABLE `tbl_test`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_userresult`
--
ALTER TABLE `tbl_userresult`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_wallet`
--
ALTER TABLE `tbl_wallet`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_walletsummery`
--
ALTER TABLE `tbl_walletsummery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_withdrawal`
--
ALTER TABLE `tbl_withdrawal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wager_amount`
--
ALTER TABLE `wager_amount`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wallet`
--
ALTER TABLE `wallet`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uid` (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_bank`
--
ALTER TABLE `admin_bank`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `child_menu`
--
ALTER TABLE `child_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `deposits`
--
ALTER TABLE `deposits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `site_setting`
--
ALTER TABLE `site_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `task`
--
ALTER TABLE `task`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_bankdetail`
--
ALTER TABLE `tbl_bankdetail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_betting`
--
ALTER TABLE `tbl_betting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_bonus`
--
ALTER TABLE `tbl_bonus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_bonussummery`
--
ALTER TABLE `tbl_bonussummery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_bonuswithdrawal`
--
ALTER TABLE `tbl_bonuswithdrawal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_envelop`
--
ALTER TABLE `tbl_envelop`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_gameid`
--
ALTER TABLE `tbl_gameid`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_gamesettings`
--
ALTER TABLE `tbl_gamesettings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_manualresult`
--
ALTER TABLE `tbl_manualresult`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_manualresultswitch`
--
ALTER TABLE `tbl_manualresultswitch`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_paymentsetting`
--
ALTER TABLE `tbl_paymentsetting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tbl_productfeature`
--
ALTER TABLE `tbl_productfeature`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_randomdata`
--
ALTER TABLE `tbl_randomdata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=481;

--
-- AUTO_INCREMENT for table `tbl_recharge`
--
ALTER TABLE `tbl_recharge`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_result`
--
ALTER TABLE `tbl_result`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_reward`
--
ALTER TABLE `tbl_reward`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_tempwinner`
--
ALTER TABLE `tbl_tempwinner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_test`
--
ALTER TABLE `tbl_test`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1234561;

--
-- AUTO_INCREMENT for table `tbl_userresult`
--
ALTER TABLE `tbl_userresult`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_wallet`
--
ALTER TABLE `tbl_wallet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_walletsummery`
--
ALTER TABLE `tbl_walletsummery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_withdrawal`
--
ALTER TABLE `tbl_withdrawal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wager_amount`
--
ALTER TABLE `wager_amount`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wallet`
--
ALTER TABLE `wallet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
