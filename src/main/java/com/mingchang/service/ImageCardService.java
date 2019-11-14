package com.mingchang.service;

import java.util.List;

import com.mingchang.model.ImageCard;

public interface ImageCardService {

	public void addImageCard(ImageCard imageCard);

	public List<ImageCard> listImageCard();

	public void removeImageCard(Integer id);
}
