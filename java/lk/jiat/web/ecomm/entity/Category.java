package lk.jiat.web.ecomm.entity;

import jakarta.persistence.*;

import java.math.BigDecimal;
import java.util.List;

@Entity
public class Category extends BaseEntity{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String name;
    private Boolean active;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Boolean getActive() {
        return active;
    }

    public void setActive(Boolean active) {
        this.active = active;
    }

//    public Category() {
//    }
//
//    public Category(Long id, String name) {
//        this.id = id;
//        this.name = name;
//    }
//
//    public Category(Long id, String name, Boolean active) {
//        this.id = id;
//        this.name = name;
//        this.active = active;
//    }
}
