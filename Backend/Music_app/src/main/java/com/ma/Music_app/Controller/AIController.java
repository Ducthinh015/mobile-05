package com.ma.Music_app.Controller;

import com.ma.Music_app.Service.MusicRecommendationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import java.util.Map;

@RestController
@RequestMapping("/api/music")
public class AIController {
    @Autowired
    private MusicRecommendationService recommendationService;

    @PostMapping("/recommend")
    public String recommend(@RequestBody Map<String, String> body) {
        String message = body.get("message");
        return recommendationService.getMusicRecommendation(message);
    }
}
