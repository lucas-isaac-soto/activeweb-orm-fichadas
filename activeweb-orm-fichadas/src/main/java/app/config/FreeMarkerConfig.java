/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package app.config;

import org.javalite.activeweb.freemarker.AbstractFreeMarkerConfig;

/**
 *
 * @author lis
 */
public class FreeMarkerConfig extends AbstractFreeMarkerConfig {

    @Override
    public void init() {
        getConfiguration().setNumberFormat("0.##");
    }
    
}
