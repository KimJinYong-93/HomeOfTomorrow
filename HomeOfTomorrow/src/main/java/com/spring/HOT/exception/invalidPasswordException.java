
package com.spring.HOT.exception;

public class invalidPasswordException extends Exception {

	public invalidPasswordException() {
		super("패스워드가 일치하지 않습니다.");
	}
}
