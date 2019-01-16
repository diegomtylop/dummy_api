package hello;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class GreetingController {
	private static final String template = "HEllo, %s!";
	private long counter;
	
	@RequestMapping("/greeting")
	public Greeting greeting( @RequestParam(value="name", defaultValue = "Diego") String name ) {
		return new Greeting( counter++, name);
	}
}
