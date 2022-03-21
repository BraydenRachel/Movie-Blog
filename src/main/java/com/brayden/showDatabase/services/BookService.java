package com.brayden.showDatabase.services;

import java.util.List;
import java.util.Optional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.brayden.showDatabase.models.Book;
import com.brayden.showDatabase.repositories.BookRepository;

@Service
public class BookService {
	
	@Autowired
	private BookRepository bookRepo;
	
// ******* CRUD *******
	
// ******* Read all *******
	public List<Book> allBooks(){
		return bookRepo.findAll();
	}
	
// ******* Read all available books *******
	public List<Book> availableBooks() {
		return bookRepo.findAllByBorrowerIsNullOrderByTitle();
	}
	
// ******* create *******
	public Book createBook(Book book) {
		return bookRepo.save(book);
	}
	
// ******* find one *******
	public Book findOneBook(Long id) {
		Optional<Book> optionalBook = bookRepo.findById(id);
		if(optionalBook.isPresent()) {
			return optionalBook.get();
		} else {
			return null;
		}
	}
// ******* update/edit *******
	public Book editBook(Book book) {
		return bookRepo.save(book);
	}
// ****** delete ********
	public void deleteBook(Long id) {
		bookRepo.deleteById(id);
	}
	
}
