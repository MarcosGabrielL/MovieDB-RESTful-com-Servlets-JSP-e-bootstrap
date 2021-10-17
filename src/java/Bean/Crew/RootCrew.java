/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Bean.Crew;

import java.util.List;
import org.codehaus.jackson.annotate.JsonIgnoreProperties;

/**
 *
 * @author Marcos
 */
@JsonIgnoreProperties(ignoreUnknown = true)
public class RootCrew{
    public List<Cast> cast;
    public List<Crew> crew;

    public List<Cast> getCast() {
        return cast;
    }

    public void setCast(List<Cast> cast) {
        this.cast = cast;
    }

    public List<Crew> getCrew() {
        return crew;
    }

    public void setCrew(List<Crew> crew) {
        this.crew = crew;
    }

    public RootCrew(List<Cast> cast, List<Crew> crew) {
        this.cast = cast;
        this.crew = crew;
    }
    
    public RootCrew(){
        
    }
}
