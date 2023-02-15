-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 18, 2022 at 03:27 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `literature_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `book_id` varchar(10) NOT NULL,
  `b_name` varchar(30) NOT NULL,
  `b_lang` varchar(20) NOT NULL,
  `author` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Books In Literature service';

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`book_id`, `b_name`, `b_lang`, `author`) VALUES
('', '', 'English', ''),
('BBLC000101', 'Necessity of Prayer Ibl', 'English ', 'BLC'),
('BBLC000201', 'Power Thru Prayer Ibl', 'English ', 'BLC'),
('BBLC000301', 'Weighed in the Balances Ibl', 'English ', 'BLC'),
('BBLC000401', 'Wondrous Love Dl Moody Ibl', 'English ', 'BLC'),
('BBSI000101', 'Ministry of Intercession', 'English ', 'BSI'),
('BBSI001001', 'Eng Wealth & Prosperity', 'English', 'BSI'),
('BBYM003003', ' Bless Song Book', 'Tamil ', 'BYM'),
('BCLS000103', 'Eazhu Vaarthaigal', 'Tamil', 'CLS'),
('BCLS000203', 'Ezhu Vaarthaigal@100', 'Tamil', 'CLS'),
('BCLS000303', 'En Suya Sarithai Cls', 'Tamil', 'CLS'),
('BCLS000403', 'Kirubai  Piravagam', 'Tamil', 'CLS'),
('BDJP000101', 'Thru the Desert', 'English ', 'D Jason Prince'),
('BDJP000103', 'Thru the Desert', 'Tamil ', 'D Jason Prince'),
('BDJP000201', 'Know to Say No', 'English ', 'D Jason Prince'),
('BDJP000203', 'Know to Say', 'Tamil ', 'D Jason Prince'),
('BDJP000301', 'Heart  Cry to God', 'English ', 'D Jason Prince'),
('BDJP000303', 'Heart Cry of God', 'Tamil ', 'D Jason Prince'),
('BDJP000401', 'Watchout', 'English ', 'D Jason Prince'),
('BDJP000403', 'Watchout', 'Tamil ', 'D Jason Prince'),
('BDJP000501', 'Control F', 'English', 'D Jason Prince'),
('BDJP000503', 'Control F', 'Tamil', 'D Jason Prince'),
('BEBC000103', ' Vananthira Pengal', 'Tamil ', 'Elizabeth'),
('BELE000101', ' Youth Unbeaten', 'English ', 'EL Ephrim'),
('BELE000103', ' Youth Unbeaten', 'Tamil ', 'EL Ephrim'),
('BELE000203', 'Mannil Vantha Manickam', 'Tamil ', 'EL Ephrim'),
('BELE000301', 'Life Anew', 'English', 'EL Ephrim'),
('BELE000403', 'Yaarukku Theriyum', 'Tamil', 'EL Ephrim'),
('BELS000103', 'C.T.Stud', 'Tamil ', 'ELS'),
('BELS000201', 'The Weapon of Prayer (Els)', 'English', 'ELS'),
('BELS000303', ' The God Who Answers in Fire', 'Tamil ', 'ELS'),
('BELS000403', 'An Introduction to NT', 'Tamil', 'ELS'),
('BELS000520', 'Gladys Aylward', 'Tamil', 'ELS'),
('BELS000603', 'Tamil Concordance  P/B', 'Tamil ', 'ELS'),
('BELS000703', 'Tamil Ecclesiastes  Comme', 'Tamil ', 'ELS'),
('BELS000803', ' Tamil Expository Out Pa', 'Tamil ', 'ELS'),
('BELS000903', 'Tamil Faithful Is He Tha', 'Tamil ', 'ELS'),
('BELS001003', ' Finny\'s Addresses', 'Tamil ', 'ELS'),
('BELS001103', 'Tamil the Profound Truth Els', 'Tamil ', 'ELS'),
('BELS001203', ' I Dare to Call Him Father', 'Tamil ', 'ELS'),
('BELS001303', 'Jesus the High Priest', 'Tamil ', 'ELS'),
('BELS001403', 'Tamil Twuelve Disciples', 'Tamil ', 'ELS'),
('BELS001503', 'What Happen When Womens Pray', 'Tamil ', 'ELS'),
('BELS001603', ' Kaba to Kalvari', 'Tamil', 'ELS'),
('BELS001703', 'Life of Faith (Els)', 'Tamil', 'ELS'),
('BELS001801', ' English Vapour of Life', 'English', 'ELS'),
('BELS001903', 'Outlines on the Pa', 'Tamil', 'ELS'),
('BELS002003', 'Prayer Warrior', 'Tamil', 'ELS'),
('BELS002103', 'Pushpammal', 'Tamil', 'ELS'),
('BELS002203', 'Sarojavin Thenive', 'Tamil', 'ELS'),
('BELS002303', 'Secret of Happiness', 'Tamil', 'ELS'),
('BELS002403', 'Spurgeon Addresses', 'Tamil', 'ELS'),
('BELS002503', 'Samuel Morris', 'Tamil', 'ELS'),
('BELS002603', 'Thelithan Virunthu Vol Iii', 'Tamil', 'ELS'),
('BELS002703', 'Ida Scudder', 'Tamil ', 'ELS'),
('BELS002803', 'Amos', 'Tamil', 'ELS'),
('BELS002903', 'God,S Tribesman', 'Tamil ', 'ELS'),
('BELS003001', '625 Usable Illustr', 'English', 'ELS'),
('BELS003103', 'Bible and Science', 'Tamil ', 'ELS'),
('BELS003201', 'Beyond the Veil', 'English', 'ELS'),
('BELS003301', 'Christian Descipli', 'English', 'ELS'),
('BELS003303', 'Tabernacle Studies', 'Tamil', 'ELS'),
('BELS003403', 'an Introduction', 'Tamil', 'ELS'),
('BELS003503', 'Bible Quik', 'Tamil', 'ELS'),
('BELS003603', 'Tamil Freedom From the Seven D', 'Tamil', 'ELS'),
('BELS003701', 'Inner  Chamber', 'English', 'ELS'),
('BELS003803', 'Sadhu Sunder Singh Els', 'Tamil ', 'ELS'),
('BELS003903', ' Normal Christian Life', 'Tamil ', 'ELS'),
('BELS004001', 'Pilgrims Progress(Els)', 'English', 'ELS'),
('BELS004103', 'Power Thru Prayer', 'Tamil ', 'ELS'),
('BELS004203', ' Jumbulingam', 'Tamil ', 'ELS'),
('BELS004301', ' Samuel Morries(Els)', 'English ', 'ELS'),
('BELS004401', 'The Power of the B(Els)', 'English', 'ELS'),
('BELS004503', 'Servants of the Cross', 'Tamil ', 'ELS'),
('BELS004601', ' Yoneko', 'English ', 'ELS'),
('BELS004703', 'Tamil the Book of Reveal', 'Tamil ', 'ELS'),
('BELS004801', 'Streams in the Des Els', 'English', 'ELS'),
('BELS004903', 'Tamil Thelithen Virunthu Vol I', 'Tamil ', 'ELS'),
('BELS005001', 'Prayer Asking and', 'English', 'ELS'),
('BELS005103', 'Amy Carmicheal', 'Tamil ', 'ELS'),
('BELS005203', 'Tamil Thelithen Virunthu Vol I', 'Tamil ', 'ELS'),
('BELS005303', ' Tamil William Carey Els', ' Tamil ', 'ELS'),
('BELS005403', 'Vanya', 'Tamil ', 'ELS'),
('BELS005503', ' Tortured for Christ', ' Tamil ', 'ELS'),
('BELS005603', 'Nahum Malachi', 'Tamil', 'ELS'),
('BELS005701', 'English Fearfully and Wonderfu', 'English', 'ELS'),
('BELS005801', 'English Life of Faith', 'English', 'ELS'),
('BELS005903', 'English Mountaiu Trailways for', 'English', 'ELS'),
('BELS006001', 'English Power Through Prayer (', 'English', 'ELS'),
('BELS006101', 'The Torn Veil', 'English', 'ELS'),
('BELS006203', ' Tamil Calvary Road Els', 'Tamil', 'ELS'),
('BELS006303', ' Tamil D.L.Moody.S Addresses', 'Tamil', 'ELS'),
('BELS006403', 'Tamil Ismael My Brothers', 'Tamil', 'ELS'),
('BELS006503', ' Tamil Jesus Is Coming Ag (Els', 'Tamil', 'ELS'),
('BELS006603', ' Tamil Lectures to My Stu', 'Tamil', 'ELS'),
('BELS006703', ' Tamil One Hundred Bible', 'Tamil', 'ELS'),
('BELS006803', ' Tamil One Hundred Bible Vol I', 'Tamil', 'ELS'),
('BELS006903', ' Passion for Soul', 'Tamil ', 'ELS'),
('BELS007003', ' Pilgrim\'s Progress', ' Tamil ', 'ELS'),
('BELS007103', ' Praying John Hyde', ' Tamil ', 'ELS'),
('BELS007203', ' Tamil Queen of the Dark Chamb', 'Tamil', 'ELS'),
('BELS007303', ' Tamil Sermon Outlines', 'Tamil', 'ELS'),
('BELS007503', ' Sex Love Marriage', ' Tamil ', 'ELS'),
('BELS007603', ' Tamil the Christ Centere', ' Tamil ', 'ELS'),
('BELS007703', ' Tamil the Life of Paul', ' Tamil ', 'ELS'),
('BELS007803', ' Tamil Thelithen Virunthu Vol ', ' Tamil ', 'ELS'),
('BEMB000103', 'En Jebam Eppadi?', 'Tamil ', 'EM Bounds'),
('BGCR000101', 'Good Preaching', 'English ', 'Glenn Conjurske'),
('BGCR000103', ' Good Preaching', 'Tamil ', 'Glenn Conjurske'),
('BHAV00101 ', 'Breaking Out Without Breaking ', ' English ', 'Hannah Alex'),
('BHBN000103', 'Broos Olson Life Hb', 'Tamil ', 'HBN'),
('BHBN000703', 'Martin Luther Hb', 'Tamil ', 'HBN'),
('BHBN001603', 'Ullagam Pootrum Uthamargal', 'Tamil ', 'HBN'),
('BIBL000403', 'Wondrous Love D L Moody Ibl', 'Tamil ', 'IBL'),
('BIBL000501', 'Built to Last Ibl', 'English ', 'IBL'),
('BIBL000601', 'Holiness J.C Ryle', 'English  ', 'IBL'),
('BIBL000701', 'How to Work for Christ', 'English ', 'IBL'),
('BIBL000801', 'Methods of Christian Work', 'English ', 'IBL'),
('BIBL000901', 'On Knowing and Lake with God', 'English ', 'IBL'),
('BIBL001001', 'Preaching and Teaching the Wor', 'English ', 'IBL'),
('BIBL001101', 'Real Salvation Ibl', 'English ', 'IBL'),
('BIBL001201', ' U Can Know God,S Plan for  Yo', 'English', 'IBL'),
('BKLC000103', 'Tamil Victorious Christian', 'Tamil', 'Cardon Linsde'),
('BLPC000101', 'Showers of Blessing', 'English ', 'A Lionel'),
('BLPC000103', 'Showers of Blessing', 'Tamil', 'A Lionel'),
('BLPC000201', 'Shake Hands', 'English ', 'A Lionel'),
('BLPC000203', 'Shake Hands', 'Tamil ', 'A Lionel'),
('BLPC000303', 'Unnathar Pani', 'Tamil ', 'A Lionel'),
('BLRC000101', 'Why Revival Tarries', 'English ', 'Leonard Ravenhill'),
('BLRC000103', 'Why Revival Tarries', 'Tamil ', 'Leonard Ravenhill'),
('BLRC000201', 'Revival God\'s Way', 'English ', 'Leonard Ravenhill'),
('BLRC000301', 'English Meat for Man', 'English', 'Leonard Ravenhill'),
('BLSV000101', 'Why Not Wait (E)', 'English ', 'Lilian Stanley'),
('BLSV000103', 'Why Not Wait', 'Tamil', 'Lilian Stanley'),
('BLSV000201', 'Better Christian', 'English ', 'Lilian Stanley'),
('BLSV000203', 'Better Christian', 'Tamil ', 'Lilian Stanley'),
('BLSV000301', 'Don\'t Kill Religion', 'English ', 'Lilian Stanley'),
('BLSV000303', 'Don\'t Kill Religion', 'Tamil', 'Lilian Stanley'),
('BLSV000304', 'Don\'t Kill Religion', 'Telugu', 'Lilian Stanley'),
('BLSV000401', 'Girls & Guys', 'English ', 'Lilian Stanley'),
('BLSV000403', 'Girls & Guys', 'Tamil', 'Lilian Stanley'),
('BLSV000501', 'God Chaser', 'English ', 'Lilian Stanley'),
('BLSV000503', 'God Chaser', 'Tamil ', 'Lilian Stanley'),
('BLSV000601', 'Good Bye Satan', 'English ', 'Lilian Stanley'),
('BLSV000602', 'Good Bye Satan', 'Hindi', 'Lilian Stanley'),
('BLSV000603', 'Good Bye Satan', 'Tamil', 'Lilian Stanley'),
('BLSV000604', 'Good Bye Satan', 'Telugu', 'Lilian Stanley'),
('BLSV000701', 'Her Decisions', 'English ', 'Lilian Stanley'),
('BLSV000702', 'Her Decision', 'Hindi ', 'Lilian Stanley'),
('BLSV000703', 'Her Decision', 'Tamil ', 'Lilian Stanley'),
('BLSV000708', 'Her Decision', 'Oriyya ', 'Lilian Stanley'),
('BLSV000801', 'Ideal Women', 'English ', 'Lilian Stanley'),
('BLSV000803', 'Ideal Women', 'Tamil ', 'Lilian Stanley'),
('BLSV000804', 'Ideal Women', 'Telugu ', 'Lilian Stanley'),
('BLSV000901', 'In Search Of  Wisdom', 'English', 'Lilian Stanley'),
('BLSV000903', 'In Search Of  Wisdom', 'Tamil', 'Lilian Stanley'),
('BLSV001001', 'Jolly Family', 'English ', 'Lilian Stanley'),
('BLSV001003', 'Jolly Family', 'Tamil ', 'Lilian Stanley'),
('BLSV001004', 'Jolly Family', 'Telugu', 'Lilian Stanley'),
('BLSV001101', 'Moon on the Earth', 'English ', 'Lilian Stanley'),
('BLSV001103', 'Moon on the Earth', 'Tamil ', 'Lilian Stanley'),
('BLSV001105', 'Moon on the Earth', 'Malayalam ', 'Lilian Stanley'),
('BLSV001108', 'Moon on Earth', 'Oriya ', 'Lilian Stanley'),
('BLSV001201', 'Nearer My God', 'English ', 'Lilian Stanley'),
('BLSV001203', 'Nearer My God', 'Tamil ', 'Lilian Stanley'),
('BLSV001301', 'Sweet Sixteen', 'English ', 'Lilian Stanley'),
('BLSV001303', 'Sweet Sixteen', 'Tamil ', 'Lilian Stanley'),
('BLSV001305', 'Sweet Sixteen', 'Malayalam ', 'Lilian Stanley'),
('BLSV001401', '12 Happy Months', 'English ', 'Lilian Stanley'),
('BLSV001403', '12 Happy Months', 'Tamil ', 'Lilian Stanley'),
('BLSV001405', '12 Happy Months', 'Malayalam ', 'Lilian Stanley'),
('BLSV001501', ' Useful Vessel', 'English ', 'Lilian Stanley'),
('BLSV001503', ' Useful Vessel', 'Tamil ', 'Lilian Stanley'),
('BLSV001601', ' Wings for Women', 'English ', 'Lilian Stanley'),
('BLSV001603', ' Wings for Women', 'Tamil ', 'Lilian Stanley'),
('BLSV001701', ' World of Youth', 'English ', 'Lilian Stanley'),
('BLSV001703', ' World of Youth', 'Tamil ', 'Lilian Stanley'),
('BLSV001801', 'Where Are the Comforters', 'English ', 'Lilian Stanley'),
('BLSV001803', 'Where Are the Comforters', 'Tamil ', 'Lilian Stanley'),
('BLSV001901', 'the Dream', 'English ', 'Lilian Stanley'),
('BLSV001903', 'the Dream', 'Tamil', 'Lilian Stanley'),
('BLSV002001', '100 Little Stories for Little ', 'English', 'Lilian Stanley'),
('BLSV002003', '100 Little Stories for Little ', 'Tamil', 'Lilian Stanley'),
('BLSV002101', '100 Little Stories for Littl V', 'English', 'Lilian Stanley'),
('BLSV002103', '100 Little Stories for Littl V', 'Tamil', 'Lilian Stanley'),
('BLSV002201', '100 Little Stories for Little ', 'English', 'Lilian Stanley'),
('BLSV002203', '100 Little Stories for Lit Vol', 'Tamil', 'Lilian Stanley'),
('BLSV002301', '100 Little Storis for Litt Vol', 'English', 'Lilian Stanley'),
('BLSV002303', '100 Little Stories for Lit Vol', 'Tamil ', 'Lilian Stanley'),
('BLSV002401', 'White As Snow', 'English ', 'Lilian Stanley'),
('BLSV002403', 'White As Snow', 'Tamil ', 'Lilian Stanley'),
('BLSV002501', 'Daily Decoration', 'English ', 'Lilian Stanley'),
('BLSV002503', 'Daily Decoration', 'Tamil ', 'Lilian Stanley'),
('BLSV002601', 'Awake Deborah', 'English ', 'Lilian Stanley'),
('BLSV002603', 'Awake Deborah', 'Tamil ', 'Lilian Stanley'),
('BMEB000103', 'Mark of Missionary', 'Tamil ', 'MEB'),
('BMEB000201', 'Dalit Consciousness&Christian ', ' English ', 'MEB'),
('BMEB000301', 'Mark of Missionary', ' English ', 'MEB'),
('BMEB000403', 'Dalit Consciousness &Christian', ' Tamil', 'MEB'),
('BMEB000503', 'Indian Christian History', ' Tamil ', 'MEB'),
('BMEB000603', 'Understanding Hindusim', ' Tamil ', 'MEB'),
('BMSC000103', 'Tholiye Unakaga', 'Tamil ', 'Minvelli Sapphire'),
('BOMS000101', 'Bible Naves Topical Bible Hb R', 'English', 'OMS'),
('BOMS000203', 'Grace Awakened Ledadership', 'Tamil ', 'OMS'),
('BOMS000303', 'Leader in the Making', 'Tamil', 'OMS'),
('BOMS000401', 'Bible Prophets Dictionary', 'English ', 'OMS'),
('BOMS000503', 'Which Way Lord', 'Tamil ', 'OMS'),
('BOMS000701', 'bible Faith in Action Study L/', 'English', 'OMS'),
('BOMS000803', 'Peace with God', 'Tamil ', 'OMS'),
('BOMS000903', 'Through Gates of Splendor', 'Tamil  ', 'OMS'),
('BOMS001103', 'What the Bible Says to Ministe', 'Tamil ', 'OMS'),
('BOMS001301', 'Discipleship', 'English ', 'OMS'),
('BOMS001401', 'Ablaze for God', 'English ', 'OMS'),
('BOMS001403', 'Ablaze for God', 'Tamil', 'OMS'),
('BOMS001901', 'Holy Spirit Our Counseller', 'English ', 'OMS'),
('BOMS002201', 'Mighty Prevailing Prayer', 'English ', 'OMS'),
('BOMS002401', 'Normal Christian Life', 'English ', 'OMS'),
('BOMS002701', 'Power Through Prayer(Om)', 'English ', 'OMS'),
('BOMS002901', 'Prayer and Praying', 'English ', 'OMS'),
('BOMS003101', 'Purpose Driven Church', 'English ', 'OMS'),
('BOMS003701', 'Weapon of Prayer the(Om)', 'English ', 'OMS'),
('BOMS004403', 'Wedlock Or Deadlock (Om)', 'Tamil  ', 'OMS'),
('BOMS004503', 'Whatever You Do Will Prosper', 'Tamil ', 'OMS'),
('BOMS004601', 'Bible Nelson\'s New Illustrated', 'English ', 'OMS'),
('BOMS004701', 'David Livinstone(Els)', 'English ', 'OMS'),
('BOMS004803', ' Bakth Singh', 'Tamil ', 'OMS'),
('book_id', 'b_name', 'b_lang', 'author'),
('BPIP000103', 'Palani Melukuvarthi', 'Tamil', 'Palani'),
('BRSV000101', 'Apples of Gold', 'English ', 'R Stanley'),
('BRSV000103', 'Apples of Gold', 'Tamil ', 'R Stanley'),
('BRSV000105', 'Apples of Gold', 'Malayalam ', 'R Stanley'),
('BRSV000108', 'Apples of Gold', 'Oriyya ', 'R Stanley'),
('BRSV000111', 'Apples of Gold', 'Bengali ', 'R Stanley'),
('BRSV000201', 'Balanced Christian', 'English ', 'R Stanley'),
('BRSV000203', 'Balanced Christian', 'Tamil ', 'R Stanley'),
('BRSV000212', 'Balanced Christian', 'Nepali ', 'R Stanley'),
('BRSV000301', 'Blessed Are the Obedience', 'English ', 'R Stanley'),
('BRSV000303', 'Blessed Are the Obedient', 'Tamil ', 'R Stanley'),
('BRSV000401', 'Dare to Be Different', 'English', 'R Stanley'),
('BRSV000402', 'Dare to Be Different', 'Hindi ', 'R Stanley'),
('BRSV000403', 'Dare to Be Different', 'Tamil ', 'R Stanley'),
('BRSV000404', 'Dare to Be Different', 'Telugu', 'R Stanley'),
('BRSV000501', 'Enlightening Essays', 'English ', 'R Stanley'),
('BRSV000503', 'Enlightening Essays', 'Tamil', 'R Stanley'),
('BRSV000505', 'Enlightening Essays', 'Malayalam', 'R Stanley'),
('BRSV000601', 'Faith Life', 'English ', 'R Stanley'),
('BRSV000603', 'Faith Life', 'Tamil', 'R Stanley'),
('BRSV000604', 'Faith Life', 'Telugu', 'R Stanley'),
('BRSV000701', 'Fire in My Bones', 'English ', 'R Stanley'),
('BRSV000703', 'Fire in My Bones', 'Tamil', 'R Stanley'),
('BRSV000801', 'Five Loaves & Two Fish', 'English ', 'R Stanley'),
('BRSV000803', 'Five Loaves & Two Fish', 'Tamil', 'R Stanley'),
('BRSV000805', 'Five Loaves & Two Fish', 'Malayalam', 'R Stanley'),
('BRSV000808', 'Five Loaves & Two Fish', 'Oriyya', 'R Stanley'),
('BRSV000901', 'Bible Answer P/b', 'English', 'R Stanley'),
('BRSV000903', 'Bible Answer P/b', 'Tamil', 'R Stanley'),
('BRSV000905', 'Frank Answers 1', 'Malayalam ', 'R Stanley'),
('BRSV000908', 'Frank Answers 1', 'Oriyya', 'R Stanley'),
('BRSV001001', ' Happy Harvest', 'English ', 'R Stanley'),
('BRSV001003', ' Happy Harvest', 'Tamil ', 'R Stanley'),
('BRSV001101', 'Higher Ways Higher Thoughts', 'English ', 'R Stanley'),
('BRSV001102', 'Higher Ways Higher Thoughts', 'Hindi ', 'R Stanley'),
('BRSV001103', 'Higher Ways Higher Thoughts', 'Tamil ', 'R Stanley'),
('BRSV001112', 'Higher Ways Higher Thoughts', 'Nepali ', 'R Stanley'),
('BRSV001201', 'How to Be Anointed with the', 'English ', 'R Stanley'),
('BRSV001203', 'How to Be Anointed with the', 'Tamil ', 'R Stanley'),
('BRSV001204', 'How to Be Anointed with the', 'Telugu ', 'R Stanley'),
('BRSV001208', 'How to Be Anointed with the', 'Oriyya ', 'R Stanley'),
('BRSV001301', 'How to Be Saved', 'English ', 'R Stanley'),
('BRSV001303', 'How to Be Saved', 'Tamil ', 'R Stanley'),
('BRSV001304', 'How to Be Saved', 'Telugu ', 'R Stanley'),
('BRSV001305', 'How to Be Saved', 'Malayalam ', 'R Stanley'),
('BRSV001308', 'How to Be Saved', 'Oriyya ', 'R Stanley'),
('BRSV001311', 'How to Be Saved', 'Bengali ', 'R Stanley'),
('BRSV001501', 'Little Foxes', 'English ', 'R Stanley'),
('BRSV001502', 'Little Foxes', 'Hindi ', 'R Stanley'),
('BRSV001503', 'Little Foxes', 'Tamil ', 'R Stanley'),
('BRSV001504', 'Little Foxes', 'Telugu ', 'R Stanley'),
('BRSV001505', 'Little Foxes', 'Malayalam ', 'R Stanley'),
('BRSV001508', 'Little Foxes', 'Oriyya ', 'R Stanley'),
('BRSV001511', 'Little Foxes', 'Bengali ', 'R Stanley'),
('BRSV001601', ' Open Heaven', 'English ', 'R Stanley'),
('BRSV001603', ' Open Heaven', 'Tamil ', 'R Stanley'),
('BRSV001701', ' Patience Makes the Man', 'English ', 'R Stanley'),
('BRSV001703', ' Patience Makes the Man', 'Tamil ', 'R Stanley'),
('BRSV001801', ' Power Belongs to God', 'English ', 'R Stanley'),
('BRSV001803', ' Powerbelongs to God', 'Tamil ', 'R Stanley'),
('BRSV001901', ' Preachers & People', 'English ', 'R Stanley'),
('BRSV001903', ' Preachers & People', 'Tamil ', 'R Stanley'),
('BRSV001904', ' Preachers and People', 'Telugu', 'R Stanley'),
('BRSV002001', ' To Dear Students', 'English ', 'R Stanley'),
('BRSV002003', ' To Dear Students', 'Tamil ', 'R Stanley'),
('BRSV002005', ' To Dear Students', 'Malayalam ', 'R Stanley'),
('BRSV002011', ' To Dear Students', 'Bengali ', 'R Stanley'),
('BRSV002103', ' Wild Honey', 'Tamil ', 'R Stanley'),
('BRSV002105', ' Wild Honey', 'Malayalam ', 'R Stanley'),
('BRSV002203', ' With God Again', 'Tamil ', 'R Stanley'),
('BRSV002301', 'When Revival Comes', 'English', 'R Stanley'),
('BRSV002303', 'When Revival Comes', 'Tamil', 'R Stanley'),
('BRSV002401', ' How Not to Worship', 'English ', 'R Stanley'),
('BRSV002501', 'How Notto Help', 'English ', 'R Stanley'),
('BRSV002503', 'Hownotto Help', 'Tamil ', 'R Stanley'),
('BRSV002701', ' How Not to Pray', 'English ', 'R Stanley'),
('BRSV002801', 'How Not to Give', 'English ', 'R Stanley'),
('BRSV003201', 'How Notto Die', 'English ', 'R Stanley'),
('BRSV003203', 'How Not to Die', 'Tamil ', 'R Stanley'),
('BRSV003400', 'Whom to Marry', 'English ', 'R Stanley'),
('BRSV003500', 'Balanced Christian', 'Hindi ', 'R Stanley'),
('BRSV003608', 'Balanced Christian', 'Oriya', 'R Stanley'),
('BRSV003703', 'After Rebirth A Yogi', 'Tamil ', 'R Stanley'),
('BSBC000103', 'Tamil Jesus Story Bible Book', 'Tamil', 'SBC'),
('BSOB000101', 'Better Everyday', 'English ', 'SOB'),
('BSOB000103', 'Better Everyday', 'Tamil ', 'SOB'),
('BSOB000104', 'Better Everyday', 'Telugu ', 'SOB'),
('BSOB000105', 'Better Everyday', 'Malayalam ', 'SOB'),
('BSOB000201', 'Bible Calender', 'English', 'SOB'),
('BSOB000202', 'Bible Calender', 'Hindi ', 'SOB'),
('BSOB000203', 'Bible Calender', 'Tamil', 'SOB'),
('BSOB000204', 'Bible Calender', 'Telugu', 'SOB'),
('BSOB000206', 'Bible Calender', 'Kannada', 'SOB'),
('BSOB000303', 'How to Preach Better', 'Tamil ', 'SOB'),
('BSOB000401', 'Bible Treasures (Book)', 'English ', 'SOB'),
('BSOB000403', 'Bible Treasures (Book)', 'Tamil', 'SOB'),
('BSOB000501', 'Milk & Honey', 'English ', 'SOB'),
('BSOB000503', 'Milk & Honey', 'Tamil', 'SOB'),
('BSOB000601', 'Youth Revival Letters', 'English', 'SOB'),
('BSOB000603', 'Youth Revival Letters', 'Tamil', 'SOB'),
('BSOB000701', 'Bible Pearls', 'English ', 'SOB'),
('BSOB000801', 'Bible Holines', 'English ', 'SOB'),
('BSOB000803', 'Bible Holines', 'Tamil', 'SOB'),
('BSOB000901', 'Here I Stand', 'English ', 'SOB'),
('BSOB000903', 'Here I Stand', 'Tamil', 'SOB'),
('BSOB001001', 'I Follow Jesus', 'English ', 'SOB'),
('BSOB001003', 'I Follow Jesus', 'Tamil', 'SOB'),
('BSOB001201', 'Old Paths', 'English ', 'SOB'),
('BSOB001203', 'Old Paths', 'Tamil', 'SOB'),
('BSOB001301', 'Jesus Footsteps', 'English ', 'SOB'),
('BSOB001303', 'Jesus Footsteps', 'Tamil', 'SOB'),
('BSOB001401', 'Bold & Beautiful', 'English ', 'SOB'),
('BSOB001403', 'Bold & Beautiful', 'Tamil', 'SOB'),
('BSOB001501', 'Bible Power', 'English', 'SOB'),
('BSOB001503', 'Bible Power', 'Tamil', 'SOB'),
('BSOB001601', 'Heart Breathings', 'English ', 'SOB'),
('BSOB001701', 'Prayer Everyday', 'English', 'SOB'),
('BSOB001801', 'Preach Better', 'English  ', 'SOB'),
('BSOB001901', 'Prophet Priest King', 'English ', 'SOB'),
('BSOB001903', 'Prophet Priest King', 'Tamil', 'SOB'),
('BSOB002001', 'Royal Emblem', 'English  ', 'SOB'),
('BSOB002101', 'Sodom Had No Bible', 'English ', 'SOB'),
('BSOB002203', 'Bible  Questions', 'Tamil', 'SOB'),
('BSOB002303', 'Bible Victory', 'Tamil ', 'SOB'),
('BSOB002401', 'Corona Calls', 'English ', 'SOB'),
('BSOB002403', 'Corona Calls', 'Tamil ', 'SOB'),
('BTAC000103', ' My Cry & Joyful Newlife', ' Tamil ', 'TAC'),
('BTRS000103', 'Mutkalil Malarntha Malargal', 'Tamil', 'Thomas Rajasing'),
('BVNC000103', 'Manitharai Thediya Mamanitherg', ' Tamil ', 'VNC'),
('BWOC000103', 'Hudson Taylor (Woc)', 'Tamil ', 'WOC'),
('BWOC000109', ' How to Meditate on the Bible', 'Oriyya ', 'Alfred Devadason'),
('BWOC000203', 'A Commentary Matthew Woc', 'Tamil ', 'WOC'),
('BWOC000302', 'Sun to Son', 'Hindi ', 'WOC'),
('BWOC000303', 'Sun to Son', 'Tamil ', 'WOC'),
('BWOC000409', 'How to Do Gospel Work', 'Oriyya ', 'WOC'),
('BWOC000501', 'An Unworthy Servant', 'English ', 'WOC'),
('BWOC000603', 'Praying with Power', 'Tamil ', 'WOC'),
('BWOC000701', ' Power of the Blood of Jesus', 'English ', 'WOC'),
('BWOC000801', ' Revival Praying', 'English ', 'WOC'),
('BWOC001001', 'The New Covenant Tabernacle', 'English ', 'WOC'),
('BWOC001003', 'The New Covenant Tabernacle', 'Tamil', 'WOC'),
('BWOC001403', 'the Anointing ,Fruits and Gift', 'Tamil ', 'WOC'),
('BWOC001503', 'Yun (Hevanly Man)', 'Tamil ', 'WOC'),
('BWOC001603', 'Bayaminidri Yesuvai Ariviyunga', 'Tamil ', 'WOC'),
('BWOC002003', 'Commentary on Galatians', 'Tamil ', 'WOC'),
('BWOC002103', 'Eune', 'Tamil ', 'WOC'),
('BWOC002203', ' Life Anew', 'Tamil', 'WOC'),
('BWOC002303', 'Pandit Ramabai', 'Tamil ', 'WOC'),
('BWOC002403', 'Forgiveness', 'Tamil ', 'WOC'),
('BWOC002503', 'Devan Virumbum Illara Naiiurau', 'Tamil ', 'WOC'),
('BWOC002603', 'Necessity of Prayer (Woc)', 'Tamil', 'WOC'),
('BWOC002703', 'Mannithal', 'Tamil ', 'WOC'),
('BWOC002801', 'Sun to Son', 'English ', 'WOC'),
('BWOC002903', 'Royal Clarinda', 'Tamil', 'WOC'),
('BWOC003001', ' Absolute Surrender', 'English ', 'WOC'),
('BWOC003103', 'Anbu Alex(Biography)', 'Tamil ', 'WOC'),
('BWOC003203', 'Jerusalem', 'Tamil ', 'WOC'),
('BWOC003303', 'Mosam Pokkum Pisasu', 'Tamil', 'WOC'),
('BWOC003403', 'Holy Spirit My Senior Partner', 'Tamil', 'WOC'),
('BWOC003503', 'Vachirakkal (Voc)', 'Tamil ', 'WOC'),
('BWOC003603', 'Jebathota Jeyageethangal Songs', 'Tamil ', 'WOC'),
('DLRC000901', 'The Judgement Seat of Christ', 'English', 'Leonard Ravenhill'),
('IBLC000101', 'Bible Good News Bible P/p', 'English', 'BLC'),
('IBSI000101', '365 Stories of Children', 'English ', 'BSI'),
('IBSI000201', 'N.I.V Small Bible', 'English', 'BSI'),
('IBSI000301', 'Esv 033 Hb Compact Black (Ind.', 'English', 'BSI'),
('IBSI000403', 'Bible OV 75 Z/f Bl', 'Tamil ', 'BSI'),
('IBSI000503', 'Bible for Children(H/b', 'Tamil ', 'BSI'),
('IBSI000601', 'English Women .S Devotional Bi', 'English', 'BSI'),
('IBSI000703', 'Bible OV 47 Z', 'Tamil', 'BSI'),
('IBSI000801', 'English Amplified Burgundy Top', 'English', 'BSI'),
('IBSI000903', 'Tamil Royal Zip 23147', 'Tamil', 'BSI'),
('IBSI001201', 'The Message (Contemptary Langu', 'English', 'BSI'),
('IBSI001601', 'Esv 063 Hb Dy .Black(Ind.Edn)', 'English', 'BSI'),
('IBSI001801', 'Esv Wide Margin Ref Black Lett', 'English', 'BSI'),
('IBSI002001', 'My First Handy Bible', 'English ', 'BSI'),
('IBSI002003', 'My First Handy Bible', 'Tamil', 'BSI'),
('IBSI002101', '100 Stories Children,S Bible H', 'English', 'BSI'),
('IBSI002201', 'Bible Stories for Brave Boys S', 'English', 'BSI'),
('IBSI002301', 'GNB Crown Pb (Picture Cover)', 'English ', 'BSI'),
('IBSI002401', 'GNB Hb Dy New Cover Picture', 'English', 'BSI'),
('IBSI002501', 'Thomson Chain Reference H/b KJ', 'English', 'BSI'),
('IBSI002601', 'Diglot Royal Bl Yapp(Kbs)', 'English', 'BSI'),
('IBSI002701', 'Wonderful Bible Stories', 'English ', 'BSI'),
('IBSI002801', 'Thompson Chain Ref L/b Bsi', 'English ', 'BSI'),
('IBSI002903', 'Intro&Sub Hd.R/LRoyal Gilt Pu', 'Tamil', 'BSI'),
('IBSI003001', 'My First Story Book Bible Sph', 'English', 'BSI'),
('IBSI003101', 'My God Loves Me Bible SPH', 'English', 'BSI'),
('IBSI003203', 'Tamil Ov 27ti Bl Yapp N/o Holy', 'Tamil', 'BSI'),
('IBSI003303', 'Tamil Ov 27z Ti Bl N/o Holy La', 'Tamil', 'BSI'),
('IBSI003403', 'Tamil Ov Royal Dy Bl Yapp', 'Tamil', 'BSI'),
('IBSI003503', 'Tamil Bible Classic Plus Pl Gi', 'Tamil', 'BSI'),
('IBSI003603', 'Tamil Bible Cl Bl Dy 8 Vo Yaap', 'Tamil', 'BSI'),
('IBSI003703', 'Tamil Bible for Chilrance P/p', 'Tamil', 'BSI'),
('IBSI003803', 'Tamil Bible Ov 45 Yapp(Bsi)', 'Tamil', 'BSI'),
('IBSI003903', 'Tamil Bible Ov 45 Zip (Bsi)', 'Tamil', 'BSI'),
('IBSI004003', 'Tamil Bible Ov 55 Pict .Ti Bl ', 'Tamil', 'BSI'),
('IBSI004103', 'Tamil Bible Ov 55 Zti Bl N.F (', 'Tamil', 'BSI'),
('IBSI004203', 'Tamil Bible Pulpit Yaap Gilt P', 'Tamil', 'BSI'),
('IBSI004303', 'Tamil Classic Indian Yapp (Bsi', 'Tamil', 'BSI'),
('IBSI004403', 'Tamil Ov Royal Bl Zip', 'Tamil', 'BSI'),
('IBSI004503', 'Tamil Ov Royal Dy Font Gilt Hb', 'Tamil', 'BSI'),
('IBSI004603', 'Tamil Semi Compact (Sumall Red', 'Tamil', 'BSI'),
('IBSI004701', 'The   Action Study Bible', 'English', 'BSI'),
('IBSI004801', 'The Devotional Children,S Bibl', 'English', 'BSI'),
('IDPN000101', 'Unlocking the Bible (Omnibus) ', 'English', 'David Pawson'),
('IIBL000101', ' Ibl Study Bible', 'English', 'IBL'),
('IIBL000201', ' Kjv  the Jerusalem Restoratio', 'English', 'IBL'),
('IIBL000301', ' Nkjv the Open Bible(Ibl)', 'English', 'IBL'),
('IIBL000403', 'Bible Foundations (Ibl)', 'Tamil ', 'IBL'),
('IOMS000601', 'Crudens Complete Concordance(A', 'English ', 'OMS'),
('IOMS000901', 'English Bible Niv Kids Devotio', 'English ', 'OMS'),
('IOMS001301', 'Esv New Inductive Study Bible ', 'English ', 'OMS'),
('IOMS001401', 'Nkjv', 'English ', 'OMS'),
('IOMS001501', 'Kjv/nkjv Parallel Bible Center', 'English ', 'OMS'),
('IOMS001601', ' Nrsv Spiritual Formation Bibl', 'English ', 'OMS'),
('ISBM000101', ' Nlt Topical Study Bible (Hb)', 'English', 'SBM'),
('ISBM000203', 'Tamil Childrens Bible( Sumal)', 'Tamil', 'SBM'),
('ISBM000303', 'Tamil Do Col Gold Ti', 'Tamil', 'SBM'),
('ISBM000403', ' Tamil Ov .N.F. Demy', 'Tamil', 'SBM'),
('ISBM000503', ' Tamil Rexin Gold Ti', 'Tamil', 'SBM'),
('ISBM000603', ' Tamil Rexin Gold Zip (Demy)', 'Tamil', 'SBM'),
('ISBM000703', ' Tamil Rexin Gold Zip (Semi Co', 'Tamil', 'SBM'),
('ISBM000803', 'Tamil  Rexin Open Gold', 'Tamil', 'SBM'),
('ISBM000903', ' Tamil Rexin Red Zip (Demy)', 'Tamil', 'SBM'),
('ISBM001003', ' Tamil Rexin Zip Gold Ti', 'Tamil', 'SBM'),
('ISBM001103', ' Tamil Velvet Gold Ti', 'Tamil', 'SBM'),
('ISBM001203', ' Tamil Velvet Gold Zip (Demy)', 'Tamil', 'SBM'),
('ISBM001303', ' Tamil Velvet Gold Zip(Semi Ca', 'Tamil', 'SBM'),
('ISBM001403', ' Tamil Velvet Zip Gold Ti', 'Tamil', 'SBM'),
('ISWP000103', 'Full Life Study Bible (Swapna)', 'Tamil ', 'SWP'),
('IWOC000103', 'Arimuga Innai Vasana Vedhagama', 'Tamil', 'WOC'),
('IWOC000203', 'Arimuga Vasana Vedhamam Zip', 'Tamil ', 'WOC'),
('IWOC000301', ' Nkjv L/p Ultrathin Ref Holman', 'English', 'WOC'),
('IWOC000903', ' Vazhlviyal Vilakka Vedhagamam', 'Tamil', 'WOC'),
('IWOC001001', 'Niv Thinline Bible( Black Lett', 'English ', 'WOC'),
('TLSV000101', 'Dr.Lilian Stanley Booklets E L', 'English', 'Lilian Stanley'),
('TLSV000203', 'Dr.Lilian Stanley Booklets E L', 'Tamil', 'Lilian Stanley'),
('TRSV000101', 'After Rebirth', 'English ', 'R Stanley'),
('TRSV000103', 'After Rebirth', 'Tamil ', 'R Stanley'),
('TRSV000203', 'Good News of Deliverance (Trac', 'Tamil ', 'R Stanley'),
('TRSV000301', 'Is Christ Unique', 'English ', 'R Stanley'),
('TRSV00403', 'Whom to Marry', 'Tamil ', 'R Stanley'),
('TSOB000101', ' I Coming &Ii Coming Tracts', 'English', 'SOB'),
('TSOB000102', 'I & Ii Coming Tracts', 'Hindi ', 'SOB'),
('TSOB000103', 'I & Ii Coming Tracts', 'Tamil', 'SOB'),
('TSOB000201', 'Jesus Is Coming Again(Tract)', 'English', 'SOB'),
('TSOB000302', 'Tract Is Christ Unigue', 'Hindi ', 'SOB'),
('TSOB000303', 'Is Christ Unique', 'Tamil ', 'SOB'),
('TSOB000401', 'Stop Back Sliding Tract', 'English', 'SOB'),
('TSOB000403', 'Stop Backsliding Tract', 'Tamil ', 'SOB'),
('TSOB000501', 'Are You Ready to Meet God', 'English ', 'SOB'),
('TSOB000503', 'Are You Ready to Meet God', 'Tamil ', 'SOB'),
('TSOB000504', 'Are You Ready to Meet God', 'Telugu ', 'SOB'),
('TSOB000505', 'Are You Ready Meet God', 'Malayalam ', 'SOB'),
('TSOB000601', 'Message Form Mary', 'English ', 'SOB'),
('TSOB000603', 'Message Form Mary', 'Tamil ', 'SOB'),
('URSV002803', 'Bless Bharath  2015', 'Tamil ', 'R Stanley'),
('URSV003301', 'Bible Foundation/1977/1978', 'English ', 'RSV');

-- --------------------------------------------------------

--
-- Table structure for table `godown`
--

CREATE TABLE `godown` (
  `godown_name` varchar(30) NOT NULL,
  `godown_location` varchar(30) NOT NULL,
  `phone` decimal(10,0) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `godown`
--

INSERT INTO `godown` (`godown_name`, `godown_location`, `phone`) VALUES
('A.Kumar', 'MUMBAI', '9967795251'),
('Daisy Dhanaraj', 'BLC CHENNAI', '8806270699'),
('Devakumar', 'ERODE', '9843085405'),
('Grace ', 'BLC COUNTER', '9940196619'),
('Jesuragavan', 'PALAYAMKOTTAI', '9443249820'),
('Kailash k mane', 'GUJARATH', '9773252660'),
('Mohan raj', 'UTTAR PRADESH', '9424397281'),
('Mohanakirushnnan', 'MYSORE', '8660815600'),
('Paul David', 'PUNJAB', '9161873090'),
('premkumar', 'ERNAKKULAM', '9895976758'),
('Raguvarma', 'PALAKKADU', '0'),
('Raja Subaramani', 'HYDERABAD', '0'),
('Ratnakar rwo', 'WARANGAL', '0'),
('Reuban koil picthai', 'MAHARASTRHA', '8421422255'),
('Rita selvaraj', 'PONDICHERRY', '9884429682'),
('Sakthivel', 'BILASPUR', '8839336912'),
('Sam Joseph', 'WEST BENGAL ', '6374246620'),
('Sam Madasamy', 'RAJASTHAN', '9828154375'),
('Sarojkumar', 'VIJAYANAGARAM', '9866501405'),
('Shantagouda', 'KARNATAKA', '8722375513'),
('Shasikant Barik', 'ODISHA', '9668358589'),
('Shatrach', 'TRIVANDARAM', '9526012564'),
('Somasundaram', 'ASSAM', '9954694027'),
('Vadivel james', 'JABALPUR', '9981283657'),
('Vijiyakumar', 'BYM ANNEX VELLORE', '8106115943');

-- --------------------------------------------------------

--
-- Table structure for table `inregister`
--

CREATE TABLE `inregister` (
  `in_tid` int(11) NOT NULL,
  `book_id` varchar(10) NOT NULL,
  `gn_name` varchar(30) NOT NULL,
  `gn_location` varchar(30) NOT NULL,
  `in_date` date NOT NULL,
  `in_quantity` int(11) NOT NULL,
  `in_note` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `outregister`
--

CREATE TABLE `outregister` (
  `out_tid` int(11) NOT NULL,
  `book_id` varchar(10) NOT NULL,
  `gn_name` varchar(30) NOT NULL,
  `gn_location` varchar(30) NOT NULL,
  `out_date` date NOT NULL,
  `out_quantity` int(11) NOT NULL,
  `out_note` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `price`
--

CREATE TABLE `price` (
  `book_id` varchar(10) NOT NULL,
  `p_name` varchar(30) NOT NULL,
  `p_location` varchar(30) NOT NULL,
  `c_price` int(11) NOT NULL,
  `s_price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `printer`
--

CREATE TABLE `printer` (
  `printer_name` varchar(30) NOT NULL,
  `printer_location` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `quantity`
--

CREATE TABLE `quantity` (
  `book_id` varchar(10) NOT NULL,
  `gn_name` varchar(30) NOT NULL,
  `gn_location` varchar(30) NOT NULL,
  `quantity` int(11) NOT NULL,
  `rack` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`book_id`);

--
-- Indexes for table `godown`
--
ALTER TABLE `godown`
  ADD PRIMARY KEY (`godown_name`,`godown_location`);

--
-- Indexes for table `inregister`
--
ALTER TABLE `inregister`
  ADD PRIMARY KEY (`in_tid`),
  ADD KEY `FK106` (`gn_name`,`gn_location`),
  ADD KEY `FK105` (`book_id`);

--
-- Indexes for table `outregister`
--
ALTER TABLE `outregister`
  ADD PRIMARY KEY (`out_tid`),
  ADD KEY `FK108` (`gn_name`,`gn_location`),
  ADD KEY `FK107` (`book_id`);

--
-- Indexes for table `price`
--
ALTER TABLE `price`
  ADD PRIMARY KEY (`book_id`,`p_name`,`p_location`),
  ADD KEY `FK102` (`p_name`,`p_location`);

--
-- Indexes for table `printer`
--
ALTER TABLE `printer`
  ADD PRIMARY KEY (`printer_name`,`printer_location`);

--
-- Indexes for table `quantity`
--
ALTER TABLE `quantity`
  ADD PRIMARY KEY (`book_id`,`gn_name`,`gn_location`),
  ADD KEY `FK104` (`gn_name`,`gn_location`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `inregister`
--
ALTER TABLE `inregister`
  MODIFY `in_tid` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `inregister`
--
ALTER TABLE `inregister`
  ADD CONSTRAINT `FK105` FOREIGN KEY (`book_id`) REFERENCES `books` (`book_id`) ON DELETE NO ACTION,
  ADD CONSTRAINT `FK106` FOREIGN KEY (`gn_name`,`gn_location`) REFERENCES `godown` (`godown_name`, `godown_location`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `outregister`
--
ALTER TABLE `outregister`
  ADD CONSTRAINT `FK107` FOREIGN KEY (`book_id`) REFERENCES `books` (`book_id`) ON DELETE NO ACTION,
  ADD CONSTRAINT `FK108` FOREIGN KEY (`gn_name`,`gn_location`) REFERENCES `godown` (`godown_name`, `godown_location`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `price`
--
ALTER TABLE `price`
  ADD CONSTRAINT `FK100` FOREIGN KEY (`book_id`) REFERENCES `books` (`book_id`),
  ADD CONSTRAINT `FK102` FOREIGN KEY (`p_name`,`p_location`) REFERENCES `printer` (`printer_name`, `printer_location`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `quantity`
--
ALTER TABLE `quantity`
  ADD CONSTRAINT `FK103` FOREIGN KEY (`book_id`) REFERENCES `books` (`book_id`) ON DELETE NO ACTION,
  ADD CONSTRAINT `FK104` FOREIGN KEY (`gn_name`,`gn_location`) REFERENCES `godown` (`godown_name`, `godown_location`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
