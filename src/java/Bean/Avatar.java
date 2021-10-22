/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Bean;

import java.io.InputStream;

/**
 *
 * @author Marcos
 */
public class Avatar {
    
    private String Person_ID;
    private InputStream image;

    public String getPerson_ID() {
        return Person_ID;
    }

    public void setPerson_ID(String Person_ID) {
        this.Person_ID = Person_ID;
    }

    public InputStream getImage() {
        return image;
    }

    public void setImage(InputStream image) {
        this.image = image;
    }
    
    
    
}
