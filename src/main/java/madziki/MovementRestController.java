package madziki;

import java.util.Collection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/movements")
public class MovementRestController {
  private final MovementRepository movementRepository;

  @Autowired
	MovementRestController(MovementRepository movementRepository) {
    this.movementRepository = movementRepository;
	}

  @RequestMapping("/user/{username}")
	Collection<Movement> getUserMovements(@PathVariable String username) {
    System.out.println("Searching for movements for user: " + username);
		return this.movementRepository.findByUsername(username);
	}

}


