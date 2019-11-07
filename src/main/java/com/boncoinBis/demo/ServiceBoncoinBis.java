package com.boncoinBis.demo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class ServiceBoncoinBis {

	@Autowired
	RepositoryBoncoinBis boncoinBisRepository;
	
	public List<Annonce> findAllAnnonce() {
		return boncoinBisRepository.findAll();
	}
	
	public void save(Annonce annonce) {
		boncoinBisRepository.save(annonce);
	}
	
	public void insertPony(Annonce annonce) {
		boncoinBisRepository.save(annonce);
	}

	public void updatePony(Annonce annonce) {
		boncoinBisRepository.save(annonce);
	}

	public void deletePony(Annonce id) {
		boncoinBisRepository.delete(id);
	}
}
