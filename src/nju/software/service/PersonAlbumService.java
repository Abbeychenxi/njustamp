package nju.software.service;

import java.util.ArrayList;
import java.util.List;

import nju.software.domain.Album;
public class PersonAlbumService {

	private List<Album> albums; //������Ἧ��
	public PersonAlbumService()
	{
		testData();
	}
	private void testData() {
		// TODO Auto-generated method stub
		albums=new ArrayList<Album>();
		Album album=new Album();
		album.setPath("OnLineStamp/images/test1.png");
		album.setName("�������");
		albums.add(album);albums.add(album);albums.add(album);albums.add(album);
		albums.add(album);albums.add(album);albums.add(album);albums.add(album);
	}
	/**
	 * ��ȡ������Ἧ��
	 * @return
	 */
	public List<Album> getPerAlbumList()
	{
		return albums;
	}
}