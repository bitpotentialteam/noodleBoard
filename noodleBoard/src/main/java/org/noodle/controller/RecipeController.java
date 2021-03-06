package org.noodle.controller;

import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.noodle.domain.BoardList;
import org.noodle.domain.MemberVO;
import org.noodle.domain.PageMaker;
import org.noodle.domain.RecipeBoardVO;
import org.noodle.domain.RecipeCuisineVO;
import org.noodle.domain.RecipeImageVO;
import org.noodle.domain.RecipeReplyVO;
import org.noodle.domain.SearchVO;
import org.noodle.service.MemberService;
import org.noodle.service.RecipeBoardService;
import org.noodle.service.RecipeCuisineService;
import org.noodle.service.RecipeImageService;
import org.noodle.service.RecipeReplyService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping("/recipe/*") 
public class RecipeController {
	
	private static final Logger logger = LoggerFactory.getLogger(RecipeController.class);
	
	@Inject
	private RecipeBoardService service;
	
	@Inject
	private RecipeImageService iservice;
	
	@Inject
	private RecipeCuisineService cservice;
	
	@Autowired
	private MemberService mservice;
	
	@Autowired
	private RecipeReplyService rservice;
	
	
	@GetMapping("/register")
	public void registerGET(RecipeBoardVO vo, Model model)throws Exception{
		logger.info("register GET.................");
	}
	
	@PostMapping("/register")
	public String registerPOST(HttpSession session, RecipeBoardVO vo, BoardList boardList, RedirectAttributes rttr, Integer topImageIndex) throws Exception {
		logger.info("RegisterPOST FUCK");
		logger.info("BoardList" + boardList);
		
		
		// 존나 민망하지만 급해서 어쩔 수 없습니다 핳핳하
		for(int i = 0; i < boardList.getIlist().size(); i++){
			String imageName = boardList.getIlist().get(i).getThumbnail().replaceAll("s_", "o_");
			boardList.getIlist().get(i).setImage(imageName);
			logger.info("i" +i);
		}
		
		Object user = SecurityContextHolder.getContext().getAuthentication().getName();
		logger.info(user.toString());
		MemberVO mvo = mservice.read1(user.toString());

		session.setAttribute("VO", mvo);
		
		logger.info("mvo : " + mvo);
		logger.info("ilist : "+boardList.getIlist());
		logger.info("clist : "+boardList.getClist());
		
		logger.info("topImageIndex: "+topImageIndex);
		logger.info("boardList.getIlist().get(topImageIndex).getThumbnail(): "+boardList.getIlist().get(topImageIndex).getThumbnail());
		
		logger.info("vo : " + vo);
		vo.setMno(mvo.getMno()); 
		service.register(vo, boardList.getIlist(), boardList.getClist());
		
		logger.info("viewThumbnail: "+iservice.viewThumbnail(boardList.getIlist().get(topImageIndex).getThumbnail()));
		logger.info("topImageName: "+boardList.getIlist().get(topImageIndex).getThumbnail());
		
		vo.setIno(iservice.viewThumbnail(boardList.getIlist().get(topImageIndex).getThumbnail()));
		vo.setBno(service.viewTitle(vo.getTitle()).getBno());
		logger.info("Before ino modify vo: " + vo);
		
		service.modifyIno(vo);
		
		
		return "redirect:/recipe/list";
	}
	
	
	@GetMapping("/list")
	public void list(@ModelAttribute("cri")SearchVO cri,Model model) throws Exception {
		
		logger.info("listAll.............");
		model.addAttribute("list", service.search(cri));
		model.addAttribute("ilist", iservice.listAll());
		
		Object user = SecurityContextHolder.getContext().getAuthentication().getName();
		logger.info(user.toString());
		MemberVO mvo = mservice.read1(user.toString());
		
		model.addAttribute("VO", mvo);
		
		List<RecipeBoardVO> blist = new ArrayList<RecipeBoardVO>();
		blist = service.search(cri);
		
		List<MemberVO> mlist = new ArrayList<MemberVO>();
		
		for(int i = 0; i<blist.size(); i++){
			MemberVO vo = mservice.read(blist.get(i).getMno());
			
			mlist.add(vo);
		}
		model.addAttribute("MemberList", mlist);
		
		logger.info("SearchType: "+cri.getSearchType());
		logger.info("keyWord: "+cri.getKeyword());
		logger.info("orderType: "+cri.getOrderType());
		if(cri.getSearchType() == "w".toString()){
			String mno = mservice.viewNick(cri.getKeyword()).getMno().toString();

			logger.info("=============================================");
			logger.info("mno(String): " + mno);
			logger.info("=============================================");
			cri.setKeyword(mno);
			logger.info(cri.getKeyword());
		}

		
		logger.info("listAll callll.........."+ service.search(cri).toString());
		PageMaker pageMaker = new PageMaker();
		
		pageMaker.setPageVO(cri);
		pageMaker.setTotalCount(service.getTotalCount(cri));
		logger.info("endPage.........." + cri.getEndPage());
		
		model.addAttribute("pageMaker", pageMaker);

	}
	
	
	@GetMapping("/view")
	public void view(@RequestParam("bno") Integer bno, @ModelAttribute("cri") SearchVO cri, HttpSession session, Model model) throws Exception {
		
		logger.info("view.............");
		model.addAttribute("vo", service.view(bno));
		model.addAttribute("clist", cservice.view(bno));
		model.addAttribute("ilist", iservice.viewBno(bno));
		model.addAttribute("replyList", rservice.listAll(bno));

		logger.info("VO : " + service.view(bno));
		logger.info("replyList : " + rservice.listAll(bno));
	
		Object user = SecurityContextHolder.getContext().getAuthentication().getName();
		logger.info(user.toString());
		MemberVO vo = mservice.read1(user.toString());
		
		RecipeBoardVO rvo = new RecipeBoardVO(); 
		rvo.setBno(bno);
		rvo.setMno(vo.getMno());
		logger.info("rvo : " + rvo);
		logger.info("viewHistory : "+service.historyView(rvo));
		if(service.historyView(rvo) == 0){
		service.registView(rvo);
		}
		model.addAttribute("likeCheck", service.likeHistory(rvo));
		
		logger.info("likeHistory : " + service.likeHistory(rvo));
		
		MemberVO nickVO = mservice.read(service.view(bno).getMno());
		
		List<MemberVO> mlist = new ArrayList<MemberVO>();
		List<RecipeReplyVO> rlist = new ArrayList<RecipeReplyVO>();
		rlist = rservice.listAll(bno);
		for(int i = 0; i < rlist.size(); i++){
			
			MemberVO mvo = mservice.read(rlist.get(i).getMno());
			mlist.add(mvo);
		}
		
		model.addAttribute("MemberList", mlist);
		model.addAttribute("nickVO", nickVO);
		
		session.setAttribute("VO", vo);
		PageMaker pageMaker = new PageMaker();		
		pageMaker.setPageVO(cri);
		model.addAttribute("pageMaker", pageMaker);
	}
	
	
	@PostMapping("/remove")
	public String remove(@RequestParam("bno") int bno, SearchVO cri, RedirectAttributes rttr) throws Exception {
		logger.info("DELETE.......");
		logger.info("BNO : " + bno);
		service.remove(bno);
		rttr.addFlashAttribute("msg", "success");

		return "redirect:list";
	}
	
	@GetMapping("/modify")
	public void modifyGET(@RequestParam("bno") Integer bno, @ModelAttribute("cri") SearchVO cri, Model model) throws Exception {
		logger.info("modify called..................");
		logger.info("VO : " + service.view(bno));
		model.addAttribute("vo", service.view(bno));
		model.addAttribute("clist", cservice.view(bno));
		model.addAttribute("ilist", iservice.viewBno(bno));
		logger.info("ilist : " + iservice.viewBno(bno));
		logger.info("clist : " + cservice.view(bno));
		
	}
	
	@PostMapping("/modify")
	public String modifyPOST(@RequestParam("bno") Integer bno,RecipeImageVO ivo, RecipeBoardVO bvo, BoardList boardList, RecipeCuisineVO cvo, Integer topImageIndex) throws Exception{
		logger.info("ModifyPOST called.....");
		logger.info("bvo: "+bvo.toString());
		logger.info("ivo: "+boardList.getIlist());
		logger.info("cvo: "+boardList.getClist());
		
		service.modify(bvo, boardList.getIlist(), boardList.getClist());
		
		List<RecipeImageVO> IBoardList = new ArrayList<RecipeImageVO>();
		List<RecipeCuisineVO> CBoardList = new ArrayList<RecipeCuisineVO>();
		
		List<RecipeImageVO> ilist = new ArrayList<RecipeImageVO>();
		ilist.addAll(iservice.viewBno(bno));
		List<RecipeCuisineVO> clist = new ArrayList<RecipeCuisineVO>();
		clist.addAll(cservice.view(bno));
		
		logger.info("ilist : " + ilist);
		logger.info("clist : " + clist);
	
		IBoardList.addAll(boardList.getIlist());
		CBoardList.addAll(boardList.getClist());
		
		
		for(int i = 0; i < IBoardList.size(); i++){
			
			Integer step;
			if(IBoardList.get(i).getIno() == null){
				iservice.register(IBoardList.get(i));
				step = IBoardList.get(i).getStep();
				
				if(step == CBoardList.get(i).getStep()){
					cservice.modifyRegist(CBoardList.get(i));
				}
			}else if(IBoardList.get(i).getIno() == ilist.get(i).getIno()){
					iservice.deletes(IBoardList.get(i).getIno(), CBoardList.get(i));
			}
		}
//		logger.info("IBoardList : " + IBoardList);
//		logger.info("CBoardList : " + CBoardList);
//		IBoardList.remove(ilist);
//		CBoardList.remove(clist);
//		logger.info("IBoardList : " + IBoardList);
//		logger.info("CBoardList : " + CBoardList);
//		if(boardList.getIlist().size() > ilist.size()){
//			iservice.register(IBoardList, CBoardList);
//		}
		
//			if(boardList.getClist().get(i).getContent() != cist.get(i).geltcontent){
//				service.modify(bvo, boardList.getIlist(), boardList.getClist());
//			}else if()
			
				
//			logger.info("boardList : " + boardList.getIlist().get(i).getStep());
//			logger.info("clist : " + ilist.get(i).getStep());
//			logger.info("ilist : " + clist.get(i).getStep());
			
//		for(int i = 0; i < boardList.getIlist().size(); i++){
//			String imageName = boardList.getIlist().get(i).getThumbnail();
//			boardList.getIlist().get(i).setImage(imageName);
//			logger.info("i : " +i);
//		}
//		logger.info("topImageIndex : " + topImageIndex);
//		logger.info("topIndex : " + iservice.viewThumbnail(boardList.getIlist().get(topImageIndex).getThumbnail()));
//		bvo.setIno(iservice.viewThumbnail(boardList.getIlist().get(topImageIndex).getThumbnail()));
		
		
		
		//만약 step이 추가가 되면 image와 cuisine에 create 날려줌
//		iservice.register(boardList.getIlist(), boardList.getClist());
		
		//만약 step이 삭제되면 image와 cuisine에 delete 날려줌
//		iservice.remove(ivo.getIno(), cvo);
		
		return "redirect:/recipe/list";
	}

	@GetMapping("/addlikeCnt")
	@ResponseBody
	public Integer addlikeCtn(RecipeBoardVO vo, Model model)throws Exception{
		logger.info("addlike....");
		logger.info("vo : " + vo);
		
		service.addLikeCount(vo);
		
		return service.readLikeCnt(vo.getBno());
	
	}
	
	@PostMapping("/addStep")
	@ResponseBody
	public Integer stepRead(@RequestParam("bno") Integer bno)throws Exception{
		logger.info("STEP : " + cservice.stepRead(bno));
		
		return cservice.stepRead(bno);
	}

	@PostMapping("/stepDelete")
	@ResponseBody
	public void stepDelete(@RequestParam("bno") Integer bno, RecipeCuisineVO cvo, Integer ino) throws Exception{
		logger.info("stepDelete.......");
		logger.info("ino : " + ino);
		logger.info("cvo : " + cvo);
		iservice.deletes(ino, cvo);
	}
	
//	@PostMapping("/modifyCreate")
//	@ResponseBody
//	public void modifyCreate(BoardList boardList)throws Exception{
//		iservice.register(boardList.getIlist(), boardList.getClist());
//	}
	
}
