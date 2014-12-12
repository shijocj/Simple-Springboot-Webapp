package com.test;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class SampleController {
	@ResponseBody
	@RequestMapping(value="/home", method=RequestMethod.GET)
	@SuppressWarnings("unchecked")
	public ModelAndView home() {
		return new ModelAndView("home");
	}
	@ResponseBody
	@RequestMapping(value="/second", method=RequestMethod.GET)
	@SuppressWarnings("unchecked")
	public ModelAndView second() {
		return new ModelAndView("second");
	}
  /* public String second() {
	return "second";
	}*/
	@ResponseBody
	@RequestMapping(value="/third", method=RequestMethod.GET)
	@SuppressWarnings("unchecked")
	public ModelAndView third() {
		return new ModelAndView("third");
	}
}
