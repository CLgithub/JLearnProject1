package test;


import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.cl.ecps.common.entity.EbBrand;
import com.cl.ecps.common.entity.SysUser;
import com.cl.ecps.common.uitl.PageBean;
import com.cl.ecps.shop.service.EbBrandService;
import com.cl.ecps.system.service.SysUserService;

public class Test3 {
	
	private static EbBrandService ebBrandService;
	private static ApplicationContext applicationContext;

	@BeforeClass
	public static void setUpBeforeClass() throws Exception {
		applicationContext=new ClassPathXmlApplicationContext("spring-context.xml");
//		applicationContext=new FileSystemXmlApplicationContext("E:/clProject/ecps-parent1110/ecps-core/src/main/resources/spring-context.xml");
		ebBrandService=(EbBrandService) applicationContext.getBean("ebBrandService");
	}

	@Test
	public void test() {
		EbBrand ebBrand = ebBrandService.selectByPrimaryKey(1);
		System.out.println(ebBrand);
	}
	
	@Test
	public void test2(){
		PageBean pageBean = ebBrandService.getEbBrandPBbySearch(1, 1, new EbBrand());
		System.out.println(pageBean);
	}
	
	

}
