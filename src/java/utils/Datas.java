/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package utils;

import org.joda.time.*;
import org.joda.time.Seconds;
import org.joda.time.format.PeriodFormatter;
import org.joda.time.format.PeriodFormatterBuilder;

/**
 *
 * @author Marcos
 */
public class Datas {
    
    static public String getTempoPassado(DateTime date, DateTime agora){
        String tempo = new String();
        
        Period period = new Period(date, agora);
            PeriodFormatter formatter = new PeriodFormatterBuilder().toFormatter();
        if(period.getYears()>0){
            if(period.getYears()==1){
                formatter = new PeriodFormatterBuilder()
                    .appendYears().appendSuffix(" Ano atrás").toFormatter();
            }else{
                formatter = new PeriodFormatterBuilder()
                    .appendYears().appendSuffix(" Anos atrás").toFormatter();
            }
        }else{
            if(period.getMonths()>0){
                if(period.getMonths()==1){
                formatter = new PeriodFormatterBuilder()
                    .appendMonths().appendSuffix(" Mês atrás").toFormatter();
            }else{
                formatter = new PeriodFormatterBuilder()
                    .appendMonths().appendSuffix(" Meses atrás").toFormatter();
            }
            }else{
                if(period.getDays()>0){
                    if(period.getDays()==1){
                formatter = new PeriodFormatterBuilder()
                    .appendDays().appendSuffix(" Dia atrás").toFormatter();
            }else{
                formatter = new PeriodFormatterBuilder()
                    .appendDays().appendSuffix(" Dias atrás").toFormatter();
            }
                }else{
                    if(period.getHours()>0){
                        if(period.getHours()==1){
                            formatter = new PeriodFormatterBuilder()
                                .appendHours().appendSuffix(" Hora atrás").toFormatter();
                        }else{
                            formatter = new PeriodFormatterBuilder()
                                .appendHours().appendSuffix(" Horas atrás").toFormatter();
                        }
                    }else{
                        if(period.getMinutes()>0){
                            if(period.getMinutes()==1){
                            formatter = new PeriodFormatterBuilder()
                                .appendMinutes().appendSuffix(" Minuto atrás").toFormatter();
                        }else{
                            formatter = new PeriodFormatterBuilder()
                                .appendMinutes().appendSuffix(" Minutos atrás").toFormatter();
                        }
                        }else{
                            if(period.getMillis()>0){
                                formatter = new PeriodFormatterBuilder()
                                .appendLiteral(" Agora Mesmo").toFormatter();
                            }else{
                                tempo = "?";
                            }
                        }
                    }
                }
            }
        }

    tempo = formatter.print(period);
            
                        return tempo;
    }
    
}
