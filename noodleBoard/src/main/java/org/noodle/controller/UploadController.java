package org.noodle.controller;

import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.util.UUID;

import org.apache.commons.io.IOUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

@Controller
@RequestMapping
public class UploadController {

	@PostMapping("/uploadFile")
	@ResponseBody
	public String uploadFile(MultipartFile file, Model model) throws Exception {

		UUID uid = UUID.randomUUID();

		String fileName = file.getOriginalFilename();
		String uploadName = uid + "_" + fileName;

		FileOutputStream fos = new FileOutputStream("C:\\zzz\\upload\\" + uploadName);

		IOUtils.copy(file.getInputStream(), fos);
		model.addAttribute("uploadName", uploadName);
		fos.close();

		return uploadName;

	}

	@GetMapping(value = "/show", produces = { "image/gif", "image/jpg", "image/jpeg" })

	public @ResponseBody byte[] show(String name) throws Exception {

		InputStream in = new FileInputStream("C:\\zzz\\upload\\" + name);
		// OutputStream out = new ByteArrayOutputStream();

		return IOUtils.toByteArray(in);

	}
}
