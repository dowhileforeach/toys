USE toys;

SET FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `item`;
SET FOREIGN_KEY_CHECKS=1;
CREATE TABLE `item` (
  `article`  BIGINT(20)                 NOT NULL,
  `title`    VARCHAR(255)
             COLLATE utf8mb4_unicode_ci NOT NULL,
  `material` VARCHAR(255)
             COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color`    VARCHAR(255)
             COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size`     VARCHAR(100)
             COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price`    INT(11)                    DEFAULT NULL,
  `img`      VARCHAR(50)                NOT NULL,
  PRIMARY KEY (`article`),
  UNIQUE KEY `item_article_uindex` (`article`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_unicode_ci;

LOCK TABLES `item` WRITE;
INSERT INTO `item` VALUES
  (1,'Ворона большая','норка, орелаг','черный, серый, белый, розовый, бордо, бежевый, светло-коричневый, Кастор, коричневый','21 см.',18800,'photo1949.png'),
  (111,'Панда средняя','орилаг, рекс',NULL,NULL,18000,'photo2387.png'),
  (130,'Слонёнок','норка, орелаг, замша, кожа, рекс, куница','серый, темно-серый, светло-серый, белый, бордо, коричневый, бежевый, Шоколад, какао, h-grey, Шиншилла, светло-коричневый, Кастор','13 см.',8340,'photo2270.png'),
  (198,'Мишка Плюшик Большой','рекс, кашемир','белый, серый, светло-серый, темно-серый, розовый, желтый, синий, оранжевый, персик, зеленый, бежевый, светло-коричневый, Кастор, коричневый, Шиншилла, какао, h-grey, Шоколад, молоко, карамель','35 см.',16900,'photo2490.png'),
  (133,'Лисёнок Апельсинчик','орелаг, рекс, песец, чернобурка ','белый, оранжевый','26 см.',10500,'photo2273.png'),
  (134,'Коробочка для украшений','норка, орелаг, кролик','черный, серый, белый, розовый, бежевый, светло-коричневый, Кастор, коричневый','6 см, Ширина 12 см.',10000,'korser3.png');
UNLOCK TABLES;

DROP TABLE IF EXISTS `item_img`;
CREATE TABLE `item_img` (
  `article` BIGINT(20)                 NOT NULL,
  `img`     VARCHAR(50)
            COLLATE utf8mb4_unicode_ci NOT NULL,
  UNIQUE KEY `item_img_img_uindex` (`img`),
  KEY `item_img_item_article_fk` (`article`),
  CONSTRAINT `item_img_item_article_fk` FOREIGN KEY (`article`) REFERENCES `item` (`article`) ON DELETE CASCADE
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_unicode_ci;

LOCK TABLES `item_img` WRITE;
INSERT INTO `item_img` VALUES
  (1, 'photo1950.png'),
  (1, 'crow_05.jpg'),
  (1, 'crow_07.jpg'),
  (1, 'crow_08.jpg'),
  (1, 'crow_09.jpg'),
  (1, 'crow_14.jpg'),
  (111, 'photo2388.png'),
  (111, 'photo2389.png'),
  (130, 'slon1.png'),
  (130, 'slon2.png'),
  (198, 'photo2491.png'),
  (198, 'photo2495.png'),
  (198, 'photo2496.png'),
  (198, 'photo2497.png'),
  (198, 'photo2498.png'),
  (133, 'photo2274.png'),
  (134, 'korser2.png'),
  (134, 'korser1.png'),
  (134, 'korser4.png');
UNLOCK TABLES;

DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer` (
  `email` VARCHAR(100)
          COLLATE utf8mb4_unicode_ci NOT NULL,
  `name`  VARCHAR(100)
          COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` VARCHAR(100)
          COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`email`),
  UNIQUE KEY `customer_email_uindex` (`email`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_unicode_ci;

SET FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `order`;
SET FOREIGN_KEY_CHECKS=1;
CREATE TABLE `order` (
  `id`            BIGINT(20) NOT NULL AUTO_INCREMENT,
  `deliveryValue` INT(11)    NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `order_id_uindex` (`id`)
)
  ENGINE = InnoDB
  AUTO_INCREMENT = 4
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_unicode_ci;

DROP TABLE IF EXISTS `order_delivery`;
CREATE TABLE `order_delivery` (
  `order_id` BIGINT(20)                 NOT NULL,
  `index`    INT(11)                    NOT NULL,
  `country`  VARCHAR(100)
             COLLATE utf8mb4_unicode_ci NOT NULL,
  `address`  VARCHAR(2000)
             COLLATE utf8mb4_unicode_ci NOT NULL,
  `name`     VARCHAR(100)
             COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone`    VARCHAR(100)
             COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`order_id`),
  CONSTRAINT `order_delivery_order_id_fk` FOREIGN KEY (`order_id`) REFERENCES `order` (`id`)
    ON DELETE CASCADE
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_unicode_ci;