--
-- Database: `acme`
--

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--
DROP TABLE IF EXISTS categories;
CREATE TABLE `categories` (
  `categoryId` int(10) UNSIGNED NOT NULL,
  `categoryName` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Category of inventory items';

--
-- Data for table `categories`
--

INSERT INTO `categories` (`categoryId`, `categoryName`) VALUES
(1, 'Cannon'),
(2, 'Explosive'),
(3, 'Misc'),
(4, 'Rocket'),
(5, 'Trap');

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--
DROP TABLE IF EXISTS inventory;
CREATE TABLE `inventory` (
  `invId` int(11) UNSIGNED NOT NULL,
  `invName` varchar(50) NOT NULL DEFAULT '',
  `invDescription` text NOT NULL,
  `invImage` varchar(50) NOT NULL DEFAULT '',
  `invPrice` decimal(10,2) NOT NULL DEFAULT '0.00',
  `invStock` smallint(6) NOT NULL DEFAULT '0',
  `categoryId` int(10) UNSIGNED NOT NULL,
  `invVendor` varchar(20) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Acme Inc. Inventory Table';

--
-- Data for table `inventory`
--

INSERT INTO `inventory` (`invId`, `invName`, `invDescription`, `invImage`, `invPrice`, `invStock`, `categoryId`, `invVendor`) VALUES
(1, 'Back-mounted Rocket', 'Rocket for multiple purposes. This can be launched independently to deliver a payload or strapped on to help get you to where you want to be FAST!!! Really Fast!', '/3365/images/rocket.gif', '1320.00', 5, 4, 'Goddard'),
(2, 'Mortar', 'Our Mortar is very powerful. This cannon can launch a projectile or bomb 3 miles. Made of solid steel and mounted on cement or metal stands [not included].', '/3365/images/mortar.gif', '1500.00', 26, 1, 'Smith & Wesson'),
(3, 'Catapult', 'Our best wooden catapult. Ideal for hurling objects for up to 1000 yards. Payloads of up to 300 lbs.', '/3365/images/catapult.gif', '2500.00', 4, 1, 'Wooden Creations'),
(4, 'Female RoadRuner Cutout', 'This carbon fiber backed cutout of a female roadrunner is sure to catch the eye of any male roadrunner.', '/3365/images/roadrunner.jpg', '20.00', 500, 5, 'Picture Perfect'),
(5, 'Giant Mouse Trap', 'Our big mouse trap. This trap is multifunctional. It can be used to catch dogs, mountain lions, road runners or even muskrats. Must be staked for larger varmints [stakes not included] and baited with approptiate bait [sold seperately].\r\n', '/3365/images/trap.gif', '20.00', 34, 5, 'Rodent Control'),
(6, 'Instant Hole', 'Instant hole - Wonderful for creating the appearance of openings.', '/3365/images/black_circle.gif', '25.00', 269, 3, 'Hidden Valley'),
(7, 'Koenigsegg CCX', 'This high performance car is sure to get you where you are going fast. It holds the production car land speed record at an amazing 250mph.', '/3365/images/ccxcar.jpg', '500000.00', 1, 3, 'Koenigsegg'),
(8, 'Large Anvil', '50 lb. Anvil - perfect for any task requireing lots of weight. Made of solid, tempered steel.', '/3365/images/anvil.gif', '150.00', 15, 5, 'Steel Made'),
(9, 'Medium Anvil', 'This solid iron 35 lb. anvil is sure to crush anything under it and provide a solid surface for all metal on it.', '/3365/images/anvil.jpg', '65.00', 5000, 5, 'Steel Made'),
(10, 'Monster Rubber Band', 'These are not tiny rubber bands. These are MONSTERS! These bands can stop a train locamotive or be used as a slingshot for cows. Only the best materials are used!', '/3365/images/rubberband.gif', '4.00', 4589, 3, 'Rubbermaid'),
(11, 'Mallet', 'Ten pound mallet for bonking roadrunners on the head. Can also be used for bunny rabbits.', '/3365/images/mallet.gif', '25.00', 100, 3, 'Wooden Creations'),
(12, 'TNT', 'The biggest bang for your buck with our nitro-based TNT. Price is per stick.', '/3365/images/tnt.jpg', '10.00', 1000, 2, 'Nobel Enterprises'),
(13, 'Roadrunner Custom Bird Seed Mix', 'Our best varmint seed mix - varmints on two or four legs can''t resist this mix. Contains meat, nuts, cereals and our own special ingredient. Guaranteed to bring them in. Can be used with our monster trap.', '/3365/images/seed.jpg', '8.00', 150, 5, 'Acme'),
(14, 'Grand Piano', 'This upright grand piano is guaranteed to play well and smash anything beneath it if dropped from a height.', '/3365/images/upright.gif', '3500.00', 36, 3, 'Wulitzer'),
(15, 'Crash Helmet', 'This carbon fiber and plastic helmet is the ultimate in protection for your head. comes in assorted colors.', '/3365/images/helmet.gif', '100.00', 25, 3, 'Suzuki'),
(16, 'Nylon Rope', 'This nylon rope is ideal for all uses. Each rope is the highest quality nylon and comes in 100 foot lengths.', '/3365/images/nylon.gif', '15.00', 200, 3, 'Marina Sales'),
(17, 'Sticky Fence', 'This fence is covered with Gorilla Glue and is guaranteed to stick to anything that touches it and is sure to hold it tight.', '/3365/images/stickyfence.jpg', '75.00', 15, 3, 'Acme'),
(18, 'Small Bomb', 'Bomb with a fuse - A little old fashioned, but highly effective. This bomb has the ability to devistate anything within 30 feet.', '/3365/images/bomb.gif', '275.00', 58, 2, 'Nobel Enterprises');


-- --------------------------------------------------------
--
-- Indexes for tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`categoryId`);

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`invId`),
  ADD KEY `categoryId` (`categoryId`); -- Foreign key to categories table

-- --------------------------------------------------------
--
-- AUTO_INCREMENT for tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `categoryId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `inventory`
--
ALTER TABLE `inventory`
  MODIFY `invId` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

-- --------------------------------------------------------
--
-- Constraints for tables
--

--
-- Constraints for table `inventory`
--
ALTER TABLE `inventory`
  ADD CONSTRAINT `inventory_ibfk_1` FOREIGN KEY (`categoryId`) REFERENCES `categories` (`categoryId`) ON DELETE CASCADE ON UPDATE CASCADE;

-- --------------------------------------------------------
--
-- Table structure for table `clients`
--
-- DROP TABLE IF EXISTS clients;
-- CREATE TABLE `clients` (
--   `clientId` int(10) UNSIGNED NOT NULL,
--   `clientFirstname` varchar(15) NOT NULL,
--   `clientLastname` varchar(25) NOT NULL,
--   `clientEmail` varchar(40) NOT NULL,
--   `clientPassword` varchar(255) NOT NULL,
--   `clientLevel` enum('1','2','3') NOT NULL DEFAULT '1',
--   `comments` text NOT NULL
-- ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for table `clients`
--
-- ALTER TABLE `clients`
--   ADD PRIMARY KEY (`clientId`);
  
--
-- AUTO_INCREMENT for table `clients`
--
-- ALTER TABLE `clients`
--   MODIFY `clientId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
-- --------------------------------------------------------


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
