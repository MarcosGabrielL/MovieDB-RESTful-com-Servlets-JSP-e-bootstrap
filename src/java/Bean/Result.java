/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Bean;

import java.util.List;
import org.codehaus.jackson.annotate.JsonIgnoreProperties;

/**
 *
 * @author Marcos
 */
@JsonIgnoreProperties(ignoreUnknown = true)
public class Result{
    public String iso_3166_1;
    public List<ReleaseDate> release_dates;

        public String getIso_3166_1() {
            return iso_3166_1;
        }

        public void setIso_3166_1(String iso_3166_1) {
            this.iso_3166_1 = iso_3166_1;
        }

        public List<ReleaseDate> getRelease_dates() {
            return release_dates;
        }

        public void setRelease_dates(List<ReleaseDate> release_dates) {
            this.release_dates = release_dates;
        }

        public Result(String iso_3166_1, List<ReleaseDate> release_dates) {
            this.iso_3166_1 = iso_3166_1;
            this.release_dates = release_dates;
        }
    
        public Result(){
            
        }
    
}
