package org.noodle.controller;

import java.util.ArrayList;
import java.util.List;

import org.noodle.domain.NoodleVO;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping()
public class NoodleController {
	
	private static final Logger logger = LoggerFactory.getLogger(TestController.class);
	
//	@Inject
//	private NoodleServiceImpl noodle;
	
//	@GetMapping("")
//	public List<NoodleVO> NoodlesAll() throws Exception{
//		
//		List<NoodleVO> list = new ArrayList<NoodleVO>();
//		Criteria cri = new Criteria();
//		list = noodle.search(cri);
//		return list;
//	}
//	
//	@GetMapping("/{name}")
//	public List<NoodleVO> getNoodleInfo(@PathVariable("name") String name)throws Exception{
//		
//		List<NoodleVO> list = new ArrayList<NoodleVO>();
//		//list = noodle.	
//	
//		return list;
//	}
	
//	@GetMapping("/brands/{brand}")
//	public List<NoodleVO> getBrandInfo(@PathVariable("brand") String brand)throws Exception{
//		logger.info("brands GET.....");
//		
//		List<NoodleVO> list = new ArrayList<NoodleVO>();
//		logger.info(list.toString());
//		
//		return list;
//	}              
	
	@PostMapping("/brands/{brand}")
	public void brandsPOST(@PathVariable("brand") String brand) throws Exception{
		logger.info("brands POST.....");
		
			logger.info(brand);
		
	}
	
	
	
	
	
//	@GetMapping("/{name}")
//	public @ResponseBody List<NoodleVO> list(@ModelAttribute(name) String name , Model model )throws Exception{
//		
//		
//		return list ;
//	}
	
	
	
	
}
