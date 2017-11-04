package ru.dwfe.toys;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface DAO_Item_img extends JpaRepository<Item_img, Long>
{
    @Query("SELECT i FROM Item_img AS i WHERE i.article=?1")
    List<Item_img> searchByArticle(Long article);
}
