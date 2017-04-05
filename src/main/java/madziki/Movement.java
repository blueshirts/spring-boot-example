package madziki;

//import com.fasterxml.jackson.annotation.JsonIgnore;

import java.sql.Timestamp;

import javax.persistence.*;
//import java.util.HashSet;
//import java.util.Set;


@Entity
@Table(name = "movements")
public class Movement {

    //@OneToMany(mappedBy = "account")
    //private Set<Bookmark> bookmarks = new HashSet<>();

    @Id
    @Column(name="movement_id")
    //@GeneratedValue
    private String id;

    private String name;
    private String description;
    private String details;
    private String movementType;
    private String username;
    private Timestamp created;
    private Timestamp updated;

    public String getId() {
      return this.id;
    }

    public String getName() {
      return this.name;
    }

    public void setName(String name) {
      this.name = name;
    }

    public String getDescription() {
      return this.description;
    }

    public void setDescription(String description) {
      this.description = description;
    }

    public String getDetails() {
      return this.details;
    }

    public void setDetails(String details) {
      this.details = details;
    }

    public String getMovementType() {
      return this.movementType;
    }

    public void setMovementType(String movementType) {
      this.movementType = movementType;
    }

    public String getUsername() {
      return this.username;
    }

    public void setUsername(String username) {
      this.username = username;
    }

    public Timestamp getCreated() {
      return this.created;
    }

    public void setCreated(Timestamp created) {
      this.created = created;
    }

    public Timestamp getUpdated() {
      return this.updated;
    }

    public void setUpdated(Timestamp updated) {
      this.updated = updated;
    }
}
