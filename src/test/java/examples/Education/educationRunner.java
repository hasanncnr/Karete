package examples.Education;

import com.intuit.karate.junit5.Karate;

public class educationRunner {
    class UsersRunner {

        @Karate.Test
        Karate testUsers() {
            return Karate.run("Education").relativeTo(getClass());
        }

    }
}