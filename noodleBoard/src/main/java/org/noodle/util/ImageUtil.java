package org.noodle.util;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.util.UUID;

import javax.imageio.ImageIO;

import org.apache.commons.io.IOUtils;
import org.imgscalr.Scalr;
import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

@Component
public class ImageUtil {

    public String uploadImage(String path, MultipartFile file) throws Exception {

        UUID uid = UUID.randomUUID();

        String originalName = file.getOriginalFilename();

        String copyName = uid.toString() + "_" + originalName;

        FileOutputStream fos = new FileOutputStream(path + copyName);

        IOUtils.copy(file.getInputStream(), fos);
        fos.close();

        return copyName;

    }

    public String makeThumbnail(String path, MultipartFile file) throws Exception {

        String fileName = file.getOriginalFilename();
        
        BufferedImage originImage = ImageIO.read(new File(path, fileName));

        BufferedImage thumbImage = Scalr.resize(originImage, Scalr.Method.AUTOMATIC, Scalr.Mode.FIT_TO_HEIGHT, 100);

        String thumbName = path + File.separator + "s_" + fileName;

        File thumbFile = new File(thumbName);

        OutputStream out = new FileOutputStream(path + thumbName);
//        InputStream in = new FileInputStream(path + thumbName);

//        FileCopyUtils.copy(in, out);
        
        ImageIO.write(thumbImage, null, thumbFile);

//        in.close();
        out.close();

        return thumbName;
    }

}