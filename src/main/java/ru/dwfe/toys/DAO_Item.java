package ru.dwfe.toys;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface DAO_Item extends JpaRepository<Item, Long> { }
