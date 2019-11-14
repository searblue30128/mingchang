package com.mingchang.service;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.criteria.CriteriaQuery;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mingchang.model.ImageCard;

@Service
public class ImageCardServiceImpl implements ImageCardService {

	@PersistenceContext
	EntityManager em;

	@Transactional
	public void addImageCard(ImageCard imageCard) {
		em.persist(imageCard);
	}

	@Transactional
	public List<ImageCard> listImageCard() {
		CriteriaQuery<ImageCard> c = em.getCriteriaBuilder().createQuery(ImageCard.class);
		c.from(ImageCard.class);
		return em.createQuery(c).getResultList();
	}

	@Transactional
	public void removeImageCard(Integer id) {
		ImageCard imageCard = em.find(ImageCard.class, id);
		if (null != imageCard) {
			em.remove(imageCard);
		}
	}

}
