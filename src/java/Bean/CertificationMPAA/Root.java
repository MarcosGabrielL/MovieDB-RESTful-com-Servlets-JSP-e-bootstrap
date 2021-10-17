/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Bean.CertificationMPAA;

import java.util.List;
import org.codehaus.jackson.annotate.JsonIgnoreProperties;

/**
 *
 * @author Marcos
 */
@JsonIgnoreProperties(ignoreUnknown = true)
public class Root{
    public List<Result> results;

        public List<Result> getResults() {
            return results;
        }

        public void setResults(List<Result> results) {
            this.results = results;
        }

        public Root(List<Result> results) {
            this.results = results;
        }
    
        public Root(){
            
        }
    
}
