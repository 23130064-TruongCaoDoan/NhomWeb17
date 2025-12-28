package Service;

import com.cloudinary.Cloudinary;
import jakarta.servlet.http.Part;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class UploadService {

    private final Cloudinary cloudinary;
    public UploadService() {
        cloudinary = new Cloudinary(System.getenv("CLOUDINARY_URL"));
    }

    public String upload(Part file, String folder) {
        try {
            if (file == null || file.getSize() == 0) return null;
            byte[] bytes = file.getInputStream().readAllBytes();
            Map res = cloudinary.uploader().upload(
                    bytes,
                    Map.of("folder", folder)
            );

            return (String) res.get("secure_url");

        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    public List<String> uploadMultiple(List<Part> files, String folder) {
        List<String> urls = new ArrayList<>();
        for (Part p : files) {
            urls.add(upload(p, folder));
        }
        return urls;
    }
}

