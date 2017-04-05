package madziki;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.WebApplicationContext;

@RunWith(SpringRunner.class)
@SpringBootTest(classes = Application.class)
@WebAppConfiguration
public class MovementRestControllerTest {
  private MockMvc mockMvc;

  @Autowired
  private WebApplicationContext webApplicationContext;

  @Autowired
  private MovementRepository movementRepository;

  @Before
  public void setup() throws Exception {
    this.mockMvc = MockMvcBuilders.webAppContextSetup(webApplicationContext).build();
  }

  @Test
  public void find_by_username() throws Exception {
      //mockMvc.perform(get("/" + userName + "/bookmarks"))
              //.andExpect(status().isOk())
              //.andExpect(content().contentType(contentType))
              //.andExpect(jsonPath("$", hasSize(2)))
              //.andExpect(jsonPath("$[0].id", is(this.bookmarkList.get(0).getId().intValue())))
              //.andExpect(jsonPath("$[0].uri", is("http://bookmark.com/1/" + userName)))
              //.andExpect(jsonPath("$[0].description", is("A description")))
              //.andExpect(jsonPath("$[1].id", is(this.bookmarkList.get(1).getId().intValue())))
              //.andExpect(jsonPath("$[1].uri", is("http://bookmark.com/2/" + userName)))
              //.andExpect(jsonPath("$[1].description", is("A description")));
  }
}
