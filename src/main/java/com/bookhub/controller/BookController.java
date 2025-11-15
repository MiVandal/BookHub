package com.bookhub.controller;


//Author : Mayank Garg

import com.bookhub.dao.BookDAO;
import com.bookhub.entity.Book;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/books")
public class BookController {

    @Autowired
    private BookDAO bookDAO;

    // optional: redirect /BookHub/books/  -->  /BookHub/books/list
    @GetMapping("/")
    public String redirectToList() {
        return "redirect:/books/list";
    }

    @GetMapping("/add")
    public String showAddForm(Model model) {
        model.addAttribute("book", new Book());
        return "addBook";
    }

    @PostMapping("/add")
    public String addBook(@ModelAttribute("book") Book book) {
        bookDAO.save(book);
        return "redirect:/books/list";
    }

    @GetMapping("/list")
    public String viewBooks(Model model) {
        List<Book> books = bookDAO.findAll();
        model.addAttribute("books", books);
        return "viewBooks";
    }
}
