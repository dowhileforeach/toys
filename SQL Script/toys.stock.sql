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
  `img02`    VARCHAR(50)                DEFAULT NULL,
  `img03`    VARCHAR(50)                DEFAULT NULL,
  `img04`    VARCHAR(50)                DEFAULT NULL,
  `img05`    VARCHAR(50)                DEFAULT NULL,
  `img06`    VARCHAR(50)                DEFAULT NULL,
  `img07`    VARCHAR(50)                DEFAULT NULL,
  PRIMARY KEY (`article`),
  UNIQUE KEY `item_article_uindex` (`article`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_unicode_ci;

LOCK TABLES `item` WRITE;
INSERT INTO `item` VALUES
  (1,'Ворона большая','норка, орелаг','черный, серый, белый, розовый, бордо, бежевый, светло-коричневый, Кастор, коричневый','21 см.',18800,'photo1949.png','photo1950.png','crow_05.jpg','crow_07.jpg','crow_08.jpg','crow_09.jpg','crow_14.jpg'),
  (111,'Панда средняя','орилаг, рекс',NULL,NULL,18000,'photo2387.png','photo2388.png','photo2389.png',NULL,NULL,NULL,NULL),
  (130,'Слонёнок','норка, орелаг, замша, кожа, рекс, куница','серый, темно-серый, светло-серый, белый, бордо, коричневый, бежевый, Шоколад, какао, h-grey, Шиншилла, светло-коричневый, Кастор','13 см.',8340,'photo2270.png','slon1.png','slon2.png',NULL,NULL,NULL,NULL),
  (198,'Мишка Плюшик Большой','рекс, кашемир','белый, серый, светло-серый, темно-серый, розовый, желтый, синий, оранжевый, персик, зеленый, бежевый, светло-коричневый, Кастор, коричневый, Шиншилла, какао, h-grey, Шоколад, молоко, карамель','35 см.',16900,'photo2490.png','photo2491.png','photo2495.png','photo2496.png','photo2497.png','photo2498.png',NULL),
  (133,'Лисёнок Апельсинчик','орелаг, рекс, песец, чернобурка ','белый, оранжевый','26 см.',10500,'photo2273.png','photo2274.png',NULL,NULL,NULL,NULL,NULL),
  (134,'Коробочка для украшений','норка, орелаг, кролик','черный, серый, белый, розовый, бежевый, светло-коричневый, Кастор, коричневый','6 см, Ширина 12 см.',10000,'korser3.png','korser2.png','korser1.png','korser4.png',NULL,NULL,NULL);
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