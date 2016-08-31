package test;


import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.cl.ecps.common.entity.SysUser;
import com.cl.ecps.system.service.SysUserService;

public class Test2 {
	
	private static SysUserService sysUserService;
	private static ApplicationContext applicationContext;

	@BeforeClass
	public static void setUpBeforeClass() throws Exception {
		applicationContext=new ClassPathXmlApplicationContext("spring-context.xml");
//		applicationContext=new FileSystemXmlApplicationContext("E:/clProject/ecps-parent1110/ecps-core/src/main/resources/spring-context.xml");
		sysUserService=(SysUserService) applicationContext.getBean("sysUserServiceImpl");
	}

	@Test
	public void test() {
		SysUser sysUser = sysUserService.selectByPrimaryKey(23);
		System.out.println(sysUser);
	}
	

}
