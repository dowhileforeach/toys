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
  PRIMARY KEY (`article`),
  UNIQUE KEY `stock_article_uindex` (`article`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_unicode_ci;

LOCK TABLES `stock` WRITE;
INSERT INTO `stock`
VALUES
  (1,'Ворона большая','норка, орелаг','черный, серый, белый, розовый, бордо, бежевый, светло-коричневый, Кастор, коричневый','21 см.',18800,'photo1949.JPG','photo1949_sm.JPG','photo1950.JPG','photo1950_sm.JPG'),
  (111,'Панда средняя','орилаг, рекс',NULL,NULL,18000,'photo2387.jpg','photo2387_sm.jpg','photo2388.jpg','photo2389_sm.jpg'),
  (130,'Слонёнок','норка, орелаг, замша, кожа, рекс, куница','серый, темно-серый, светло-серый, белый, бордо, коричневый, бежевый, Шоколад, какао, h-grey, Шиншилла, светло-коричневый, Кастор','13 см.',8340,'photo2270.jpg','photo2270_sm.jpg','slon1.JPG','slon2_sm.JPG');
UNLOCK TABLES;