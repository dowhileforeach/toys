USE toys;

DROP TABLE IF EXISTS `stock`;
CREATE TABLE `stock` (
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
  `img01`    VARCHAR(100)               NOT NULL,
  `img01_sm` VARCHAR(100)               NOT NULL,
  `img02`    VARCHAR(100)               NOT NULL,
  `img02_sm` VARCHAR(100)               NOT NULL,
  `img03`    VARCHAR(100)               DEFAULT NULL,
  `img03_sm` VARCHAR(100)               DEFAULT NULL,
  `img04`    VARCHAR(100)               DEFAULT NULL,
  `img04_sm` VARCHAR(100)               DEFAULT NULL,
  `img05`    VARCHAR(100)               DEFAULT NULL,
  `img05_sm` VARCHAR(100)               DEFAULT NULL,
  `img06`    VARCHAR(100)               DEFAULT NULL,
  `img06_sm` VARCHAR(100)               DEFAULT NULL,
  `img07`    VARCHAR(100)               DEFAULT NULL,
  `img07_sm` VARCHAR(100)               DEFAULT NULL,
  PRIMARY KEY (`article`),
  UNIQUE KEY `stock_article_uindex` (`article`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_unicode_ci;

LOCK TABLES `stock` WRITE;
INSERT INTO `stock`
VALUES
  (1,'Ворона большая','норка, орелаг','черный, серый, белый, розовый, бордо, бежевый, светло-коричневый, Кастор, коричневый','21 см.',18800,'photo1949.png','photo1949_sm.JPG','photo1950.JPG','photo1950_sm.JPG','crow_05.jpg','crow_05_sm.jpg','crow_07.jpg','crow_07_sm.jpg','crow_08.jpg','crow_08_sm.jpg','crow_09.jpg','crow_09_sm.jpg','crow_14.jpg','crow_14_sm.jpg'),
  (111,'Панда средняя','орилаг, рекс',NULL,NULL,18000,'photo2387.jpg','photo2387_sm.jpg','photo2388.jpg','photo2388_sm.jpg','photo2389.jpg','photo2389_sm.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
  (130,'Слонёнок','норка, орелаг, замша, кожа, рекс, куница','серый, темно-серый, светло-серый, белый, бордо, коричневый, бежевый, Шоколад, какао, h-grey, Шиншилла, светло-коричневый, Кастор','13 см.',8340,'photo2270.jpg','photo2270_sm.jpg','slon1.JPG','slon1_sm.JPG','slon2.JPG','slon2_sm.JPG',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
  (198,'Мишка Плюшик Большой','рекс, кашемир','белый, серый, светло-серый, темно-серый, розовый, желтый, синий, оранжевый, персик, зеленый, бежевый, светло-коричневый, Кастор, коричневый, Шиншилла, какао, h-grey, Шоколад, молоко, карамель','35 см.',16900,'photo2490.jpg','photo2490_sm.jpg','photo2491.jpg','photo2491_sm.jpg','photo2495.jpg','photo2495_sm.jpg','photo2496.jpg','photo2496_sm.jpg','photo2497.jpg','photo2497_sm.jpg','photo2498.jpg','photo2498_sm.jpg','photo2499.jpg','photo2499_sm.jpg'),
  (133,'Лисёнок Апельсинчик','орелаг, рекс, песец, чернобурка ','белый, оранжевый','26 см.',10500,'photo2273.jpg','photo2273_sm.jpg','photo2274.jpg','photo2274_sm.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
  (134,'Коробочка для украшений','норка, орелаг, кролик','черный, серый, белый, розовый, бежевый, светло-коричневый, Кастор, коричневый','6 см, Ширина 12 см.',10000,'korser1.JPG','korser1s.JPG','korser2.JPG','korser2s.JPG','korser3.jpg','korser3s.jpg','korser4.JPG','korser4s.JPG',NULL,NULL,NULL,NULL,NULL,NULL);
UNLOCK TABLES;