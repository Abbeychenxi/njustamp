package nju.software.service;

import java.util.ArrayList;
import java.util.List;

import nju.software.domain.Album;
public class PersonAlbumService {

	private List<Album> albums; //个人相册集合
	public PersonAlbumService()
	{
		testData();
	}
	private void testData() {
		// TODO Auto-generated method stub
		albums=new ArrayList<Album>();
		Album album=new Album();
		album.setPath("OnLineStamp/images/test1.png");
		album.setName("测试相册");
		albums.add(album);albums.add(album);albums.add(album);albums.add(album);
		albums.add(album);albums.add(album);albums.add(album);albums.add(album);
	}
	/**
	 * 获取个人相册集合
	 * @return
	 */
	public List<Album> getPerAlbumList()
	{
		return albums;
	}
}