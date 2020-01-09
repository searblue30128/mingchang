package com.mingchang.service;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.criteria.CriteriaQuery;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mingchang.model.PageUrl;

@Service
public class PageUrlServiceImpl implements PageUrlService {
	@PersistenceContext
	EntityManager em;

	@Override
	@Transactional
	public void update(PageUrl pageUrl) {
		if (null != pageUrl)
			em.merge(pageUrl);
	}

	@Override
	@Transactional
	public List<PageUrl> listPageUrl() {
		CriteriaQuery<PageUrl> c = em.getCriteriaBuilder().createQuery(PageUrl.class);
		c.from(PageUrl.class);
		return em.createQuery(c).getResultList();
	}

}
