package com.java.cicd.project5.repository;


import com.java.cicd.project5.entity.Student;
import org.springframework.data.jpa.repository.JpaRepository;

public interface StudentRepository extends JpaRepository<Student, Integer> {
}
