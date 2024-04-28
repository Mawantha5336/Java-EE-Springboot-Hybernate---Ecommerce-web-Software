package lk.jiat.web.ecomm.entity;

import jakarta.persistence.*;

import java.io.Serializable;
import java.util.List;

@Entity
@Table(name = "users")
public class User extends BaseEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String name;
    @Column(unique = true)
    private String email;
    private String email_verified_at;
    private String verification_code;
    private String password;
    private String address;
    private String city;
    private String post_code;
    private String phone;
    private boolean active;
    @Enumerated(value = EnumType.STRING)
    @Column(name = "user_type")
    private UserType userType = UserType.USER;
    @Column(name = "image")
    @CollectionTable(name = "user_image", joinColumns = @JoinColumn(name = "user_id"))
    @ElementCollection(fetch = FetchType.EAGER)
    private List<String> images;

//    public User(){
//
//    }

//    public User(Long id, String name, String email, String email_verified_at, String verification_code, String password, String address, String city, String post_code, String phone, boolean active) {
//        this.id = id;
//        this.name = name;
//        this.email = email;
//        this.email_verified_at = email_verified_at;
//        this.verification_code = verification_code;
//        this.password = password;
//        this.address = address;
//        this.city = city;
//        this.post_code = post_code;
//        this.phone = phone;
//        this.active = active;
//    }

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

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getEmail_verified_at() {
        return email_verified_at;
    }

    public void setEmail_verified_at(String email_verified_at) {
        this.email_verified_at = email_verified_at;
    }

    public String getVerification_code() {
        return verification_code;
    }

    public void setVerification_code(String verification_code) {
        this.verification_code = verification_code;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getPost_code() {
        return post_code;
    }

    public void setPost_code(String post_code) {
        this.post_code = post_code;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public boolean isActive() {
        return active;
    }

    public void setActive(boolean active) {
        this.active = active;
    }

    public UserType getUserType() {
        return userType;
    }

    public void setUserType(UserType userType) {
        this.userType = userType;
    }

    public List<String> getImages() {
        return images;
    }

    public void setImages(List<String> images) {
        this.images = images;
    }
}
