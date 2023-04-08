package com.adriana.bookClub.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.adriana.bookClub.models.Book;
import com.adriana.bookClub.repositories.BookRepository;

@Service
public class BookService {
	private final BookRepository bookRepo;
	public BookService(BookRepository bookRepo) {
		this.bookRepo = bookRepo;
	}

	public Book getOne(Long id) {
		Optional<Book> book = bookRepo.findById(id);
		return book.isPresent() ? book.get() : null;
	}

	public List<Book> getAll() {
		return (List<Book>) bookRepo.findAll();
	}

	public Book create(Book book) {
		return bookRepo.save(book);
	}

	public Book update(Book book) {
		return bookRepo.save(book);
	}

	public void delete(Long id) {
		bookRepo.deleteById(id);
	}

}
