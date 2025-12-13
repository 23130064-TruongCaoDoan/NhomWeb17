package controler;

import Service.BookService;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import model.Book;

import java.io.File;
import java.io.IOException;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

@WebServlet(name = "ProductManageServlet", value = "/product-manage")
public class ProductManageServlet extends HttpServlet {
    BookService bookService = new BookService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Book> lsBook = bookService.getAllBook();
        request.setAttribute("lsbook",lsBook);
        request.getRequestDispatcher("ManageProduct.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        request.setCharacterEncoding("UTF-8");
//        String uploadPath = request.getServletContext().getRealPath("/uploads");
//        File uploadDir = new File(uploadPath);
//        if (!uploadDir.exists()) uploadDir.mkdirs();
//        String code = request.getParameter("code");
//        String title = request.getParameter("title");
//        String author = request.getParameter("author");
//        int stock = Integer.parseInt(request.getParameter("stock"));
//        Part partMain = request.getPart("img-main");
//        String imgMain = Paths.get(partMain.getSubmittedFileName()).getFileName().toString();
//        if (imgMain != null && !imgMain.isEmpty()) {
//            partMain.write(uploadPath + File.separator + imgMain);
//        }
//        List<String> detailImages = new ArrayList<>();
//
//        for (Part part : request.getParts()) {
//            if (part.getName().equals("imgDetail") && part.getSize() > 0) {
//                String fileName = Paths.get(part.getSubmittedFileName())
//                        .getFileName().toString();
//
//                part.write(uploadPath + File.separator + fileName);
//                detailImages.add(fileName);
//            }
//        }
//        Book book = new Book();
//        book.setBook_code(code);
//        book.setTitle(title);
//        book.setAuthor(author);
//        book.setStock(stock);
//        book.setCoverImgUrl(imgMain);
//        book.set(detailImages); // hoặc convert sang chuỗi nếu DB bạn lưu kiểu string
//
//        // Gọi service thêm sách
//        bookService.addBook(book);
//
//        // Quay lại trang quản lý
//        response.sendRedirect("product-manage");

    }
}