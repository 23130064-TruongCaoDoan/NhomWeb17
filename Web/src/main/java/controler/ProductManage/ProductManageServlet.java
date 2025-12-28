package controler.ProductManage;

import Service.AuthorService;
import Service.BookService;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import model.Book;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ProductManageServlet", value = "/product-manage")
@MultipartConfig(fileSizeThreshold = 1024 * 1024, maxFileSize = 10 * 1024 * 1024, maxRequestSize = 50 * 1024 * 1024)
public class ProductManageServlet extends HttpServlet {
    BookService bookService = new BookService();
    AuthorService authorService = new AuthorService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setAttribute("authors", authorService.getAllAuthors());
        String q = request.getParameter("q");
        String type = request.getParameter("type");
        String stock = request.getParameter("sortStock");
        request.setAttribute("types", bookService.getAllBookTypes());
        List<Book> lsBook = bookService.searchAndFilter(q, type, stock);
        request.setAttribute("lsbook", lsBook);
        request.getRequestDispatcher("admin/ManageProduct.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {
            Part mainImage = request.getPart("img-main");

            List<Part> detailImages = request.getParts().stream()
                    .filter(p -> "imgDetail".equals(p.getName()) && p.getSize() > 0)
                    .toList();

            bookService.addBook(
                    request.getParameterMap(),
                    mainImage,
                    detailImages);

            response.sendRedirect(request.getContextPath() + "/product-manage");
        } catch (Exception e) {
            throw new ServletException(e);
        }
    }

}