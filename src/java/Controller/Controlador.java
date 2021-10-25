/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Config.Conexion;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class Controlador {

    Conexion conexion = new Conexion();
    JdbcTemplate jdbcTemplate = new JdbcTemplate(conexion.Conectar());
    ModelAndView mv = new ModelAndView();
    List datos;
    int id;

    @RequestMapping(value = "index.htm", method = RequestMethod.GET)
    public ModelAndView getIndex() {
        mv.setViewName("index");
        return mv;
    }

    @RequestMapping(value = "wandaGate.htm", method = RequestMethod.GET)
    public ModelAndView getWandaGate() {
        String sql = "select id,nombre,apellido,profesión from protagonista";
        datos = this.jdbcTemplate.queryForList(sql);
        mv.addObject("lista", datos);
        mv.setViewName("wandaGate");
        return mv;
    }

    @RequestMapping(value = "escandalo.htm", method = RequestMethod.GET)
    public ModelAndView getEscandalo(HttpServletRequest request) {
        id = Integer.parseInt(request.getParameter("id"));
        String sql = "select nombre,apellido,profesión,estado from protagonista where id = " + id;
        datos = this.jdbcTemplate.queryForList(sql);
        mv.addObject("lista", datos);
        mv.setViewName("escandalo");
        return mv;
    }

}
