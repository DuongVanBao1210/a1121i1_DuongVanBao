package codegym.vn.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class ConvertMoney {


    @GetMapping("/convert")
    public String convert(){
        return "convert";
    }

    @PostMapping("/result")
    public String result(@RequestParam(value = "money") int money , Model model){
        model.addAttribute("result",money*2300);
        return "convert";
    }

}
