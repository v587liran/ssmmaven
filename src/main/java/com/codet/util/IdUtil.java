package com.codet.util;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.UUID;

import sun.misc.BASE64Encoder;


/**
 *1.用于生成随机的ID
 *2.加密ID和密码 
 * @author ran
 *
 */
public class IdUtil {
	//获取ID
	public static String getUUID(){
		return UUID.randomUUID().toString();
	}
	
	//MD5加密
	public static String md5(String password){
		String key="codet_pension";
		password+=key;
		MessageDigest md=null;
		
		try {
			md=MessageDigest.getInstance("md5");
		} catch (NoSuchAlgorithmException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		BASE64Encoder en = new BASE64Encoder();
		return en.encode(md.digest(password.getBytes()));
	}
}
