package com.ma.Music_app.respository;

import com.ma.Music_app.Model.UserPackage;

import org.springframework.data.jpa.repository.JpaRepository;

public interface PackageRepository extends JpaRepository<UserPackage, Integer> {
}
