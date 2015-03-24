package nju.software.service;

import java.util.ArrayList;
import java.util.List;

import nju.software.domain.Stamp;
import nju.software.domain.StampTalent;

public class PersonHomeService {

	private List<Stamp> intersList;
	private List<StampTalent> talents;
	public PersonHomeService()
	{
		testData1();
		testData2();
	}
	private void testData1() {
		// TODO Auto-generated method stub
		intersList=new ArrayList<Stamp>();
		Stamp stamp=new Stamp();
		stamp.setName("������Ʊ");
    	stamp.setPath("OnLineStamp/images/test2.gif");
    	intersList.add(stamp);intersList.add(stamp);intersList.add(stamp);intersList.add(stamp);
    	intersList.add(stamp);intersList.add(stamp);intersList.add(stamp);
	}
	private void testData2() {
		// TODO Auto-generated method stub
		talents=new ArrayList<StampTalent>();
		StampTalent talent=new StampTalent();
		talent.setName("���Դ���");
    	talent.setHead("OnLineStamp/images/test3.gif");
    	talents.add(talent);talents.add(talent);talents.add(talent);talents.add(talent);talents.add(talent);
    	talents.add(talent);talents.add(talent);
	}
	/**
	 * ��ø���Ȥ����Ʊ
	 * @return
	 */
	public List<Stamp> getIntersStamps()
	{
		return this.intersList;
	}
	/**
	 * ��ȡ��Ʊ����
	 * @return
	 */
	public List<StampTalent> getTalents()
	{
		return this.talents;
	}
}
