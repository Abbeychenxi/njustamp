package nju.software.service;

import java.util.ArrayList;
import java.util.List;

import nju.software.domain.Album;
import nju.software.domain.Stamp;

public class AlbumService {

	private List<Album> albums;//�ʲἯ��
	private List<Stamp> stamps;//һ���ʲ�������Ʊ
	private List<Album> newAlbums;//�����ʲ�
	public AlbumService()
	{
		testData();
	}
	private void testData()
	{
		albums=new ArrayList<Album>();
		newAlbums=new ArrayList<Album>();
		Album album=new Album();
		album.setId(4);
		album.setPath("OnLineStamp/images/test4.gif");
		album.setName("album");
		albums.add(album);albums.add(album);albums.add(album);albums.add(album);albums.add(album);
		albums.add(album);albums.add(album);albums.add(album);albums.add(album);albums.add(album);
		
		newAlbums.add(album);newAlbums.add(album);newAlbums.add(album);newAlbums.add(album);newAlbums.add(album);
		newAlbums.add(album);newAlbums.add(album);newAlbums.add(album);newAlbums.add(album);newAlbums.add(album);
	}
	/**
	 * ��ȡ�ʲ����
	 * @return
	 */
	public List<Album> getAlbums()
	{
		
		return albums;
	}
	/**
	 * ��ȡһ���ʲ����������Ʊ
	 * @param id �ʲ��id
	 * @return
	 */
	public List<Stamp> getStamps(int id)
	{
		stamps=new ArrayList<Stamp>();
		return stamps;
	}
	/**
	 * ��ȡ�����ʲ�
	 * @return
	 */
	public List<Album> getNewAlbums()
	{
		return newAlbums;
	}
}
