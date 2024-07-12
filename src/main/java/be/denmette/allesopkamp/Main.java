package be.denmette.allesopkamp;

import com.vaadin.flow.component.page.AppShellConfigurator;
import com.vaadin.flow.theme.Theme;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@Theme(value = "alles-op-kamp")
public class Main implements AppShellConfigurator {

    public static void main(String[] args) {
        SpringApplication.run(Main.class, args);
    }
}