package com.hwadee.mimile.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.hwadee.mimile.util.DatabaseHelper;
import com.hwadee.mimile.pojo.Goods;

public class GoodsDao {

	public List findAll() {
		// TODO Auto-generated method stub
		String sql = "select * from goods";
		ResultSet rs = DatabaseHelper.executeQuery(sql);
		List<Goods> goodss = new ArrayList();
		try {
			while(rs.next()) {
				int gid = rs.getInt("gid");
				int tid=rs.getInt("tid");
				String gname = rs.getString("gname");
				double gprice=rs.getDouble("gprice");
				int gnum=rs.getInt("gnum");
				String gaddress=rs.getString("gaddress");
				String gstatus=rs.getString("gstatus");
				String gimageurl=rs.getString("gimageurl");
				
				
				Goods goods = new Goods();
				goods.setGid(gid);
				goods.setTid(tid);
				goods.setGname(gname);
				goods.setGprice(gprice);
				goods.setGnum(gnum);
				goods.setGaddress(gaddress);
				goods.setGstatus(gstatus);
				goods.setGimageurl(gimageurl);
				
				
				goodss.add(goods);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return goodss;
	}

	public void save(Goods goods) {
		// TODO Auto-generated method stub
		String sql="insert into goods(tid,gname,gprice,gnum,gaddress,gstatus,gimageurl)values('"+
			goods.getTid()+"','"+
			goods.getGname()+"','"+
			goods.getGprice()+"','"+
			goods.getGnum()+"','"+
			goods.getGaddress()+"','"+
			goods.getGstatus()+"','"+
			goods.getGimageurl()+"')";
		System.out.println(sql);
		DatabaseHelper.executeUpdate(sql);
	}

	public void delete(int gid) {
		// TODO Auto-generated method stub
		String sql="delete from goods where goods.gid="+gid;
		DatabaseHelper.executeUpdate(sql);
	}

	
	public Goods findById(int gid) {
		// TODO Auto-generated method stub
		Goods goods=new Goods();
		String sql="select * from goods where gid="+gid;
		ResultSet rs=DatabaseHelper.executeQuery(sql);
		try {
			if(rs.next()){
				gid=rs.getInt("gid");
				int tid=rs.getInt("tid");
				String gname = rs.getString("gname");
				double gprice=rs.getDouble("gprice");
				int gnum=rs.getInt("gnum");
				String gaddress=rs.getString("gaddress");
				String gstatus=rs.getString("gstatus");
				String gimageurl=rs.getString("gimageurl");
				
				
				goods.setGid(gid);
				goods.setTid(tid);
				goods.setGname(gname);
				goods.setGprice(gprice);
				goods.setGnum(gnum);
				goods.setGaddress(gaddress);
				goods.setGstatus(gstatus);
				goods.setGimageurl(gimageurl);
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return goods;
	}

	public List<Goods> findByType(int tid) {
		// TODO Auto-generated method stub
		String sql = "select * from goods where goods.tid='"+tid+"'";
		ResultSet rs = DatabaseHelper.executeQuery(sql);
		List<Goods> goodss = new ArrayList();
		try {
			while(rs.next()) {
				int gid = rs.getInt("gid");
				
				String gname = rs.getString("gname");
				double gprice=rs.getDouble("gprice");
				int gnum=rs.getInt("gnum");
				String gaddress=rs.getString("gaddress");
				String gstatus=rs.getString("gstatus");
				String gimageurl=rs.getString("gimageurl");
				
				
				Goods goods = new Goods();
				goods.setGid(gid);
				goods.setTid(tid);
				goods.setGname(gname);
				goods.setGprice(gprice);
				goods.setGnum(gnum);
				goods.setGaddress(gaddress);
				goods.setGstatus(gstatus);
				goods.setGimageurl(gimageurl);
				
				
				goodss.add(goods);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return goodss;
	}

	public List<Goods> sortByDescGprice() {
		// TODO Auto-generated method stub
		String sql = "select * from goods order by gprice desc";
		ResultSet rs = DatabaseHelper.executeQuery(sql);
		List<Goods> goodss = new ArrayList();
		try {
			while(rs.next()) {
				int gid = rs.getInt("gid");
				int tid=rs.getInt("tid");
				String gname = rs.getString("gname");
				double gprice=rs.getDouble("gprice");
				int gnum=rs.getInt("gnum");
				String gaddress=rs.getString("gaddress");
				String gstatus=rs.getString("gstatus");
				String gimageurl=rs.getString("gimageurl");
				
				
				Goods goods = new Goods();
				goods.setGid(gid);
				goods.setTid(tid);
				goods.setGname(gname);
				goods.setGprice(gprice);
				goods.setGnum(gnum);
				goods.setGaddress(gaddress);
				goods.setGstatus(gstatus);
				goods.setGimageurl(gimageurl);
				
				
				goodss.add(goods);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return goodss;
		
	}

	public List<Goods> sortByAscGprice() {
		// TODO Auto-generated method stub
		// TODO Auto-generated method stub
		String sql = "select * from goods order by gprice asc";
		ResultSet rs = DatabaseHelper.executeQuery(sql);
		List<Goods> goodss = new ArrayList();
		try {
			while(rs.next()) {
				int gid = rs.getInt("gid");
				int tid=rs.getInt("tid");
				String gname = rs.getString("gname");
				double gprice=rs.getDouble("gprice");
				int gnum=rs.getInt("gnum");
				String gaddress=rs.getString("gaddress");
				String gstatus=rs.getString("gstatus");
				String gimageurl=rs.getString("gimageurl");
				
				
				Goods goods = new Goods();
				goods.setGid(gid);
				goods.setTid(tid);
				goods.setGname(gname);
				goods.setGprice(gprice);
				goods.setGnum(gnum);
				goods.setGaddress(gaddress);
				goods.setGstatus(gstatus);
				goods.setGimageurl(gimageurl);
				
				
				goodss.add(goods);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return goodss;
	}

	public List<Goods> sortByDescGpriceBytype(int tid) {
		String sql = "select * from goods where goods.tid ='"+tid+"' order by gprice desc";
		ResultSet rs = DatabaseHelper.executeQuery(sql);
		List<Goods> goodss = new ArrayList();
		try {
			while(rs.next()) {
				int gid = rs.getInt("gid");
				String gname = rs.getString("gname");
				double gprice=rs.getDouble("gprice");
				int gnum=rs.getInt("gnum");
				String gaddress=rs.getString("gaddress");
				String gstatus=rs.getString("gstatus");
				String gimageurl=rs.getString("gimageurl");
				
				
				Goods goods = new Goods();
				goods.setGid(gid);
				goods.setTid(tid);
				goods.setGname(gname);
				goods.setGprice(gprice);
				goods.setGnum(gnum);
				goods.setGaddress(gaddress);
				goods.setGstatus(gstatus);
				goods.setGimageurl(gimageurl);
				
				
				goodss.add(goods);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return goodss;
	}
	
	public List<Goods> sortByAscGpriceBytype(int tid) {
		// TODO Auto-generated method stub
		String sql = "select * from goods where goods.tid ='"+tid+"' order by gprice asc";
		ResultSet rs = DatabaseHelper.executeQuery(sql);
		List<Goods> goodss = new ArrayList();
		try {
			while(rs.next()) {
				int gid = rs.getInt("gid");
				String gname = rs.getString("gname");
				double gprice=rs.getDouble("gprice");
				int gnum=rs.getInt("gnum");
				String gaddress=rs.getString("gaddress");
				String gstatus=rs.getString("gstatus");
				String gimageurl=rs.getString("gimageurl");
				
				
				Goods goods = new Goods();
				goods.setGid(gid);
				goods.setTid(tid);
				goods.setGname(gname);
				goods.setGprice(gprice);
				goods.setGnum(gnum);
				goods.setGaddress(gaddress);
				goods.setGstatus(gstatus);
				goods.setGimageurl(gimageurl);
				
				
				goodss.add(goods);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return goodss;
	}
	/////////////////////
	//关键字搜索
	public List<Goods> searchByKeyWords(String keyWords) {
		// TODO Auto-generated method stub
		char[] keyWordsCh=keyWords.toCharArray();
		String sql = "select * from goods where goods.gname like '";
		for (char c : keyWordsCh) {
			String a=String.valueOf(c);
			sql=sql+"%"+a+"%";
			
		}
		sql+="' order by gprice asc";
		ResultSet rs = DatabaseHelper.executeQuery(sql);
		List<Goods> goodss = new ArrayList();
		try {
			while(rs.next()) {
				int gid = rs.getInt("gid");
				String gname = rs.getString("gname");
				double gprice=rs.getDouble("gprice");
				int gnum=rs.getInt("gnum");
				String gaddress=rs.getString("gaddress");
				String gstatus=rs.getString("gstatus");
				String gimageurl=rs.getString("gimageurl");
				int tid=rs.getInt("tid");
				
				Goods goods = new Goods();
				goods.setGid(gid);
				goods.setTid(tid);
				goods.setGname(gname);
				goods.setGprice(gprice);
				goods.setGnum(gnum);
				goods.setGaddress(gaddress);
				goods.setGstatus(gstatus);
				goods.setGimageurl(gimageurl);
				
				
				goodss.add(goods);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return goodss;
	}

	public void update(Goods goods) {
		// TODO Auto-generated method stub
		
		String sql="update goods set goods.Gname='"+ 
		goods.getGname()+"',goods.gprice='"+
		goods.getGprice()+"',goods.gnum='"+
		goods.getGnum()+"',goods.gaddress='"+
		goods.getGaddress()+"',goods.gstatus='"+
		goods.getGstatus()+"',goods.gimageurl='"+
		goods.getGimageurl()+"'where goods.gid='"+goods.getGid()+"'";
		;
	System.out.println(sql);
	DatabaseHelper.executeUpdate(sql);
}

	
		
	

}


