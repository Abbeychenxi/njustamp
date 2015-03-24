package nju.software.service;

import java.util.ArrayList;
import java.util.List;

import nju.software.domain.Album;

public class CollectService {

	private List<Album> albums;
	public CollectService() {
		// TODO Auto-generated constructor stub
	}
	private void testData()
	{
		albums=new ArrayList<Album>();
		Album album=new Album();
		album.setId(3);
		album.setPath("OnLineStamp/images/test4.gif");
		album.setName("album");
		albums.add(album);albums.add(album);albums.add(album);albums.add(album);albums.add(album);
	}
	/**
	 * ��ȡ�ղص��ʲἯ��
	 * @return
	 */
	public List<Album> getAlbums()
	{
		testData();
		return albums;
	}
}
