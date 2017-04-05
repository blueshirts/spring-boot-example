package madziki;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;


@SpringBootApplication
@RestController
public class Application {
  private class HomeObject {
    private String message = "This is a test!";

    public String getMessage() {
      return this.message;
    }

    public void setMessage(String message) {
      this.message = message;
    }
  }

  @RequestMapping("/")
  public Object home() {
    return new HomeObject();
  }

  public static void main(String[] args) {
    SpringApplication.run(Application.class, args);
  }

}
