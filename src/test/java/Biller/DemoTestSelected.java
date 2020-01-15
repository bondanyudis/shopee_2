package Biller;

import com.intuit.karate.KarateOptions;
import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import com.intuit.karate.core.Result;
import com.intuit.karate.cucumber.CucumberRunner;
import com.intuit.karate.cucumber.KarateStats;
import cucumber.api.CucumberOptions;
import io.netty.karate.handler.codec.http.HttpContentEncoder;
import org.junit.Test;

import java.util.Arrays;
import java.util.List;

import static org.junit.Assert.assertTrue;

/**
 * an alternative way to run selected paths, tags and even features using the
 * java api here you don't need to use the CucumberOptions and you can
 * dynamically determine the features that need to be executed
 *
 * @author pthomas3
 */
@KarateOptions(tags = {"@coba"})
public class DemoTestSelected {

//    @Test
    public void testSelected() {
//        List<String> tags = Arrays.asList("");
//        List<String> features = Arrays.asList("");
//        String karateOutputPath = "target/surefire-reports";
//        KarateStats stats = CucumberRunner.parallel(getClass(), 5, karateOutputPath);
//        DemoTestParallel.generateReport(karateOutputPath);
//        assertTrue("there are scenario failures", stats.getFailCount() == 0);
        String karateOutputPath = "target/surefire-reports";
        Results results = Runner.parallel(getClass(), 5);
        DemoTestParallel.generateReport(karateOutputPath);
        assertTrue(results.getErrorMessages(), results.getFailCount() == 0);
    }

}