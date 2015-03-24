package nju.software.service;

import java.util.ArrayList;
import java.util.List;

import nju.software.domain.Adverise;

/**
 * ��������
 * @author cun
 *
 */
public class AdvertService {

	private List<Adverise> adverises;
	public AdvertService() {
		// TODO Auto-generated constructor stub
	}
	private void testData()
	{
		adverises=new ArrayList<Adverise>();
		Adverise adverise=new Adverise();
		adverise.setPath("OnLineStamp/images/big-1.jpg");
		adverise.setDetail("test info");
	   adverises.add(adverise);adverises.add(adverise);adverises.add(adverise);
	}
	/**
	 * �����Ʊ��漯��
	 * @return
	 */
	public List<Adverise> getAdverises()
	{
		testData();
		return adverises;
	}
}
