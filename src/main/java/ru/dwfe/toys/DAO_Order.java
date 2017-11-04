package ru.dwfe.toys;

import org.springframework.data.jpa.repository.JpaRepository;

public interface DAO_Order extends JpaRepository<Order,Long> { }
