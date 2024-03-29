// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.springsource.roo.pizzashop.domain;

import com.springsource.roo.pizzashop.domain.Pizza;
import java.lang.Integer;
import java.lang.Long;
import java.util.List;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EntityManager;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.PersistenceContext;
import javax.persistence.Version;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Pizza_Roo_Entity {
    
    declare @type: Pizza: @Entity;
    
    @PersistenceContext
    transient EntityManager Pizza.entityManager;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long Pizza.id;
    
    @Version
    @Column(name = "version")
    private Integer Pizza.version;
    
    public Long Pizza.getId() {
        return this.id;
    }
    
    public void Pizza.setId(Long id) {
        this.id = id;
    }
    
    public Integer Pizza.getVersion() {
        return this.version;
    }
    
    public void Pizza.setVersion(Integer version) {
        this.version = version;
    }
    
    @Transactional
    public void Pizza.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Pizza.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Pizza attached = Pizza.findPizza(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Pizza.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Pizza.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Pizza Pizza.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Pizza merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
    public static final EntityManager Pizza.entityManager() {
        EntityManager em = new Pizza().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Pizza.countPizzas() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Pizza o", Long.class).getSingleResult();
    }
    
    public static List<Pizza> Pizza.findAllPizzas() {
        return entityManager().createQuery("SELECT o FROM Pizza o", Pizza.class).getResultList();
    }
    
    public static Pizza Pizza.findPizza(Long id) {
        if (id == null) return null;
        return entityManager().find(Pizza.class, id);
    }
    
    public static List<Pizza> Pizza.findPizzaEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Pizza o", Pizza.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
}
