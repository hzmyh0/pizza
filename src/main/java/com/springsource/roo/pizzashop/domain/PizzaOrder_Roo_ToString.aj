// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.springsource.roo.pizzashop.domain;

import java.lang.String;

privileged aspect PizzaOrder_Roo_ToString {
    
    public String PizzaOrder.toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Address: ").append(getAddress()).append(", ");
        sb.append("DeliveryDate: ").append(getDeliveryDate()).append(", ");
        sb.append("Id: ").append(getId()).append(", ");
        sb.append("Name: ").append(getName()).append(", ");
        sb.append("Pizzas: ").append(getPizzas() == null ? "null" : getPizzas().size()).append(", ");
        sb.append("Total: ").append(getTotal()).append(", ");
        sb.append("Version: ").append(getVersion());
        return sb.toString();
    }
    
}
