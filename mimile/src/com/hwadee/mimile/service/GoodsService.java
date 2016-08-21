package com.hwadee.mimile.service;

import java.util.List;

import com.hwadee.mimile.dao.GoodsDao;
import com.hwadee.mimile.pojo.Goods;

public class GoodsService {
	GoodsDao goodsDao = new GoodsDao();
	public List findAll(){
		return goodsDao.findAll();
	}
	//////////唐雨操原创
	//分类查找相应类型所有商品
	public List<Goods> findByType(int tid )
	{
		return goodsDao.findByType(tid);
	}
	//所有商品按价格排序,降序
	public List<Goods> sortDescByGprice()
	{
		
		return goodsDao.sortByDescGprice();
		
	}
	//所有商品按价格排序,升序
	public List<Goods> sortAscByGprice()
	{
		
		return goodsDao.sortByAscGprice();
		
	}
	//分类后所有商品按价格排序,降序
	public List<Goods> sortDescByGpriceByType(int tid)
	{
		
		return goodsDao.sortByDescGpriceBytype(tid);
		
	}
	//分类后所有商品按价格排序,升序序
	public List<Goods> sortAscByGpriceByType(int tid)
	{
		
		return goodsDao.sortByAscGpriceBytype(tid);
		
	}
	
	public void save(Goods goods) {
		// TODO Auto-generated method stub
		goodsDao.save(goods);
	}
	
	public void delete(int gid) {
		// TODO Auto-generated method stub
		goodsDao.delete(gid);
	}
	public Goods findById(int gid) {
		// TODO Auto-generated method stub
		return goodsDao.findById(gid);
	}
	public void update(Goods goods) {

		// TODO Auto-generated method stub
		goodsDao.update(goods);
	}
	public List<Goods> searchByKeyWords(String keyWords)
	{
		return goodsDao.searchByKeyWords(keyWords);
	}
	
	
}
