package com.example.LoginForm.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ByteArrayResource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.example.LoginForm.dao.DocStorageService;
import com.example.LoginForm.domain.Doc;
import com.example.LoginForm.repository.DocRepository;



@Controller
public class DocController {
	@Autowired
	private DocStorageService docStorageService;

	@Autowired
	private DocRepository docRepository;

	@GetMapping("/images/{apid}")
	public String get(Model model, @PathVariable int apid) {
		String id = Integer.toString(apid);
		List<Doc> docs = docRepository.findByApid(id);
		model.addAttribute("docs", docs);
		model.addAttribute("apid", apid);
		return "thymeleaf/doc";
	}

	@PostMapping("/uploadFiles")
	public String uploadMultipleFiles(@RequestParam("files") MultipartFile[] files, @RequestParam("apid") String apid,
			ModelMap model) {

//		Integer api = Integer.parseInt(apid);
		for (MultipartFile file : files) {
			docStorageService.saveFile(file, apid);
		}
		return "patientHome";
	}

	@GetMapping("/downloadFile/{fileId}")
	public ResponseEntity<ByteArrayResource> downloadFile(@PathVariable Integer fileId) {
		Doc doc = docStorageService.getFile(fileId).get();
		return ResponseEntity.ok().contentType(MediaType.parseMediaType(doc.getDocType()))
				.header(HttpHeaders.CONTENT_DISPOSITION, "attachment:filename=\"" + doc.getDocName() + "\"")
				.body(new ByteArrayResource(doc.getData()));
	}
	
	@RequestMapping("/download/{apid}")
	public String downReports(@PathVariable(value = "apid") int apid, ModelMap map) {
		String id = Integer.toString(apid);
		List<Doc> docs = docRepository.findByApid(id);
		map.put("docs", docs);
		System.out.println(docs);
		return "thymeleaf/upload";
	}


	
}
