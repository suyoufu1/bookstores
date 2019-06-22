/*package com.swm.utils;

import java.text.ParseException;
import java.text.SimpleDateFormat;

import org.apache.commons.beanutils.Converter;

public class MyDateConverter implements Converter{

	@Override
	public Object convert(Class type, Object value) {
		// TODO Auto-generated method stub
		String str = (String) value;
		//把字符串转成Date类型
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		try {
			return sdf.parse(str);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		//System.out.println("value:" + value);
		return null;
	}

}*/
