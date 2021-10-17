/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Bean.CertificationMPAA;

import java.sql.Date;
import org.codehaus.jackson.annotate.JsonIgnoreProperties;

/**
 *
 * @author Marcos
 */
@JsonIgnoreProperties(ignoreUnknown = true)
 public class ReleaseDate{
    public String certification;
    public String iso_639_1;
    public String note;
    public Date release_date;
    public int type;

        public String getCertification() {
            return certification;
        }

        public void setCertification(String certification) {
            this.certification = certification;
        }

        public String getIso_639_1() {
            return iso_639_1;
        }

        public void setIso_639_1(String iso_639_1) {
            this.iso_639_1 = iso_639_1;
        }

        public String getNote() {
            return note;
        }

        public void setNote(String note) {
            this.note = note;
        }

        public Date getRelease_date() {
            return release_date;
        }

        public void setRelease_date(Date release_date) {
            this.release_date = release_date;
        }

        public int getType() {
            return type;
        }

        public void setType(int type) {
            this.type = type;
        }

        public ReleaseDate(String certification, String iso_639_1, String note, Date release_date, int type) {
            this.certification = certification;
            this.iso_639_1 = iso_639_1;
            this.note = note;
            this.release_date = release_date;
            this.type = type;
        }
    
    public ReleaseDate(){
        
    }
    
    
}
