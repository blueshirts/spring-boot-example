package madziki;

import java.util.Collection;

import org.springframework.data.jpa.repository.JpaRepository;

public interface MovementRepository extends JpaRepository<Movement, Long> {
    Collection<Movement> findByUsername(String username);
}
